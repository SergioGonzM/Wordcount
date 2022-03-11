defmodule MetroCdmxChallenge do
  import SweetXml
  @doc """
  Obtains ....
  
   ## Examples
     iex> MetroCdmxChallenge.metro_lines("./data/tiny_metro.kml")
    [
       %{name: "Línea 5", stations:
         [
           %{name: "Pantitlan", coords: "90.0123113 30.012121"},
          %{name: "Hangares", coords: "90.0123463 30.012158"},
         ]
      },
       %{name: "Línea 3", stations:
         [
           %{name: "Universidad", coords: "90.0123113 30.012121"},
          %{name: "Copilco", coords: "90.0123463 30.012158"},
         ]
      }
    ]
  """
  defmodule Line do
     defstruct [:name, :stations]
  end
  
  defmodule Station do
     defstruct [:name, :coords]
  end

  def metro_lines(xml_path) do
      doc = File.read!(xml_path)
      nombre_lineas = doc |> xpath(~x"//Document/Folder[1]/Placemark/name/text()"l) |> Enum.map(fn l ->List.to_string(l) |> String.split(" ") |> Enum.at(1) end)
      estaciones_individuales = doc |> xpath(~x"//Document/Folder[2]/Placemark"l,
      name: ~x"./name/text()",
      line: ~x"./description/text()", 
      coords: ~x"./Point/coordinates/text()"
    )
     |> Enum.map(fn x -> %{name: to_string(x.name), line: to_string(x.line) |> String.split(".") |> Enum.at(0) |> String.split(" ") |> Enum.at(1), coords: to_string(x.coords) |> String.replace("\n", "")} end)

       estaciones = Enum.map(nombre_lineas, fn y -> Enum.filter(estaciones_individuales, fn z -> z.line == y end) |> Enum.map(fn st -> 
         %Station{
          name: st.name,
          coords: st.coords
        }end)
      end)

      Enum.map(0..11, fn o -> 
        %Line{
          name: "Linea #{Enum.at(nombre_lineas, o)}",
          stations: Enum.at(estaciones,o)
        }
      end)   
  end

  def metro_graph(xml_path) do
    lines = metro_lines(xml_path)
    # Create graph ...
    grafo = Graph.new(type: :undirected)
    Enum.reduce(lines, grafo, fn l, grafo -> add_edges(l, grafo)end)
  end

  def add_edges(l, grafo) do
    pairs = Enum.chunk_every(l.stations, 2, 1, :discard)
    Enum.reduce(pairs, grafo, fn est, grafo -> Graph.add_edge(grafo, List.first(est).name, List.last(est).name)end)
  end

  

end
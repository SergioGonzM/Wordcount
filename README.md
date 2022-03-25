# BecariosBunsan2022B1

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `becarios_bunsan_2022_b1` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:becarios_bunsan_2022_b1, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/becarios_bunsan_2022_b1>.

# UnitTest/Evidencias DateTime

Default pac_date para todos los casos

![image](https://user-images.githubusercontent.com/99292588/160052682-e65854db-045d-425a-a29a-c1adc126b696.png)

Haciendo los test unitarios:

![image](https://user-images.githubusercontent.com/99292588/160201882-c203992b-ee18-40cc-9521-0d780aeda99c.png)

Statement Coverage:

![image](https://user-images.githubusercontent.com/99292588/160189430-531075ed-3871-4ed4-84a7-591bcb5d4821.png)


# WordCount

Input:

* Recibe el nombre del modulo, nombre de la funcion y la ubicacion del archivo ".txt"

![image](https://user-images.githubusercontent.com/99292588/156976853-212a5deb-afef-4362-a5f1-4da9f8ee51ea.png)

Output

* Imprime el contador de palabras, con la palabra y el numero de veces que aparece en el texto

![image](https://user-images.githubusercontent.com/99292588/156976908-371270a9-f31f-498a-a54f-02f2d78d3e80.png)

# Metro CDMX Challenge

Input:

* Recibe el nombre del modulo, nombre de la funcion y ubicacion del archivo .kml

![image](https://user-images.githubusercontent.com/99292588/157596972-c8fb1edb-ff5b-47f1-8499-b0fbe7ca45a8.png)

Output:

* Imprime las lineas del metro con sus respectivas estaciones y coordenadas:
```elixir
[
  %MetroCdmxChallenge.Line{
    name: "Linea 1",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.102264,19.4232414,0          ",
        name: "Balbuena"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0960038,19.4197101,0          ",
        name: "Boulevard Puerto Aéreo"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1762608,19.420813,0          ",
        name: "Chapultepec"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.154653,19.425867,0          ",
        name: "Cuauhtémoc"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0903497,19.4164114,0          ",
        name: "Gómez Farías"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1627908,19.4236259,0          ",
        name: "Insurgentes"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1374546,19.4265399,0          ",
        name: "Isabel la Católica"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1821724,19.4129053,0          ",
        name: "Juanacatlán"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1246551,19.4254927,0          ",
        name: "Merced"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1102624,19.4272178,0          ",
        name: "Moctezuma"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1706067,19.421926,0          ",
        name: "Sevilla"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0823781,19.412288,0          ",
        name: "Zaragoza"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 2",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1369029,19.4356521,0          ",
        name: "Allende"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1718835,19.4489852,0          ",
        name: "Colegio Militar"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.182151,19.457488,0          ",
        name: "Cuitláhuac"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1429317,19.3619032,0          ",
        name: "Ermita"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1449916,19.353284,0          ",
        name: "General Anaya"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.203158,19.4587829,0          ",
        name: "Panteones"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.140260219574,19.3795146127671,0          ",
        name: "Nativitas"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1673774,19.4447058,0          ",
        name: "Normal"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1747749,19.4521567,0          ",
        name: "Popotla"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1415638,19.369945,0          ",
        name: "Portales"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1555005,19.4397232,0          ",
        name: "Revolución"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1345682,19.416019,0          ",
        name: "San Antonio Abad"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1611063,19.441782,0          ",
        name: "San Cosme"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1368914,19.4008785,0          ",
        name: "Viaducto"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1390371,19.3874695,0          ",
        name: "Villa de Cortés"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1378087,19.3952064,0          ",
        name: "Xola"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1329861,19.4332227,0          ",
        name: "Zócalo"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 3",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1766363,19.3359178,0          ",
        name: "Copilco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1704994,19.3614528,0          ",
        name: "Coyoacán"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1591108,19.3798486,0          ",
        name: "División del Norte"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1562569,19.3956264,0          ",
        name: "Etiopía | Plaza de la Transparencia"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1574532,19.3855061,0          ",
        name: "Eugenia"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1538858,19.4135984,0          ",
        name: "Hospital General"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1478777,19.4332682,0          ",
        name: "Juárez"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1505706,19.4195583,0          ",
        name: "Niños Heroes"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1810191,19.3468358,0          ",
        name: "Miguel Ángel de Quevedo (Av. Universidad)"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1321707,19.4769704,0          ",
        name: "Potrero"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1427922,19.4551006,0          ", 
        name: "Tlatelolco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1760355,19.3537143,0          ",
        name: "Viveros"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1649204,19.3707294,0          ",
        name: "Zapata"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 4",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1119307,19.4647057,0          ",
        name: "Bondojito"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1161579,19.4488638,0          ",
        name: "Canal del Norte"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1205406,19.4216528,0          ",
        name: "Fray Servando"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1217637,19.4091258,0          ",
        name: "Jamaica"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1216993,19.4027355,0          ",
        name: "Santa Anita"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1080093,19.4743304,0          ",
        name: "Talismán"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 5",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.0963578,19.4511957,0          ",
        name: "Aragón"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1407001,19.4790945,0          ",
        name: "Autobuses del Norte"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.105413,19.4514081,0          ",
        name: "Eduardo Molina"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0874207,19.4240913,0          ",
        name: "Hangares"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1449058,19.4896945,0          ",
        name: "Instituto del Petróleo"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1307974,19.4634058,0          ",
        name: "Misterios"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0871739,19.4457529,0          ",
        name: "Oceanía"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1492832,19.5008499,0          ",
        name: "Politécnico"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0876889,19.4338247,0          ",
        name: "Terminal Aérea"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1193229,19.458798,0          ",
        name: "Valle Gómez"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 6",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1864371,19.4910143,0          ",
        name: "Azcapotzalco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.2000628,19.5046121,0          ",
        name: "El Rosario"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.17382,19.4908171,0          ",
        name: "Ferrería"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1179228,19.4815524,0          ",
        name: "La Villa | Basílica de Guadalupe"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1346973,19.4877576,0          ",
        name: "Lindavista"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1627693,19.488683,0          ",
        name: "Norte 45"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1962701,19.495065,0          ",
        name: "Tezozomoc"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1555542,19.4903266,0          ",
        name: "Vallejo"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 7",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1948807,19.4905036,0          ",
        name: "Aquiles Serdán"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1919732,19.4255433,0          ",
        name: "Auditorio"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.19016,19.479226,0          ",
        name: "Camarones"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1912866,19.4119136,0          ",
        name: "Constituyentes"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1910237,19.4335161,0          ",
        name: "Polanco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1878051,19.3761645,0          ",
        name: "Mixcoac"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1905999,19.4700922,0          ",
        name: "Refinería"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1863245,19.3847724,0          ",
        name: "San Antonio"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1918445,19.4458136,0          ",
        name: "San Joaquín"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1860509,19.3912798,0          ",
        name: "San Pedro de los Pinos"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 8",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1077197,19.3737557,0          ",
        name: "Aculco"
      }, 
      %MetroCdmxChallenge.Station{
        coords: "            -99.1095865,19.3793223,0          ",
        name: "Apatlaco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1013199,19.3561791,0          ",
        name: "Atlalilco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.085511,19.3560526,0          ",
        name: "Cerro de la Estrella"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0638816,19.3459804,0          ",
        name: "Constitución de 1917"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1135132,19.398551,0          ",
        name: "Coyuya"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1433448,19.4216528,0          ",
        name: "Doctores"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1091895,19.3650309,0          ",
        name: "Escuadrón 201"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1392624,19.4427583,0          ",
        name: "Garibaldi"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1122043,19.3886637,0          ",
        name: "Iztacalco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0934932,19.3578999,0          ",
        name: "Iztapalapa"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1262913,19.4065657,0          ",
        name: "La Viga"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1441816,19.4133303,0          ",
        name: "Obrera"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.141494,19.4312447,0          ",
        name: "San Juan de Letrán"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0747285,19.3507281,0          ",
        name: "UAM-I"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 9",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.1684502,19.406171,0          ",
        name: "Chilpancingo"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0912294,19.4084529,0          ",
        name: "Ciudad Deportiva"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1448736,19.407021,0          ",
        name: "Lázaro Cárdenas"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1788948,19.4062317,0          ",
        name: "Patriotismo"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0824747,19.4072234,0          ",
        name: "Puebla"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1128802,19.4085693,0          ",
        name: "Mixiuhca"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1030419,19.4085693,0          ",
        name: "Velódromo"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea A",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.0056777,19.3647171,0          ",
        name: "Acatitla"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0698737,19.4047948,0          ",
        name: "Agrícola Oriental"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0593863,19.3987332,0          ",
        name: "Canal de San Juan"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0356326,19.3851316,0          ",
        name: "Guelatao"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -98.9609921,19.3506572,0          ",
        name: "La Paz"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -98.9768708,19.3590285,0          ",
        name: "Los Reyes"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0170825,19.3733205,0          ",
        name: "Peñón Viejo"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -98.9952278137207,19.3613566081823,0          ",
        name: "Santa María"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0463722,19.3912849,0          ",
        name: "Tepalcates"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea B",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.0692568,19.4581051,0          ",
        name: "Bosque de Aragón"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.027347266674,19.5344532308002,0          ",
        name: "Ciudad Azteca"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.079417,19.450963,0          ",
        name: "Deportivo Oceanía"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0488827,19.4858612,0          ",
        name: "Impulsora"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1313499,19.4433754,0          ",
        name: "Lagunilla"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0333796,19.5213181,0          ",
        name: "Olímpica"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.041968,19.5017045,0          ",
        name: "Muzquiz"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0545368,19.4730559,0          ",
        name: "Nezahualcóyotl"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0301716,19.5284976,0          ",
        name: "Plaza Aragón"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1036642,19.436607,0          ",
        name: "Ricardo Flores Magón"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0466619,19.4909688,0          ",
        name: "Río de los Remedios"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0943193,19.4408057,0          ",
        name: "Romero Rubio"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0359974,19.5153316,0          ",
        name: "Tecnológico"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1233194,19.4425205,0          ",
        name: "Tepito"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0613174,19.4616861,0          ",
        name: "Villa de Aragón"
      }
    ]
  },
  %MetroCdmxChallenge.Line{
    name: "Linea 12",
    stations: [
      %MetroCdmxChallenge.Station{
        coords: "            -99.085865020752,19.3204785190829,0          ",
        name: "Calle 11"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1075731,19.3382167,0          ",
        name: "Culhuacán"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1500341892242,19.3693022493275,0          ",
        name: "Eje Central"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.171416759491,19.3720957839934,0          ",
        name: "Hospital 20 de Noviembre"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1789698600769,19.373684838504,0          ",
        name: "Insurgentes Sur"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0977311134338,19.3224426830973,0          ",
        name: "Lomas Estrella"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0505456924438,19.3008760842049,0          ",
        name: "Nopalera"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1557097434998,19.3701423390627,0          ",
        name: "Parque de los Venados"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0755867958069,19.3184940819814,0          ",
        name: "Periférico Oriente"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1215705871582,19.3574291928694,0          ",
        name: "Mexicaltzingo"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0605020523071,19.3047441060938,0          ",
        name: "Olivos"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.1051529,19.3276583,0          ",
        name: "San Andrés Tomatlán"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0698146820068,19.3095233157067,0          ",
        name: "Tezonco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0240240097046,19.2980205748147,0          ",
        name: "Tlaltenco"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0174150466919,19.2906891806738,0          ",
        name: "Tláhuac"
      },
      %MetroCdmxChallenge.Station{
        coords: "            -99.0417265892029,19.2992559431495,0          ",
        name: "Zapotitlán"
      }
    ]
  },
```

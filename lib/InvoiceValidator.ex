defmodule InvoiceValidator do
    def validate_dates(%DateTime{} = emisor_date, %DateTime{} = pac_date) do
        emisor_date_plus_72hrs = DateTime.add(emisor_date, 60*60*72, :second)
        pac_date_tolerance = DateTime.add(pac_date, 300, :second)
        
        cond do
            DateTime.compare(pac_date, emisor_date_plus_72hrs) == :gt -> :error
            DateTime.compare(emisor_date, pac_date_tolerance) == :gt -> :error
            true -> :ok  
        end
    end
end
defmodule InvoiceValidator do
    def validate_dates(%DateTime{} = emisor_date, %DateTime{} = pac_date) do

        emisor_date_plus_72hrs = DateTime.add(emisor_date, 60*60*72, :second)
        pac_date_tolerance = DateTime.add(pac_date, 300, :second)

        cond do
            DateTime.compare(pac_date, emisor_date_plus_72hrs) == :gt -> {:error, "Invoice was issued more than 72 hrs before received by the PAC"}

            DateTime.compare(emisor_date, pac_date_tolerance) == :gt -> {:error, "Invoice is more than 5 mins ahead in time"} 
            
            true -> :ok  
        end
    end
end




#Pac date === DateTime<2022-03-25 10:45:30-06:00 CST Mexico/General>

#emisor_date_plus_72hrs === DateTime<2022-03-26 10:45:30-06:00 CST Mexico/General>


#Emisor date === DateTime<2022-03-22 10:45:30-06:00 CST Mexico/General> 

#emisor_date_w_tolerance_time === DateTime<2022-03-22 10:50:30-06:00 CST Mexico/General>
defmodule InvoiceValidatorTest do
    @doc """
    The PAC date will always take the Time Zone of America/Mexico_City
    """
    use ExUnit.Case
    import InvoiceValidator
    Calendar.put_time_zone_database(Tzdata.TimeZoneDatabase)
    @pac_date DateTime.from_naive!(~N[2022-03-23 15:06:35], "America/Mexico_City")

    data = [
        {"72 hrs atras fail", "America/Tijuana", ~N[2022-03-20 13:06:31], :error},
        {"72 hrs atras fail", "America/Mazatlan", ~N[2022-03-20 14:06:31], :error},
        {"72 hrs atras fail", "America/Mexico_City", ~N[2022-03-20 15:06:31], :error},
        {"72 hrs atras fail", "America/Cancun", ~N[2022-03-20 16:06:31], :error},
        {"72 hrs atras success", "America/Tijuana", ~N[2022-03-20 14:06:35], :ok}, #para que salga ok, se toma en cuenta el horario de verano 
        {"72 hrs atras success", "America/Mazatlan", ~N[2022-03-20 14:06:35], :ok},
        {"72 hrs atras success", "America/Mexico_City", ~N[2022-03-20 15:06:35], :ok},
        {"72 hrs atras success", "America/Cancun", ~N[2022-03-20 16:06:35], :ok},

        {"5 mns adelante success", "America/Tijuana", ~N[2022-03-23 13:11:35], :ok},
        {"5 mns adelante success", "America/Mazatlan", ~N[2022-03-23 14:11:35], :ok},
        {"5 mns adelante success", "America/Mexico_City" ,~N[2022-03-23 15:11:35], :ok},
        {"5 mns adelante success", "America/Cancun", ~N[2022-03-23 16:11:35], :ok},
        {"5 mns adelante fail", "America/Tijuana" ,~N[2022-03-23 14:11:36], :error}, #para que salga error, se toma en cuenta el horario de verano 
        {"5 mns adelante fail", "America/Mazatlan", ~N[2022-03-23 14:11:36], :error},
        {"5 mns adelante fail", "America/Mexico_City", ~N[2022-03-23 15:11:36], :error},
        {"5 mns adelante fail", "America/Cancun", ~N[2022-03-23 16:11:36], :error}
    ]

    for {description_test, tz, emisor_date, status} <- data do
        @description_test description_test
        @tz tz
        @emisor_date emisor_date
        @status status
        test "#{@description_test}, emisor in #{@tz} at #{@emisor_date} returns #{@status}" do
            assert validate_dates(datetime(@emisor_date, @tz), @pac_date) == @status
        end
    end

    defp datetime(%NaiveDateTime{} = ndt, tz) do
        DateTime.from_naive!(ndt, tz)
    end



end
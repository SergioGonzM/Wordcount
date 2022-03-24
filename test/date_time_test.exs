defmodule InvoiceValidatorTest do
    @doc """
    The PAC date will always take the Time Zone of America/Mexico_City
    """
    use ExUnit.Case
    import InvoiceValidator
    @tz Calendar.put_time_zone_database(Tzdata.TimeZoneDatabase)

    test "Centro" do
        @tz
        pac_date = DateTime.from_naive!(~N[2022-03-23 15:06:35], "America/Mexico_City")

        #emisor date same as pac date
        assert :ok == validate_dates(DateTime.from_naive!(~N[2022-03-23 15:06:35], "America/Mexico_City"), pac_date)

        #submitted with over +72 hours
        assert {:error, "Invoice was issued more than 72 hrs before received by the PAC"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-20 14:06:35], "America/Mexico_City"), pac_date)

        #emisor date has tolerance of 5 mins with pac date
        assert {:error, "Invoice is more than 5 mins ahead in time"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-23 15:11:36], "America/Mexico_City"), pac_date)
    end

    test "Sureste" do
        @tz
        pac_date = DateTime.from_naive!(~N[2022-03-23 15:06:35], "America/Mexico_City")

        #emisor date same as pac date
        assert :ok == validate_dates(DateTime.from_naive!(~N[2022-03-23 16:01:34], "America/Cancun"), pac_date)

        #submitted with over +72 hours
        assert {:error, "Invoice was issued more than 72 hrs before received by the PAC"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-20 16:01:34], "America/Cancun"), pac_date)

        #emisor date has tolerance of 5 mins with pac date
        assert {:error, "Invoice is more than 5 mins ahead in time"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-23 16:11:36], "America/Cancun"), pac_date)

    end

    test "pacifico" do
        @tz
        pac_date = DateTime.from_naive!(~N[2022-03-23 14:06:35], "America/Mexico_City")

        #emisor date same as pac date
        assert :ok == validate_dates(DateTime.from_naive!(~N[2022-03-23 13:06:35], "Mexico/BajaSur"), pac_date)

        #submitted with over +72 hours
        assert {:error, "Invoice was issued more than 72 hrs before received by the PAC"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-20 13:06:34], "Mexico/BajaSur"), pac_date)

        #emisor date has tolerance of 5 mins with pac date
        assert {:error, "Invoice is more than 5 mins ahead in time"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-23 16:11:36], "Mexico/BajaSur"), pac_date)
    end

    test "noroeste" do
        @tz
        pac_date = DateTime.from_naive!(~N[2022-03-23 14:06:35], "America/Mexico_City")

        #emisor date same as pac date
        assert :ok == validate_dates(DateTime.from_naive!(~N[2022-03-23 13:06:35], "Mexico/BajaNorte"), pac_date)

        #submitted with over +72 hours
        assert {:error, "Invoice was issued more than 72 hrs before received by the PAC"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-20 13:06:34], "Mexico/BajaNorte"), pac_date)

        #emisor date has tolerance of 5 mins with pac date
        assert {:error, "Invoice is more than 5 mins ahead in time"} == 
            validate_dates(DateTime.from_naive!(~N[2022-03-23 13:11:36], "Mexico/BajaNorte"), pac_date)
    end


end
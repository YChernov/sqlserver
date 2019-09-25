Description:
AdventureWork - SSIS package which collects all Order and Product Information data from the AdventureWorks2017 database and populates summary data within the dbo.OrderProductTotal table in the AdventureWorksReporting2017 database.

Weather - SSIS package which copies weather data from the AdventureWorks2017 database (dbo.WeatherData table) into the dbo.WeatherData table in the AdventureWorksReporting2017 database.
             There are Sunrise into Date Time values in the AdventureWorksReporting2017.dbo.WeatherData table (sunrise_dd and sunset_dd columns).

AdventureWork.docx - AdventureWork SSIS package description.
Weather.docx - Weather SSIS package description.

Please run AdventureWorksReporting2017.sql script to create additional objects in the AdventureWorksReporting2017 database:
   dbo.OrderProductTotal - summary table for Order and Product Information data
   dbo.WeatherData - table for conversion bigint sunrise/sunset data into datetime values. There are two additional datetime columns sunrise_dd, sunset_dd.
   dbo.fn_ConvertToDateTime - function for conversion bigint Unix time data into datetime value.


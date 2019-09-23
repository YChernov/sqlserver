
USE [AdventureWorksReporting2017]
GO

/****** Object:  Table [dbo].[OrderProductTotal]    Script Date: 09/22/2019 22:08:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderProductTotal]') AND type in (N'U'))
DROP TABLE [dbo].[OrderProductTotal]
GO

USE [AdventureWorksReporting2017]
GO

/****** Object:  Table [dbo].[OrderProductTotal]    Script Date: 09/22/2019 22:08:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderProductTotal](
	[SalesOrderID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[ProductCategory] [nvarchar](50) NULL,
	[OrderQty] [smallint] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[Territory (Customer Location)] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO

USE [AdventureWorksReporting2017]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeatherData]') AND type in (N'U'))
DROP TABLE [dbo].[WeatherData]
GO

USE [AdventureWorksReporting2017]
GO

CREATE TABLE [dbo].[WeatherData](
	[name] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[sunrise] [bigint] NULL,
	[sunset] [bigint] NULL,
	[windSpeed] [decimal](35, 18) NULL,
	[weatherDescription] [varchar](200) NULL,
	[sunrise_dd] [datetime] NULL,
	[sunset_dd] [datetime] NULL
) ON [PRIMARY]

GO

USE [AdventureWorksReporting2017]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_ConvertToDateTime]') AND type in (N'FN', N'IF', N'TF'))
DROP FUNCTION [dbo].[fn_ConvertToDateTime]
GO

USE [AdventureWorksReporting2017]
GO

CREATE FUNCTION [dbo].[fn_ConvertToDateTime] (@Datetime BIGINT)
RETURNS DATETIME
AS
BEGIN
    DECLARE @LocalTimeOffset BIGINT
           ,@AdjustedLocalDatetime BIGINT;
    SET @LocalTimeOffset = DATEDIFF(second,GETDATE(),GETUTCDATE())
    SET @AdjustedLocalDatetime = @Datetime - @LocalTimeOffset
    RETURN (SELECT DATEADD(second,@AdjustedLocalDatetime, CAST('1970-01-01 00:00:00' AS datetime)))
END;

GO

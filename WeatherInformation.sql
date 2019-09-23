CREATE TABLE dbo.WeatherData
(
name varchar(100),
country varchar(100),
sunrise bigint,
sunset bigint,
windSpeed decimal(35,18),
weatherDescription varchar(200)
)

INSERT INTO dbo.WeatherData(name,country,sunrise,sunset,windSpeed,weatherDescription)
VALUES('London','United Kingdom',1544169114,1544197926,7.7,'Rain')
INSERT INTO dbo.WeatherData(name,country,sunrise,sunset,windSpeed,weatherDescription)
VALUES('Birmingham','United Kingdom',1544169829,1544198061,6.2,'Rain')
INSERT INTO dbo.WeatherData(name,country,sunrise,sunset,windSpeed,weatherDescription)
VALUES('Moscow','Russia',1544161446,1544187467,4,'Clouds')
INSERT INTO dbo.WeatherData(name,country,sunrise,sunset,windSpeed,weatherDescription)
VALUES('Singapore','Singapore',1544136871,1544180259,1,'Rain')
INSERT INTO dbo.WeatherData(name,country,sunrise,sunset,windSpeed,weatherDescription)
VALUES('Houston','United States of America',1544187847,1544224930,3.96,'Clouds')
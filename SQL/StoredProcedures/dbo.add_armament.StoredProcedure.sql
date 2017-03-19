USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_armament]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_armament]
AS
begin
	CREATE TABLE Armament
	(
	codAr INT IDENTITY(1,1) PRIMARY KEY CHECK (codAr >= 1),
	Tip FLOAT CHECK (Tip >=5.0)
	)
end
GO

USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_avion]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_avion]
AS 
begin
	CREATE TABLE Avion
	(
	codA INT IDENTITY(1,1) PRIMARY KEY CHECK (codA >= 1),
	NumeA char(20) NOT NULL,
	Motor char(20) NOT NULL,
	)
end
GO

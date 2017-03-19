USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_radar]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_radar]
AS
BEGIN
	CREATE TABLE Radar
	(
	codR INT CHECK (codR >= 1),
	Distanta INT UNIQUE ,
	NumeR char(20),
	PRIMARY KEY (codR)
	)
END
GO

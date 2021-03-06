USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[Indexuri]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Indexuri]
AS
BEGIN
	DROP INDEX idx_nc_r ON Radar

	CREATE NONCLUSTERED INDEX idx_nc_r ON Radar(Distanta)

	SELECT * FROM Radar
	ORDER BY codR

	SELECT * FROM Radar
	WHERE codR = 5000 OR codR=6000

	SELECT Distanta FROM Radar
	ORDER BY Distanta

	SELECT Distanta FROM Radar
	WHERE Distanta BETWEEN 5000 AND 7000

	SELECT *
	FROM Radar
	WHERE Distanta = 5000
END
GO

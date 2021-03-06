USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG]
AS
BEGIN
	SELECT DISTINCT Locatie FROM Fabrica
	UNION ALL 
	SELECT NumeL FROM Locatie
	ORDER BY Locatie

	SELECT DISTINCT * FROM Avion
	WHERE NumeA='Focke-Wulf'
	OR Motor='Junkers'

	SELECT DISTINCT * FROM Avion
	WHERE NumeA NOT IN ('Focke-Wulf','Spitfire')

	SELECT Motor   
	FROM Avion
	INTERSECT  
	SELECT NumeM   
	FROM Motor ; 


	

END
GO

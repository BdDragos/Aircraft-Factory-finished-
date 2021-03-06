USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG8]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG8]
AS
BEGIN
	SELECT * FROM Avion  
	WHERE Motor<ANY(SELECT numeM FROM Motor WHERE Motor.numeM <='Klimov');  

	SELECT * FROM Avion
	WHERE Motor>ALL(SELECT NumeM FROM Motor WHERE numeM = 'Klimov');

	SELECT codA,numeA,MAX(Motor) AS HM FROM Avion WHERE Motor>'Klimov'
	GROUP BY codA,numeA

	SELECT codA,numeA,MIN(Motor) AS HM FROM Avion WHERE Motor<='Junkers'
	GROUP BY codA,numeA


END
GO

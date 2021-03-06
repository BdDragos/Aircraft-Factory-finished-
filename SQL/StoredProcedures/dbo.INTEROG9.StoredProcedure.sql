USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG9]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG9]
AS
BEGIN
	SELECT * FROM Avion  
	WHERE Motor=ANY(SELECT numeM FROM Motor WHERE Motor.numeM <='Klimov');  

	SELECT * FROM Avion  
	WHERE Motor IN(SELECT numeM FROM Motor WHERE Motor.numeM <='Klimov'); 

	SELECT * FROM Motor
	WHERE Acod>ALL(SELECT codA FROM Avion WHERE numeA = 'F-2');

	SELECT * FROM Motor
	WHERE Acod NOT IN(SELECT codA FROM Avion WHERE codA<=8);

END
GO

USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG5]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG5]
AS
BEGIN
	SELECT DISTINCT A.numeA,A.Motor
	FROM Avion A
	WHERE EXISTS(SELECT * FROM Motor M WHERE M.NumeM = 'Klimov' AND A.codA = M.Acod)

	SELECT DISTINCT A.numeA
	FROM Avion A
	WHERE EXISTS(SELECT * FROM Armament Ar WHERE Ar.codAr >= A.codA AND Ar.Tip = '37');

END
GO

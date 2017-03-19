USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG4]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG4]
AS
BEGIN
	SELECT A.NumeA
	FROM Avion A
	WHERE A.codA IN (SELECT M.Acod FROM Motor M WHERE M.numeM = A.Motor);

	SELECT A.numeA
	FROM Avion A
	WHERE A.codA IN (SELECT Ar.codAr FROM Armament Ar WHERE Ar.codAr IN (SELECT l.codAr FROM LegAA l WHERE l.codAr = l.codA));
END

GO

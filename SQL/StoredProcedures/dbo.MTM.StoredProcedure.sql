USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[MTM]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MTM]
AS
BEGIN
	SELECT a.codA, a.NumeA, t.codT,t.NumeT
	FROM Avion a
	JOIN legAT ta ON a.codA = ta.codA
	JOIN Tara t ON t.codT = ta.codT

	SELECT m.codM, m.NumeM ,a.NumeA
	FROM Motor M
	INNER JOIN Avion a ON m.NumeM = a.Motor

	SELECT a.codA, a.NumeA, t.codAr,t.Tip
	FROM Avion a
	JOIN legAA ta ON a.codA = ta.codA
	JOIN Armament t ON t.codAr = ta.codAr

END
GO

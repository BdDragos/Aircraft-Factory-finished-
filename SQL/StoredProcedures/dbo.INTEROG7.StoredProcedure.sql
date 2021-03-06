USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG7]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG7]
AS
BEGIN
	/* Selecteaza avioanele ce au un anumit numar de arme, unde numarul de avioane este mai mare decat ID-ul minim din Armament*/
	SELECT Avion.NumeA, COUNT(LegAA.ida) AS NrLeg FROM (Avion
	INNER JOIN LegAA
	ON Avion.codA=LegAA.codA)
	GROUP BY NumeA
	HAVING COUNT(NumeA) >= 2

	/* Selecteaza codul si tipul armamentului, plus tipul maxim, dupa care afiseaza armele ce au numarul lor mai mic decat AVG compus din codurile avioanelor*/
	SELECT Armament.codAr,Armament.Tip, MAX(Armament.Tip) AS MaxCal FROM Armament
	GROUP BY Armament.codAr,Tip
	HAVING COUNT(Armament.codAr) < (SELECT AVG(codA) FROM Avion)

	/* Selecteaza codul si tipul armamentului, plus tipul minim, dupa care afiseaza armele ce au codul mai mic sau egal ca minimul calibrului de arme din Armament*/
	SELECT Armament.codAr,Armament.Tip, MIN(Armament.Tip) AS MinCal FROM Armament
	GROUP BY Armament.codAr,Tip
	HAVING MIN(Armament.codAr) <= (SELECT MIN(Tip) FROM Armament)

	/* Selecteaza codul si tipul armamentului, plus tipul AVG , dupa care grupeaza dupa codul armei si tipul ei*/
	SELECT Armament.codAr,Armament.Tip, AVG(Armament.Tip) AS AvgCal FROM Armament
	GROUP BY Armament.codAr,Tip
END
GO

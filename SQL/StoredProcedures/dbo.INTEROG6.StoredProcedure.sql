USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG6]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG6]
AS
BEGIN
	SELECT Ar.maxTip
	FROM (SELECT Tip AS maxTip FROM Armament WHERE Tip <= '100')
	AS Ar
	ORDER BY maxTip

	SELECT DISTINCT M.MotN
	FROM (SELECT numeM AS MotN FROM Motor WHERE numeM = 'BMW' OR numeM = 'Energia')
	AS M
	ORDER BY MotN
END
GO

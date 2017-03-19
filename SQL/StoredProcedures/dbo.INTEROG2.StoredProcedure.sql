USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG2]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG2]
AS
BEGIN
	SELECT m.codM, m.NumeM ,a.NumeA
	FROM Motor M
	LEFT JOIN Avion a ON m.NumeM = a.Motor

	SELECT m.codM, m.NumeM ,a.NumeA
	FROM Motor M
	RIGHT JOIN Avion a ON m.NumeM = a.Motor

	SELECT m.codM, m.NumeM ,a.NumeA
	FROM Motor M
	FULL JOIN Avion a ON m.NumeM = a.Motor
END
GO

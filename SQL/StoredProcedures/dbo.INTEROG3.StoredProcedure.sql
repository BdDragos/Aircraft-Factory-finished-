USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[INTEROG3]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INTEROG3]
AS
BEGIN
	SELECT  codA,NumeA, Tip
    FROM Avion, Armament
	ORDER BY Tip

	SELECT * FROM Avion
	WHERE Motor IN ('Junkers','BMW');

	SELECT * FROM Avion
	WHERE Motor NOT IN ('Klimov','BMW');
END
GO

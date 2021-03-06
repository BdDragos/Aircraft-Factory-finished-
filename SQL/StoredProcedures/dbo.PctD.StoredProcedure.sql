USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[PctD]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PctD]
AS
BEGIN

	DROP INDEX idx_nc_RRA1 ON LegRRA
	DROP INDEX idx_nc_RRA2 ON LegRRA

	SELECT *
	FROM Radar R
	INNER JOIN LegRRA RRA ON R.codR = RRA.codR
	WHERE R.codR = 10

	SELECT * FROM Radar
	WHERE codR = 1100
	
	CREATE NONCLUSTERED INDEX idx_nc_RRA1 ON LegRRA(codR)
	CREATE NONCLUSTERED INDEX idx_nc_RRA2 ON LegRRA(codRA)

	SELECT *
	FROM Radar R
	INNER JOIN LegRRA RRA ON R.codR = RRA.codR
	WHERE R.codR = 10

	SELECT * FROM Radar
	WHERE codR = 1100
END
GO

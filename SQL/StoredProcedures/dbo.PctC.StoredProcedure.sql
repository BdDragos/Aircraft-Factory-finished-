USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[PctC]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PctC]
AS
BEGIN

	DROP INDEX idx_nc_ra ON RazaActiune

	SELECT Raza FROM RazaActiune
	WHERE Raza >=2000 AND Raza <=4000

	CREATE NONCLUSTERED INDEX idx_nc_ra ON RazaActiune(Raza)

	SELECT Raza FROM RazaActiune
	WHERE Raza >=2000 AND Raza <=4000
END
GO

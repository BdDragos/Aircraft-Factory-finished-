USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[PctE]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PctE]
AS
BEGIN
	DROP INDEX idx_nc_av ON Avion
	CREATE NONCLUSTERED INDEX idx_nc_av ON Avion (codA,NumeA) INCLUDE (Motor)
	
	SELECT * FROM Avion
	WHERE NumeA='Focke-Wulf' AND Motor='Junkers'
END
GO

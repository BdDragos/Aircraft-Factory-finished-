USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[main]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[main]
AS
BEGIN
	DROP TABLE LegRRA
	DROP TABLE Radar
	DROP TABLE RazaActiune
	DROP TABLE LegAF
	DROP TABLE LegAT
	DROP TABLE LegAA
	DROP TABLE Regie
	DROP TABLE Motor
	DROP TABLE Tara
	DROP TABLE Locatie
	DROP TABLE Armament
	DROP TABLE Fabrica
	DROP TABLE Distribuitor
	DROP TABLE Avion
	DROP TABLE LogM
	
	EXECUTE dbo.add_radar
	EXECUTE dbo.add_RazaActiune
	EXECUTE dbo.add_LegRRA
	EXECUTE dbo.add_tara
	EXECUTE dbo.add_distribuitor
	EXECUTE dbo.add_fabrica
	EXECUTE dbo.add_regie
	EXECUTE dbo.add_avion
	EXECUTE dbo.add_motor
	EXECUTE dbo.add_locatie
	EXECUTE dbo.add_armament
	EXECUTE dbo.add_legaa
	EXECUTE dbo.add_legaf
	EXECUTE dbo.add_legat
	EXECUTE dbo.add_LogM
	EXECUTE dbo.inserare
	EXECUTE dbo.RandInsert
	
END

GO

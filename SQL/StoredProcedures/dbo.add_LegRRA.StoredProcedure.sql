USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_LegRRA]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_LegRRA]
AS
BEGIN
	CREATE TABLE LegRRA
	(
	idL INT PRIMARY KEY CHECK (idL >= 1),
	codR INT,
	codRA INT
	)

	ALTER TABLE LegRRA
	ADD CONSTRAINT fk_Radar_RazaActiune
	FOREIGN KEY (codR)
	REFERENCES Radar(codR)

	ALTER TABLE LegRRA
	ADD CONSTRAINT fk_RazaActiune_Radar
	FOREIGN KEY (codRA)
	REFERENCES RazaActiune(codRA)
END
GO

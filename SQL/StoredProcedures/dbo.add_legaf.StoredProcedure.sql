USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_legaf]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_legaf]
AS
begin
	CREATE TABLE LegAF
	(
	codA INT NOT NULL,
	codF INT NOT NULL
	)

	ALTER TABLE LegAF
	ADD CONSTRAINT fk_Avion_Fabrica
	FOREIGN KEY (codF)
	REFERENCES Fabrica(codF)

	ALTER TABLE LegAF
	ADD CONSTRAINT fk_Fabrica_Avion
	FOREIGN KEY (codA)
	REFERENCES Avion(codA)

end
GO

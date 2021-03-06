USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_legaa]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_legaa]
AS
begin
	CREATE TABLE LegAA
	(
	ida INT IDENTITY(1,1) CHECK (ida >= 1),
	codAr INT NOT NULL,
	codA INT NOT NULL
	)

	ALTER TABLE LegAA
	ADD CONSTRAINT fk_Avion_Armament
	FOREIGN KEY (codAr)
	REFERENCES Armament(codAr)

	ALTER TABLE LegAA
	ADD CONSTRAINT fk_Armament_Avion
	FOREIGN KEY (codA)
	REFERENCES Avion(codA)

	ALTER TABLE LegAA
	ADD CONSTRAINT ida PRIMARY KEY (codAr, codA);

end
GO

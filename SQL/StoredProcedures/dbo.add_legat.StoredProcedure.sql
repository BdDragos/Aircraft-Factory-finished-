USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_legat]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_legat]
AS
begin
	CREATE TABLE LegAT
	(
	codAT INT PRIMARY KEY IDENTITY(1,1) CHECK (codAT >= 1),
	codA INT NOT NULL,
	codT INT NOT NULL
	)

	ALTER TABLE LegAT
	ADD CONSTRAINT fk_Avion_Tara
	FOREIGN KEY (codT)
	REFERENCES Tara(codT)

	ALTER TABLE LegAT
	ADD CONSTRAINT fk_Tara_Avion
	FOREIGN KEY (codA)
	REFERENCES Avion(codA)

end
GO

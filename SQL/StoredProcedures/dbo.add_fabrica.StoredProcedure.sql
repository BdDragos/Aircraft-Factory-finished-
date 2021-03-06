USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_fabrica]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_fabrica] 
AS
begin
	CREATE TABLE Fabrica
	(
	codF INT IDENTITY(1,1) PRIMARY KEY CHECK (codF >= 1),
	NumeF char(20) NOT NULL,
	Distribuitor char(20) NOT NULL,
	Locatie char(20) NOT NULL,
	Dcod INT 
	)

	ALTER TABLE Fabrica 
	ADD CONSTRAINT fk_Fabrica
	FOREIGN KEY (Dcod) 
	REFERENCES Distribuitor(codD);
end
GO

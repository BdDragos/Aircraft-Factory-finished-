USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_regie]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC	[dbo].[add_regie]
AS
BEGIN
	CREATE TABLE Regie
	(
	codR INT IDENTITY(1,1) CHECK (codR >= 1),
	NumeR varchar(20) NOT NULL,
	Tcod INT, 
	Dcod INT,
	CONSTRAINT pk_RegieID PRIMARY KEY (codR,NumeR)
	)
	
	ALTER TABLE Regie
	ADD CONSTRAINT fk_RegieD
	FOREIGN KEY (Dcod) 
	REFERENCES Distribuitor(codD)

	ALTER TABLE Regie
	ADD CONSTRAINT fk_RegieT
	FOREIGN KEY (Tcod) 
	REFERENCES Tara(codT)

	
END
GO

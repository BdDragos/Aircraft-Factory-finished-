USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_locatie]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_locatie]
AS
begin
	CREATE TABLE Locatie
	(
	codL INT IDENTITY(1,1) PRIMARY KEY CHECK (codL >= 1),
	NumeL char(20) NOT NULL,
	Fcod INT
	)

	ALTER TABLE Locatie 
	ADD CONSTRAINT fk_Locatie 
	FOREIGN KEY (Fcod) 
	REFERENCES Fabrica(codF);
end
GO

USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_motor]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_motor] 
AS
begin
	CREATE TABLE Motor
	(
	codM INT IDENTITY(1,1) PRIMARY KEY CHECK (codM >= 1),
	NumeM char(20) NOT NULL,
	Acod INT
	)
	ALTER TABLE Motor 
	ADD CONSTRAINT fk_Avion 
	FOREIGN KEY (Acod) 
	REFERENCES Avion(codA);
end
GO

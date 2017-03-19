USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[InserareRegie]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InserareRegie] @numeR varchar(20),@TCod INT, @DCod INT
AS
BEGIN
	IF @TCod IS NULL 
	BEGIN
		PRINT 'Eroare, @TCod este nul'
		RETURN 1
	END

	IF @DCod IS NULL
	BEGIN
		PRINT 'Eroare, @DCod este nul'
		RETURN 2
	END

	IF @TCod > 10
	BEGIN
		PRINT 'TCod invalid, dati o valoare mai mica'
		RETURN 3
	END
	IF @DCod > 10
	BEGIN
		PRINT 'DCod invalid, dati o valoare mai mica'
		RETURN 3
	END

	INSERT INTO Regie (NumeR,Tcod,Dcod)
	VALUES (@numeR,@TCod,@DCod);

	SELECT @@IDENTITY
END
GO

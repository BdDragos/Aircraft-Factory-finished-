USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[InserareMotor]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InserareMotor] @NumeM varchar(20), @codA INT
AS
BEGIN
	IF @NumeM IS NULL 
	BEGIN
		PRINT 'Eroare, motorul este nul'
		RETURN 1
	END

	IF @codA IS NULL
	BEGIN
		PRINT 'Eroare, codA este nul'
		RETURN 2
	END

	IF @codA > 20 
	BEGIN
		PRINT 'Eroare, codA invalid'
		RETURN 3
	END

	INSERT INTO Motor (NumeM,Acod)
	VALUES (@NumeM,@codA);
END
GO

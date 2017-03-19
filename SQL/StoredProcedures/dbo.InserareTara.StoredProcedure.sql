USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[InserareTara]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InserareTara] @NumeT varchar(20), @Land varchar(20)
AS
BEGIN
	IF @NumeT IS NULL 
	BEGIN
		PRINT 'Eroare, numele tarii este nul'
		RETURN 1
	END
	IF @Land IS NULL
	BEGIN
		PRINT 'Eroare, land-ul este nul'
		RETURN 2
	END
	IF @NumeT = 'Japonia' AND @Land<>'Asia'
	BEGIN
		PRINT 'Tara invalida pentru Japonia'
		RETURN 3
	END
	IF (@NumeT = 'Germania' OR @NumeT='Rusia' OR @NumeT='UK' OR @NumeT='Italia' OR @NumeT='Franta') AND @Land<>'Europa'
	BEGIN
		PRINT 'Tara invalida, dati continentul potrivit tarii'
		RETURN 3
	END

	INSERT INTO Motor (NumeM,Acod)
	VALUES (@NumeT,@NumeT);
END
GO

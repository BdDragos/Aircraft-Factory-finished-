USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[InserareAvion]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InserareAvion] @Motor varchar(20), @NumeA varchar(20)
AS
BEGIN
	IF @NumeA IS NULL 
	BEGIN
		PRINT 'Eroare, motorul este nul'
		RETURN 1
		END

	IF dbo.validMotor(@Motor)=1
	BEGIN
		PRINT 'Eroare, motor invalid'
		RETURN 2
	END

	IF @NumeA IS NULL 
	BEGIN
		PRINT 'Eroare, numele este nul'
		RETURN 3
		END

	INSERT INTO Avion (Motor,NumeA)
	VALUES (@Motor,@NumeA);
END
GO

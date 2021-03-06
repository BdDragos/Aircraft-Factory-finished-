USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[RandInsert]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RandInsert]
AS
BEGIN
	DECLARE @i int
	SET @i=1


	;WITH x AS 
	(
	  SELECT TOP (10000) s1.[object_id]
	  FROM sys.all_objects AS s1
	  CROSS JOIN sys.all_objects AS s2
	  ORDER BY s1.[object_id]
	)
	INSERT dbo.Radar(codR, Distanta)
	SELECT
		r = ROW_NUMBER() OVER (ORDER BY [object_id]),
		n = ROW_NUMBER() OVER (ORDER BY NEWID())
	FROM x
	ORDER BY r;

	UPDATE Radar
	SET NumeR = 'Doppler'
	WHERE codR>=1

	SET @i=1
	WHILE @i<=3000
	BEGIN
		INSERT INTO RazaActiune (codRA,Raza,Masura)
		VALUES (@i,abs(checksum(NewId()) % 10000 + 1),'Dati o masura');
		SET @i=@i+1
	END

	BEGIN TRY

		DECLARE @m int
		DECLARE @n int
		SET @i=1
		WHILE @i<=30000
		BEGIN
			SET @m=abs(checksum(NewId())) % 10000 + 1
			SET @n=abs(checksum(NewId())) % 3000 + 1
			INSERT INTO LegRRA (idL,codR,codRA)
			VALUES (@i,@m,@n);
			SET @i=@i+1
		END

	END TRY
	BEGIN CATCH
		--returns the complete original error message as a result set
		SELECT 
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage

		--will return the complete original error message as an error message
		DECLARE @ErrorMessage nvarchar(400), @ErrorNumber int, @ErrorSeverity int, @ErrorState int, @ErrorLine int
		SELECT @ErrorMessage = N'Error %d, Line %d, Message: '+ERROR_MESSAGE(),@ErrorNumber = ERROR_NUMBER(),@ErrorSeverity = ERROR_SEVERITY(),@ErrorState = ERROR_STATE(),@ErrorLine = ERROR_LINE()
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorNumber,@ErrorLine)
	END CATCH

	
END
GO

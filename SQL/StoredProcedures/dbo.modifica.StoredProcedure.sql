USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[modifica]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[modifica]
AS
begin
	
	UPDATE Avion
	SET numeA='Henkel',Motor='Jumo'
	WHERE NumeA='Junkers' AND NumeA IS NULL

	UPDATE Avion
	SET numeA='Petlyakov',Motor='Energia'
	WHERE Motor='Klimov'

	UPDATE Fabrica
	SET Distribuitor='ARC'
	WHERE NOT Distribuitor='BFW'

	UPDATE Fabrica
	SET Locatie='Bacau'
	WHERE Locatie = 'Berlin' AND Locatie IS NULL

	UPDATE Armament
	SET Tip='500'
	WHERE Tip >=50 OR Tip < 1000

	UPDATE TARA
	SET numeT= 'Romania'
	WHERE numeT = 'Rusia'

	UPDATE Motor
	SET NumeM = 'BMW'
	WHERE NumeM LIKE '%J'
end
GO

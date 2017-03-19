USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[sterge]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sterge]
AS
begin
		
	DELETE FROM Avion
	WHERE NumeA='Focke-Wulf'

	DELETE FROM Avion
	WHERE Motor IN ('Klimov' , 'BMW')

	DELETE FROM Fabrica
	WHERE NOT Distribuitor='ARC' OR codF BETWEEN 3 AND 5

	DELETE FROM Armament
	WHERE Tip BETWEEN 10 AND 50

end
GO

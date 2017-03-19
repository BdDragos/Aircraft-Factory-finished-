USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[JoinViewTable]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[JoinViewTable]
AS
BEGIN
	SELECT f.codA, f.NumeA, f.Motor, u. NumeM, u.Acod,u.codM
	FROM AvioaneJunk f 
	Cross apply GetAllMotoare() u
	WHERE f.codA = u.Acod
END
GO

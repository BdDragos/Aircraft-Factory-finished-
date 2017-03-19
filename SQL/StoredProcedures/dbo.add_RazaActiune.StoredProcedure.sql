USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_RazaActiune]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_RazaActiune]
AS
BEGIN
	CREATE TABLE RazaActiune
	(
	codRA INT CHECK (codRA >= 1),
	Raza INT,
	Masura varchar(20)
	PRIMARY KEY (codRA)
	)
END
GO

USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_LogM]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_LogM]
AS
BEGIN
	CREATE TABLE LogM
	(
	DataM varchar(20) NOT NULL,
	Numele varchar(20) NOT NULL,
	Tipul varchar(20) NOT NULL,
	Numar decimal(10,2)  NOT NULL
	)
END

GO

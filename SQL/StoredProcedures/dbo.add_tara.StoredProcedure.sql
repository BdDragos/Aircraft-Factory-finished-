USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_tara]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_tara]
AS
begin
	CREATE TABLE Tara
	(
	codT INT IDENTITY(1,1) PRIMARY KEY CHECK (codT >= 1),
	NumeT char(20) NOT NULL
	)
end
GO

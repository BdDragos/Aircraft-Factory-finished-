USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[add_distribuitor]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[add_distribuitor]
AS
begin
	CREATE TABLE Distribuitor
	(
	codD INT IDENTITY(1,1) PRIMARY KEY CHECK (codD >= 1),
	NumeD char(20) NOT NULL,
	)
end
GO

USE [Fabrica]
GO
/****** Object:  StoredProcedure [dbo].[RecreateCons]    Script Date: 3/19/2017 3:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RecreateCons]
AS
BEGIN
	exec sp_MSforeachtable @command1="print '?'", @command2="ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"
END
GO

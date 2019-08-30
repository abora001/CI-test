SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[run] 
as
execute as login = 'sa'
execute user_login_test
GO

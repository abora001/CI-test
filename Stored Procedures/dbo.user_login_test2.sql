SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[user_login_test2] 
@usr nvarchar(max),@ps nvarchar(max)
with execute as 'CCCG\Ahayes'
as
begin
if exists (select name from sys.syslogins where loginname = @usr) 
begin
declare @sql nvarchar(max)
set @sql = 'Alter login '+@usr+' with password='''+@ps+''';'
exec sp_executesql @sql
end 
	else 
		select 'no user found'
end
GO

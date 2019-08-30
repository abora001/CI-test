SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[user_login_test] @usr nvarchar(max),@ps nvarchar(max)
--with execute as 'CCCG\Ahayes'
--with execute as owner
as
begin
execute as login = 'abora'
--if exists (select name from sys.syslogins where loginname = @usr) 
if exists (select name from sys.database_principals where name = @usr) 
begin
declare @sql nvarchar(max)
set @sql = 'Alter login '+@usr+' with password='''+@ps+''';'
exec sp_executesql @sql

end 
	else 
		select 'no user found'
end
GO
GRANT EXECUTE ON  [dbo].[user_login_test] TO [abora]
GO
GRANT VIEW DEFINITION ON  [dbo].[user_login_test] TO [abora]
GO
GRANT EXECUTE ON  [dbo].[user_login_test] TO [sp_user]
GO

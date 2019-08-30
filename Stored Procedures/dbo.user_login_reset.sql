SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[user_login_reset] @usr nvarchar(max),@ps nvarchar(max)
as
begin
declare @sql nvarchar(max)
set @sql = 'Alter login '+@usr+' with password='''+@ps+''';'
exec sp_executesql @sql
print @sql
end 
GO

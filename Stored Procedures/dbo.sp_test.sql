SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[sp_test] 
with execute as 'CCCG\Ahayes' 
as
begin
declare @sql nvarchar(max)
set @sql = 'select * from sys.syslogins'
exec sp_executesql @sql
print @sql
end
GO

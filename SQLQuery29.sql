USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[Firestaff]    Script Date: 13.12.2020 8:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Firestaff](@FIO nvarchar(50))
as
begin
delete from Staff
where FIO=@FIO
end
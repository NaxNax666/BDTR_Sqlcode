USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[DelClnt]    Script Date: 13.12.2020 8:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[DelClnt](@FIO char(50))
as
begin
delete from Client
where FIO=@FIO
end
USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[DelProg]    Script Date: 13.12.2020 8:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[DelProg](@Title char(50))
as
begin
delete from Program_list
where Title=@Title
end
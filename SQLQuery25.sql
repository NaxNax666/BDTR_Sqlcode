USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddStaff]    Script Date: 13.12.2020 8:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddStaff](@FIO nvarchar(50), @pos nvarchar(13), @sal int, @ED date)
as
begin 
insert into Staff values (@FIO, @pos, @sal, @ED);
end
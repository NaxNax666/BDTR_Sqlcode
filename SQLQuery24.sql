USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddProgram]    Script Date: 13.12.2020 8:01:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddProgram](@Title nvarchar(50), @dur int, @cst_mnth int)
as
begin 
insert into Program_list values (@Title, @dur, @cst_mnth);
end
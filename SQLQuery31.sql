USE [JOJOFit]
GO
/****** Object:  UserDefinedFunction [dbo].[MyContract]    Script Date: 13.12.2020 8:01:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER function [dbo].[MyContract](@FIO nvarchar(50))
returns table
as
return (select * from Enable_program
where FIO=@FIO);

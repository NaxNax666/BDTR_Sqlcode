USE [JOJOFit]
GO
/****** Object:  UserDefinedFunction [dbo].[OfferProg]    Script Date: 13.12.2020 8:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER function [dbo].[OfferProg](@FIO nvarchar(50))
returns table
as
return
select * from GoodProg
where FIO=@FIO

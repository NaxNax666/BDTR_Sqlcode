USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[WriteOffInv]    Script Date: 13.12.2020 8:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[WriteOffInv](@TTL char(50))
as
begin
delete from Inventory
where invName=@TTL
end
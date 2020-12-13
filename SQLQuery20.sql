USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddInv]    Script Date: 13.12.2020 8:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddInv](@InvName nvarchar(50), @PD date, @cst int, @PN nvarchar(50))
as
begin
insert into Inventory values (@InvName, @PD, @cst);
exec dbo.AddInvtoPrgrm @InvName, @PN ;
end;

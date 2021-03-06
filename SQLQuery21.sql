USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddInvtoPrgrm]    Script Date: 13.12.2020 8:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddInvtoPrgrm](@Invname nvarchar(50), @PN nvarchar(50))
as
begin 
declare @idi int, @idp int;
select @idi=id_inventory from Inventory where invName=@Invname;
select @idp=id_program from Program_list where Title=@PN;
insert into inv_Program_list values (@idp, @idi);
end
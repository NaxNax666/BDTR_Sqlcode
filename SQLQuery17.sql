USE [JOJOFit]
GO

/****** Object:  View [dbo].[Invlook]    Script Date: 13.12.2020 8:00:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Invlook]
as
select Title, invName from Program_List inner Join (select invName, id_Program from Inventory inner join Inv_Program_list
on Inventory.id_inventory=Inv_Program_list.id_inventory)as tst
on tst.id_Program = Program_list.id_Program
GO



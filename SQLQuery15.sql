USE [JOJOFit]
GO

/****** Object:  View [dbo].[Enable_program]    Script Date: 13.12.2020 8:00:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER view [dbo].[Enable_program] as

select Title,FIO,duration as 'ƒлина в мес€цах', Contract_sum as 'ќплачено'   from Program_list inner join 
(select FIO,Contract_sum, id_Program from Client inner join Contracts
on Client.id_client = Contracts.id_client) as tst
on Program_list.id_Program = tst.id_Program

GO



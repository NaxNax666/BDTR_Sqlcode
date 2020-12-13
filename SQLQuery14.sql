USE [JOJOFit]
GO

/****** Object:  View [dbo].[Avaliable_program]    Script Date: 13.12.2020 8:00:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER view [dbo].[Avaliable_program] 
as
select Title,FIO as 'Тренер',duration as 'Длина в месяцах', ttl as 'Полная стоимость программы'   from Staff inner join 
(select Title,duration, id_staff, cost_month*duration as ttl from Program_list inner join Staff_Program_list
on Program_list.id_Program = Staff_Program_list.id_Program) as tst
on Staff.id_staff = tst.id_staff

GO



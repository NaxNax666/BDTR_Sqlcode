USE [JOJOFit]
GO

/****** Object:  View [dbo].[GoodProg]    Script Date: 13.12.2020 8:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER view [dbo].[GoodProg]
as
select Title,FIO from Client inner join (Select title, id_client from Clients_likes inner join
(select title, id_Like from Program_list inner join Program_likes on Program_list.id_Program=Program_likes.id_Program) as tst
on Clients_likes.id_Like=tst.id_Like) as tst2
on Client.id_client = tst2.id_client

GO



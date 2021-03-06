USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddContract]    Script Date: 13.12.2020 8:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddContract](@FIO nvarchar(50), @prg_nm nvarchar(50), @dur int)
as
begin 
declare @cost int, @idc int, @idp int;
select @idp=id_program, @cost=cost_month from Program_list where Title=@prg_nm;
select @idc=id_client from Client where FIO=@FIO;
If @dur <=7
	set @cost = @cost*@dur*0.6;
else
set @cost = @cost*@dur;
insert into Contracts values (@idc, @idp, @cost);
end
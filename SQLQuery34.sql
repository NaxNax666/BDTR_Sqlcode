USE [JOJOFit]
GO
/****** Object:  UserDefinedFunction [dbo].[ProgSum]    Script Date: 13.12.2020 8:02:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[ProgSum] (@Title nvarchar(50))
RETURNS int
AS
BEGIN
    DECLARE @invcost int, @tr int, @d int, @res int;
	
	select @invcost = sum(Cost) from Inventory  where invName in (select invName from InvLook where Title = @Title);
	select @tr = sum(Salary) from Staff where FIO in (select [Тренер] from Avaliable_program where Title = @Title);
	select @d=[Длина в месяцах] from Avaliable_program where Title = @Title;
	if @invcost is null
	set @invcost = 0;
	if @tr is null
	set @tr = 0;
	if @d is null
	set @d = 0;
	set @res = @invcost+@tr*@d
	
    RETURN(@res);
END;
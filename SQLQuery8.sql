USE [A_08_18_05]
GO
/****** Object:  UserDefinedFunction [dbo].[func3]    Script Date: 09.11.2020 0:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[func3]()
RETURNS nvarchar(200)
AS
BEGIN
DECLARE @ser nvarchar(50), @suser nvarchar(50), @cuser nvarchar(50), @comp nvarchar(128)
SELECT @ser = @@SERVERNAME
Select @suser = SYSTEM_USER
select @cuser = CURRENT_USER


RETURN 'Вы вошли на '+@ser+' как ' + @suser + ' with '+@cuser+'permission на компьютере'  
END;

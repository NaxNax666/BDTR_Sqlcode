USE [JOJOFit]
GO
/****** Object:  UserDefinedFunction [dbo].[CLR_func]    Script Date: 13.12.2020 8:01:59 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER FUNCTION [dbo].[CLR_func](@phone [nvarchar](max))
RETURNS [nvarchar](5) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [CLRfunc].[CLRfunc.UserDefinedFunctions].[SqlFunction1]
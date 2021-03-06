USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddUserLike]    Script Date: 13.12.2020 8:01:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddUserLike](@Likename nvarchar(50), @FIO nvarchar(50)) as 
begin
DECLARE @ans int, @idc int;
	SELECT @ans = p.id_Like   
    FROM Likes_list p   
    WHERE p.Like_name = @Likename;
	SELECT @idc = p.id_client  
    FROM Client p   
    WHERE p.FIO = @FIO;
insert into Clients_likes values (@idc,@ans) 
end;
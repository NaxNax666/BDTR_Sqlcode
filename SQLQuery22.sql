USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddLike]    Script Date: 13.12.2020 8:01:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddLike](@Likename nvarchar(50), @id_Program int) as 
begin
DECLARE @ans int;
	SELECT @ans = p.id_Like   
    FROM Likes_list p   
    WHERE p.Like_name = @Likename;
insert into Likes_list values(@Likename);
insert into Program_likes values (@ans,@id_Program) 
end;
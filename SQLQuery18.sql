USE [JOJOFit]
GO
/****** Object:  StoredProcedure [dbo].[AddClient]    Script Date: 13.12.2020 8:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[AddClient] (@FIO nvarchar(50), @PhNum nvarchar(13), @Likename nvarchar(50)) 

as 
begin
DECLARE @idc  int, @ans int ;
SELECT @ans = d.id_Like   
    FROM Likes_list d   
    WHERE d.Like_name = @Likename;
insert into Client values(@FIO, @PhNum);	
    SELECT @idc = p.id_client   
    FROM Client p   
    WHERE p.FIO = @FIO ;


insert into Clients_likes values(@idc, @ans);
end

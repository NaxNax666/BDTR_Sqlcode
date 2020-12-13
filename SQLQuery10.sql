USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Program_likes]    Script Date: 13.12.2020 8:00:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Program_likes](
	[id_Program] [int] NULL,
	[id_Like] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Program_likes]  WITH CHECK ADD FOREIGN KEY([id_Like])
REFERENCES [dbo].[Likes_list] ([id_Like])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Program_likes]  WITH CHECK ADD FOREIGN KEY([id_Program])
REFERENCES [dbo].[Program_list] ([id_Program])
ON DELETE CASCADE
GO



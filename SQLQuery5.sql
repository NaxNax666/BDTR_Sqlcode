USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Clients_likes]    Script Date: 13.12.2020 7:59:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clients_likes](
	[id_client] [int] NULL,
	[id_Like] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Clients_likes]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Clients_likes]  WITH CHECK ADD FOREIGN KEY([id_Like])
REFERENCES [dbo].[Likes_list] ([id_Like])
ON DELETE CASCADE
GO



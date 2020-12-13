USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Staff_Program_list]    Script Date: 13.12.2020 8:00:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Staff_Program_list](
	[id_Program] [int] NULL,
	[id_staff] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Staff_Program_list]  WITH CHECK ADD FOREIGN KEY([id_Program])
REFERENCES [dbo].[Program_list] ([id_Program])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Staff_Program_list]  WITH CHECK ADD FOREIGN KEY([id_staff])
REFERENCES [dbo].[Staff] ([id_staff])
ON DELETE CASCADE
GO



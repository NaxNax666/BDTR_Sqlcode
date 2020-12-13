USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Inv_Program_list]    Script Date: 13.12.2020 7:59:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inv_Program_list](
	[id_Program] [int] NULL,
	[id_inventory] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Inv_Program_list]  WITH CHECK ADD FOREIGN KEY([id_inventory])
REFERENCES [dbo].[Inventory] ([id_inventory])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Inv_Program_list]  WITH CHECK ADD FOREIGN KEY([id_Program])
REFERENCES [dbo].[Program_list] ([id_Program])
ON DELETE CASCADE
GO



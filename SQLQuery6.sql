USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Contracts]    Script Date: 13.12.2020 7:59:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contracts](
	[id_Contract] [int] IDENTITY(1,1) NOT NULL,
	[id_client] [int] NULL,
	[id_Program] [int] NULL,
	[Contract_sum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([id_Program])
REFERENCES [dbo].[Program_list] ([id_Program])
ON DELETE CASCADE
GO



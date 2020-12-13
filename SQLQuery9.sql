USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Likes_list]    Script Date: 13.12.2020 7:59:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Likes_list](
	[id_Like] [int] IDENTITY(1,1) NOT NULL,
	[Like_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Like] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



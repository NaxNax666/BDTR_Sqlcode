USE [JOJOFit]
GO

/****** Object:  Table [dbo].[Program_list]    Script Date: 13.12.2020 8:00:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Program_list](
	[id_Program] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[duration] [int] NULL,
	[cost_month] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Program] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [MTWIN]
GO

/****** Object:  Table [dbo].[店家登錄]    Script Date: 05/28/2015 00:30:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[店家登錄](
	[登錄Id] [int] IDENTITY(1,1) NOT NULL,
	[是登錄店家資料] [bit] NOT NULL,
	[是廣告刊登] [bit] NOT NULL,
	[店家名稱] [nvarchar](50) NOT NULL,
	[聯絡人] [nvarchar](50) NOT NULL,
	[刊登電話] [varchar](12) NOT NULL,
	[聯絡電話] [nvarchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_店家登錄] PRIMARY KEY CLUSTERED 
(
	[登錄Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[店家登錄] ADD  CONSTRAINT [DF_店家登錄_是登錄店家資料]  DEFAULT ((0)) FOR [是登錄店家資料]
GO

ALTER TABLE [dbo].[店家登錄] ADD  CONSTRAINT [DF_店家登錄_是廣告刊登]  DEFAULT ((0)) FOR [是廣告刊登]
GO


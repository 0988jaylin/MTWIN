USE [MTWIN]
GO

/****** Object:  Table [dbo].[推薦店家]    Script Date: 05/28/2015 00:30:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[推薦店家](
	[店家Id] [int] IDENTITY(1,1) NOT NULL,
	[分類項Id] [int] NOT NULL,
	[名稱] [nvarchar](50) NOT NULL,
	[電話] [varchar](12) NOT NULL,
	[城市] [nvarchar](10) NOT NULL,
	[鄉鎮市區] [nvarchar](10) NOT NULL,
	[街道] [nvarchar](50) NOT NULL,
	[特色介紹] [nvarchar](4000) NOT NULL,
	[圖片檔位置] [nvarchar](500) NULL,
 CONSTRAINT [PK_推薦店家] PRIMARY KEY CLUSTERED 
(
	[店家Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [MTWIN]
/****** Object:  Index [IX_推薦店家_分類項Id]    Script Date: 05/28/2015 00:30:05 ******/
CREATE NONCLUSTERED INDEX [IX_推薦店家_分類項Id] ON [dbo].[推薦店家] 
(
	[分類項Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[推薦店家]  WITH CHECK ADD  CONSTRAINT [FK_推薦店家_分類項目] FOREIGN KEY([分類項Id])
REFERENCES [dbo].[分類項目] ([分類Id])
GO

ALTER TABLE [dbo].[推薦店家] CHECK CONSTRAINT [FK_推薦店家_分類項目]
GO


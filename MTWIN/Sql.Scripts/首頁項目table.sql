USE [MTWIN]
GO

/****** Object:  Table [dbo].[首頁項目]    Script Date: 05/28/2015 03:36:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[首頁項目](
	[首頁項目Id] [int] IDENTITY(1,1) NOT NULL,
	[項目類型] [nvarchar](50) NOT NULL,
	[圖檔替代名稱] [nvarchar](500) NULL,
	[圖檔提示文字] [nvarchar](500) NULL,
	[圖片檔位置] [nvarchar](1000) NULL,
	[連結網址] [nvarchar](1000) NULL,
	[總曝光數] [int] NOT NULL,
	[總點擊次數] [int] NOT NULL,
	[建立者] [nvarchar](50) NULL,
	[建立時間] [datetime] NOT NULL,
	[修改者] [nvarchar](50) NULL,
	[修改時間] [datetime] NOT NULL,
 CONSTRAINT [PK_首頁項目] PRIMARY KEY CLUSTERED 
(
	[首頁項目Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'無法顯示圖時(破圖)會出現的文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'首頁項目', @level2type=N'COLUMN',@level2name=N'圖檔替代名稱'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'圖檔title/tooltip 滑鼠移至圖檔上方時會顯示的提示文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'首頁項目', @level2type=N'COLUMN',@level2name=N'圖檔提示文字'
GO

ALTER TABLE [dbo].[首頁項目] ADD  CONSTRAINT [DF_首頁項目_總曝光數]  DEFAULT ((0)) FOR [總曝光數]
GO

ALTER TABLE [dbo].[首頁項目] ADD  CONSTRAINT [DF_首頁項目_總點擊次數]  DEFAULT ((0)) FOR [總點擊次數]
GO

ALTER TABLE [dbo].[首頁項目] ADD  CONSTRAINT [DF_首頁項目_建立時間]  DEFAULT (getdate()) FOR [建立時間]
GO

ALTER TABLE [dbo].[首頁項目] ADD  CONSTRAINT [DF_首頁項目_修改時間]  DEFAULT (getdate()) FOR [修改時間]
GO


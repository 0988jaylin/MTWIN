USE [MTWIN]
GO

/****** Object:  Table [dbo].[店家登錄]    Script Date: 05/28/2015 03:36:29 ******/
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
	[已詳閱個資聲明] [bit] NOT NULL,
	[建立時間] [datetime] NOT NULL,
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

ALTER TABLE [dbo].[店家登錄] ADD  CONSTRAINT [DF_店家登錄_已詳閱個資聲明]  DEFAULT ((1)) FOR [已詳閱個資聲明]
GO

ALTER TABLE [dbo].[店家登錄] ADD  CONSTRAINT [DF_店家登錄_建立時間]  DEFAULT (getdate()) FOR [建立時間]
GO


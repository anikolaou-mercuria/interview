SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[child_indexes](
	[country_id] [nvarchar](200) NULL,
	[index_score] [float] NULL,
	[outcome_score] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

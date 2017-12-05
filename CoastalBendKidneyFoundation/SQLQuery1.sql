/****** Object:  Table [dbo].[Comments]    Script Date: 12/4/2017 9:00:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Comments](
	[Comment_Name] [nvarchar](50) NOT NULL,
	[Comment] [nvarchar](1000) NOT NULL
) ON [PRIMARY]
GO
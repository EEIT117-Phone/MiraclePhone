CREATE TABLE [dbo].[HELLO](
	[NAME] [nvarchar](10) NULL,
	[EN_NAME] [nvarchar](10) NULL,
	[AGE] [int] NULL,
	[type] [nvarchar](20) NULL
) ON [PRIMARY]
GO
INSERT INTO [dbo].[HELLO]
           ([NAME]
           ,[EN_NAME]
           ,[AGE]
           ,[type])
     VALUES
           ('阿汝','Catherine',26,'HELLO_WOMAN')
GO
INSERT INTO [dbo].[HELLO]
           ([NAME]
           ,[EN_NAME]
           ,[AGE]
           ,[type])
     VALUES
           ('阿諺','Ben',31,'HELLO_MAN')
GO
INSERT INTO [dbo].[HELLO]
           ([NAME]
           ,[EN_NAME]
           ,[AGE]
           ,[type])
     VALUES
           ('阿庭','dirty',22,'HELLO_WOMAN')
GO
INSERT INTO [dbo].[HELLO]
           ([NAME]
           ,[EN_NAME]
           ,[AGE]
           ,[type])
     VALUES
           ('阿文','some',18,'HELLO_MAN')
GO
INSERT INTO [dbo].[HELLO]
           ([NAME]
           ,[EN_NAME]
           ,[AGE]
           ,[type])
     VALUES
           ('阿米','some2',24,'HELLO_MAN')
GO
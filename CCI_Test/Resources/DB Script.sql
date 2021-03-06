USE [CCI]
GO
/****** Object:  Table [dbo].[ContactMethod]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactMethod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoryMap]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMap](
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[SubCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddressLine1] [varchar](255) NULL,
	[AddressLine2] [varchar](255) NULL,
	[City] [varchar](40) NULL,
	[State] [varchar](2) NULL,
	[ZIP] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreditorType]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditorType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreditorHours]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditorHours](
	[CreditorId] [int] IDENTITY(1,1) NOT NULL,
	[MonStart] [varchar](10) NULL,
	[MonClose] [varchar](10) NULL,
	[TueStart] [varchar](10) NULL,
	[TueClose] [varchar](10) NULL,
	[WedStart] [varchar](10) NULL,
	[WedClose] [varchar](10) NULL,
	[ThuStart] [varchar](10) NULL,
	[ThuClose] [varchar](10) NULL,
	[FriStart] [varchar](10) NULL,
	[FriClose] [varchar](10) NULL,
	[SatStart] [varchar](10) NULL,
	[SatClose] [varchar](10) NULL,
	[SunStart] [varchar](10) NULL,
	[SunClose] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[CreditorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CreditorContactMethods]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditorContactMethods](
	[CreditorId] [int] IDENTITY(1,1) NOT NULL,
	[AuthRequired] [bit] NULL,
	[AutomatedPhone] [varchar](10) NULL,
	[MainPhone] [varchar](10) NULL,
	[MainPhoneExt] [varchar](10) NULL,
	[Phone1] [varchar](10) NULL,
	[Phone1Ext] [varchar](10) NULL,
	[Phone2] [varchar](10) NULL,
	[Phone2Ext] [varchar](10) NULL,
	[Phone3] [varchar](10) NULL,
	[Phone3Ext] [varchar](10) NULL,
	[Fax1] [varchar](10) NULL,
	[Fax2] [varchar](10) NULL,
	[TurnTime1] [varchar](10) NULL,
	[TurnTime2] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[CreditorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Creditor]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Creditor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[AKA] [varchar](50) NULL,
	[EFXCode] [varchar](12) NULL,
	[XPNCode] [varchar](12) NULL,
	[TUCCode] [varchar](12) NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[MOP] [varchar](1) NULL,
	[City] [varchar](30) NULL,
	[State] [varchar](2) NULL,
	[Department] [varchar](50) NULL,
	[DefaultContactMethodId] [int] NULL,
	[IsActive] [bit] NULL,
	[WebPage] [varchar](255) NULL,
	[EmailAddress] [varchar](255) NULL,
	[Fee] [money] NULL,
	[FeeNotes] [varchar](80) NULL,
	[MailingAddressId] [int] NULL,
	[Notes] [varchar](max) NULL,
	[TipsAndTricks] [varchar](max) NULL,
	[STPScript] [varchar](max) NULL,
	[VerbalScript] [varchar](max) NULL,
	[CreateTS] [datetime] NOT NULL,
	[LastModifiedTS] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[CRD_SearchCreditors]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Pete Thusrton
-- Create date: 8/18/2012
-- Description:	To get CCI Creditor Search Results
-- =============================================
CREATE PROCEDURE [dbo].[CRD_SearchCreditors] 
		@iCreditorTypeEntry int = 0
	,	@cSubCodeEntry varchar(20)
	,	@cCreditorNameEntry	varchar(255)
AS
BEGIN
	SET NOCOUNT ON
		
	SELECT	@cSubCodeEntry = '%' + @cSubCodeEntry + '%'
		,	@cCreditorNameEntry = '%' + @cCreditorNameEntry + '%'

	IF @iCreditorTypeEntry = '0' 
		BEGIN
			SELECT	c.Id
				,	ct.Name as 'Type'
				,	c.Version
				,	c.Name
				,	c.EFXCode
				,	c.XPNCode
				,	c.TUCCode
				,	c.CreateTS
			FROM	Creditor c 
			JOIN	CreditorType ct
				ON	c.TypeId = ct.Id
			WHERE	(ISNULL(XPNCode, '') LIKE @cSubCodeEntry
					 OR ISNULL(EFXCode, '') LIKE @cSubCodeEntry
					 OR ISNULL(TUCCode, '') LIKE @cSubCodeEntry)
			AND		c.Name LIKE @cCreditorNameEntry
			ORDER BY c.Name
		END
	ELSE BEGIN
			SELECT	c.Id
				,	ct.Name as 'Type'
				,	c.Version
				,	c.Name
				,	c.EFXCode
				,	c.XPNCode
				,	c.TUCCode
				,	c.CreateTS
			FROM	Creditor c 
			JOIN	CreditorType ct
				ON	c.TypeId = ct.Id
			WHERE	c.TypeId = @iCreditorTypeEntry
			AND		(ISNULL(XPNCode, '') LIKE @cSubCodeEntry
					 OR ISNULL(EFXCode, '') LIKE @cSubCodeEntry
					 OR ISNULL(TUCCode, '') LIKE @cSubCodeEntry)
			AND		c.Name LIKE @cCreditorNameEntry
			ORDER BY c.Name
		END
END
GO
/****** Object:  StoredProcedure [dbo].[CRD_GetCreditorById]    Script Date: 08/30/2012 16:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Pete Thurston
-- Create date: 08/22/2012
-- Description:	Gets the full definition of a single CCI Record by Id
-- =============================================
CREATE PROCEDURE [dbo].[CRD_GetCreditorById] 
	@iCreditorId int = 1
AS
BEGIN
	SET NOCOUNT ON;

    SELECT	c.Id as 'CreditorId'
		,	c.Version
		,	c.TypeId
		,	ct.Name as 'TypeName'
		,	c.Name as 'CreditorName'
		,	c.AKA
		,	c.EFXCode
		,	c.XPNCode
		,	c.TUCCode
		,	c.CategoryId
		,	cat.Name as 'CategoryName'
		,	c.SubCategoryId
		,	sc.Name as 'SubCategoryName'
		,	c.MOP
		,	c.City
		,	c.State
		,	c.Department
		,	c.DefaultContactMethodId
		,	cm.Name as 'DefaultContactMethodName'
		,	c.IsActive
		,	c.WebPage
		,	c.EmailAddress
		,	c.Fee
		,	c.FeeNotes
		,	c.MailingAddressId
		,	a.AddressLine1 as 'MailingAddressLine1'
		,	a.AddressLine2 as 'MailingAddressLine2'
		,	a.City as 'MailingCity'
		,	a.State as 'MailingState'
		,	a.ZIP as 'MailingZIP'
		,	c.Notes
		,	c.TipsAndTricks
		,	c.STPScript
		,	c.VerbalScript
		,	ccm.AuthRequired
		,	ccm.AutomatedPhone
		,	ccm.MainPhone
		,	ccm.MainPhoneExt
		,	ccm.Phone1
		,	ccm.Phone1Ext
		,	ccm.Phone2
		,	ccm.Phone2Ext
		,	ccm.Phone3
		,	ccm.Phone3Ext
		,	ccm.Fax1
		,	ccm.Fax2
		,	ccm.TurnTime1
		,	ccm.TurnTime2
		,	ch.MonStart
		,	ch.MonClose
		,	ch.TueStart
		,	ch.TueClose
		,	ch.WedStart
		,	ch.WedClose
		,	ch.ThuStart
		,	ch.ThuClose
		,	ch.FriStart
		,	ch.FriClose
		,	ch.SatStart
		,	ch.SatClose
		,	ch.SunStart
		,	ch.SunClose
		,	c.CreateTS
		,	c.LastModifiedTS
	FROM	CCI.dbo.Creditor c
	JOIN	CCI.dbo.CreditorType ct
		ON	c.TypeId = ct.Id
	JOIN	CCI.dbo.ContactMethod cm
		on	c.DefaultContactMethodId = cm.Id
	LEFT JOIN	CCI.dbo.Category cat
		ON	c.CategoryId = cat.Id
	LEFT JOIN	CCI.dbo.SubCategory sc
		ON	c.SubCategoryId = sc.Id
	LEFT JOIN	CCI.dbo.CreditorContactMethods ccm
		ON	c.Id = ccm.CreditorId
	LEFT JOIN	CCI.dbo.CreditorHours ch
		ON	c.Id = ch.CreditorId
	LEFT JOIN	Address a
		ON	c.MailingAddressId = a.Id
	WHERE c.Id = @iCreditorId
END
GO

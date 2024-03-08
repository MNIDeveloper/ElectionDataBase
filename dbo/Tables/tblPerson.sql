CREATE TABLE [dbo].[tblPerson] (
    [PersonID]       INT           IDENTITY (100000, 1) NOT NULL,
    [FirstName]      VARCHAR (50)  NOT NULL,
    [MiddleName]     VARCHAR (50)  CONSTRAINT [DF_tblPerson_MiddleName] DEFAULT ('none ') NOT NULL,
    [LastName]       VARCHAR (50)  NOT NULL,
    [Gender]         VARCHAR (50)  NULL,
    [DOB]            DATETIME      NOT NULL,
    [Alias]          VARCHAR (50)  NULL,
    [Address]        INT           NULL,
    [RegDate]        DATETIME      NOT NULL,
    [vFlag]          BIT           NOT NULL,
    [Pin]            VARCHAR (50)  NULL,
    [SocialSecurity] INT           NULL,
    [PersonImage]    VARCHAR (MAX) CONSTRAINT [DF_tblPerson_PersonImage] DEFAULT ('none') NOT NULL,
    [QrCode]         VARCHAR (MAX) CONSTRAINT [DF_tblPerson_QrCode] DEFAULT ('none') NOT NULL,
    CONSTRAINT [PK_tblPerson] PRIMARY KEY CLUSTERED ([PersonID] ASC)
);


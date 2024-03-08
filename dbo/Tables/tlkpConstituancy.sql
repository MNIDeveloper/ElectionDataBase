CREATE TABLE [dbo].[tlkpConstituancy] (
    [ConstituancyID]   INT          IDENTITY (100, 1) NOT NULL,
    [ConstituancyName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tlkpConstituancy] PRIMARY KEY CLUSTERED ([ConstituancyID] ASC)
);


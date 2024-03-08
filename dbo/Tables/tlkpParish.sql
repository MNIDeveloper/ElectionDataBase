CREATE TABLE [dbo].[tlkpParish] (
    [ParishID]   INT          IDENTITY (1000, 1) NOT NULL,
    [ParishName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tlkpParish] PRIMARY KEY CLUSTERED ([ParishID] ASC)
);


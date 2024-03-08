CREATE TABLE [dbo].[tlkpVillage] (
    [VillageID]   INT          IDENTITY (1000, 1) NOT NULL,
    [VillageName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tlkpVillage] PRIMARY KEY CLUSTERED ([VillageID] ASC)
);


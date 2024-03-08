CREATE TABLE [dbo].[tlkpParty] (
    [PartyID]   INT          IDENTITY (1000, 1) NOT NULL,
    [PartyName] VARCHAR (50) NULL,
    CONSTRAINT [PK_tlkpParty] PRIMARY KEY CLUSTERED ([PartyID] ASC)
);


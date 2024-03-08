CREATE TABLE [dbo].[tblCandidate] (
    [CandidateID]       INT           IDENTITY (1000, 1) NOT NULL,
    [PersonID]          INT           NOT NULL,
    [PartyID]           INT           NOT NULL,
    [Constituancy]      INT           NOT NULL,
    [CandidateImage]    VARCHAR (MAX) NOT NULL,
    [CandidateImageWeb] VARCHAR (MAX) NOT NULL,
    [IsCurrent]         BIT           NOT NULL,
    CONSTRAINT [PK_tblCandidate] PRIMARY KEY CLUSTERED ([CandidateID] ASC)
);


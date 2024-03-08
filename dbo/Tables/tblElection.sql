CREATE TABLE [dbo].[tblElection] (
    [ID]           INT      IDENTITY (1, 1) NOT NULL,
    [VotersID]     INT      NOT NULL,
    [ElectionDate] DATETIME NOT NULL,
    [Constituancy] INT      NOT NULL,
    [Candidate1]   INT      NOT NULL,
    [Candidate2]   INT      NOT NULL,
    [Candidate3]   INT      NOT NULL,
    [Candidate4]   INT      NOT NULL,
    [Candidate5]   INT      NOT NULL,
    [Candidate6]   INT      NOT NULL,
    [Candidate7]   INT      NOT NULL,
    [Candidate8]   INT      NOT NULL,
    [Candidate9]   INT      NOT NULL,
    CONSTRAINT [PK_tblElection] PRIMARY KEY CLUSTERED ([ID] ASC)
);


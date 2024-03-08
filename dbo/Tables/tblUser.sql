CREATE TABLE [dbo].[tblUser] (
    [UserID]   INT          IDENTITY (1000, 1) NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    [Password] VARCHAR (50) NOT NULL,
    [Fname]    VARCHAR (50) NOT NULL,
    [Lname]    VARCHAR (50) NOT NULL,
    [Position] INT          NOT NULL,
    [Flag]     BIT          NOT NULL,
    CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED ([UserID] ASC)
);


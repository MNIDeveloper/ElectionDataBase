CREATE TABLE [dbo].[tblAddress] (
    [AddressID]    INT          IDENTITY (1000, 1) NOT NULL,
    [Street]       VARCHAR (50) NULL,
    [Village]      INT          NOT NULL,
    [Parish]       INT          NOT NULL,
    [Postcode]     VARCHAR (50) NULL,
    [Constituancy] INT          CONSTRAINT [DF_Address_Constituancy] DEFAULT ((0)) NOT NULL,
    [IsCurrent]    BIT          CONSTRAINT [DF_Address_IsCurrent] DEFAULT ((0)) NOT NULL,
    [PersonID]     INT          NOT NULL,
    [DateMoved]    DATETIME     NULL,
    CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED ([AddressID] ASC)
);


-- =============================================
-- Author:		George O'Brien
-- Create date: 03-Mar-2024
-- Description:	Unlocks all the people on the voter's list to start the election
-- =============================================
CREATE PROCEDURE [dbo].[StartElection]
	
AS
BEGIN
	Update tblPerson set vFlag = '0'
END

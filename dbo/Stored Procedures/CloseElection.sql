-- =============================================
-- Author:		George O'Brien
-- Create date: 03-Mar-2024
-- Description:	Locks all the people on the voter's list to stop the election
-- =============================================
CREATE PROCEDURE [dbo].[CloseElection]
	
AS
BEGIN
	Update tblPerson set vFlag = '1'
END

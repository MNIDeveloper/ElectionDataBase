-- =============================================
-- Author:		George O'Brien
-- Create date: 25-01-2024
-- Description:	Stored Produre to tally up votes on Election Day
-- =============================================
CREATE PROCEDURE [dbo].[ElectionTally] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
Declare @StartDate DateTime
Declare @EndDate DateTime
Declare @startTime Time = '08:00:00.0000000'
Declare @EndTime Time = '18:00:00.0000000'

    -- Insert statements for procedure here
	SELECT @StartDate = Cast( Convert (Date, GetDate()) as datetime) + Cast(@startTime as datetime)
	SELECT @EndDate = Cast( Convert (Date, GetDate()) as datetime) + Cast(@EndTime as datetime)

Select CandidateID,PartyName ,FirstName , LastName,0 as Votes
into #tblTally
from tblCandidate c
join tblPerson  p
on c.PersonID = p.PersonID
join tlkpParty m
on c.PartyID = m.PartyID

select CandidateID ,Count(Candidate1) as Votes
into #tblCandidate1
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate1
group by CandidateID


select CandidateID ,Count(Candidate2) as Votes
into #tblCandidate2
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate2 
group by CandidateID

select CandidateID ,Count(Candidate3) as Votes
into #tblCandidate3
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate3 
group by CandidateID

select CandidateID ,Count(Candidate4) as Votes
into #tblCandidate4
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate4 
group by CandidateID

select CandidateID ,Count(Candidate5) as Votes
into #tblCandidate5
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate5 
group by CandidateID

select CandidateID ,Count(Candidate6) as Votes
into #tblCandidate6
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate6 
group by CandidateID

select CandidateID ,Count(Candidate7) as Votes
into #tblCandidate7
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate7 
group by CandidateID

select CandidateID ,Count(Candidate8) as Votes
into #tblCandidate8
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate8
group by CandidateID

select CandidateID ,Count(Candidate9) as Votes
into #tblCandidate9
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate9 
group by CandidateID

Update #tblTally set Votes = t.Votes + a.Votes 
from #tblTally t
join #tblCandidate1 a
on t.CandidateID = a.CandidateID

Update #tblTally set Votes =  t.Votes + b.Votes 
from #tblTally t
join #tblCandidate2 b
on t.CandidateID = b.CandidateID

Update #tblTally set Votes =  t.Votes + c.Votes 
from #tblTally t
join #tblCandidate3 c
on t.CandidateID = c.CandidateID

Update #tblTally set Votes =  t.Votes + d.Votes 
from #tblTally t
join #tblCandidate4 d
on t.CandidateID = d.CandidateID

Update #tblTally set Votes =  t.Votes + e.Votes 
from #tblTally t
join #tblCandidate5 e
on t.CandidateID = e.CandidateID

Update #tblTally set Votes =  t.Votes + f.Votes 
from #tblTally t
join #tblCandidate6 f
on t.CandidateID = f.CandidateID

Update #tblTally set Votes =  t.Votes + g.Votes 
from #tblTally t
join #tblCandidate7 g
on t.CandidateID = g.CandidateID

Update #tblTally set Votes =  t.Votes + h.Votes 
from #tblTally t
join #tblCandidate8 h
on t.CandidateID = h.CandidateID

Update #tblTally set Votes =  t.Votes + i.Votes 
from #tblTally t
join #tblCandidate9 i
on t.CandidateID = i.CandidateID

select * from #tblTally
order by Votes desc




END
-- =============================================
-- Author:		George O'Brien
-- Create date: 28-01-2024
-- Description:	CrossTab for Party By Villages Election Results
-- =============================================
CREATE PROCEDURE [dbo].[PartyByVillages] 
	
	
AS

BEGIN

Select CandidateID,PartyName ,FirstName , LastName,0 as Votes
into #tblTally
from tblCandidate c
join tblPerson  p
on c.PersonID = p.PersonID
join tlkpParty m
on c.PartyID = m.PartyID

Select distinct e.VotersID,v.VillageName
into #tblTallyPerson
from tblElection e
join tblPerson p
on e.VotersID = p.PersonID
join tblAddress a 
on p.PersonID = a.PersonID
join tlkpVillage v
on a.Village = v.VillageID


select VotersID,PartyName,FirstName,LastName,Count(Candidate1) as Votes
into #tblCandidate1
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate1
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate2) as Votes
into #tblCandidate2
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate2
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate3) as Votes
into #tblCandidate3
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate3
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate4) as Votes
into #tblCandidate4
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate4
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate5) as Votes
into #tblCandidate5
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate5
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate6) as Votes
into #tblCandidate6
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate6
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate7) as Votes
into #tblCandidate7
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate7
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate8) as Votes
into #tblCandidate8
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate8
group by CandidateID,VotersID,PartyName,FirstName,LastName

select VotersID,PartyName,FirstName,LastName,Count(Candidate9) as Votes
into #tblCandidate9
from tblElection e
join #tblTally t
on t.CandidateID = e.Candidate9
group by CandidateID,VotersID,PartyName,FirstName,LastName

SELECT * INTO #tblCandidate FROM
(select * from #tblCandidate1
Union All
select * from #tblCandidate2
Union All
select * from #tblCandidate3
Union All
select * from #tblCandidate4
Union All
select * from #tblCandidate5
Union All
select * from #tblCandidate6
Union All
select * from #tblCandidate7
Union All
select * from #tblCandidate8
Union All
select * from #tblCandidate9) as #TMPUnion


select PartyName,VillageName,Votes 
into #tblMaster
from #tblCandidate c
join #tblTallyPerson p
on c.VotersID = p.VotersID

select VillageName,isnull([Independant Candidate],0) as [IndependentCandidate],isnull([MCAP],0) as MCAP,isnull([PDM],0) as PDM, isnull([MULP],0) as MULP ,(isnull([Independant Candidate],0)+isnull([MCAP],0)+isnull([PDM],0)+ isnull([MULP],0)) as Total
from
(Select * from #tblMaster)
as test
pivot
(
Sum(Votes)
for PartyName
in ([Independant Candidate],[MCAP],[PDM],[MULP],Total)
) as pvt

END


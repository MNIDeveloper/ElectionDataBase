-- =============================================
-- Author:		George O'Brien
-- Create date: 06-Feb-2024
-- Description:	Generates the Election Summary Report
-- =============================================
CREATE PROCEDURE ElectionSummary 
	
AS
BEGIN
	select 0 as RegVoter,
       0 as VoterTurnOut,
	   0 as Candidate1,
	   0 as Candidate2,
	   0 as Candidate3,
	   0 as Candidate4,
	   0 as Candidate5,
	   0 as Candidate6,
	   0 as Candidate7,
	   0 as Candidate8,
	   0 as Candidate9
	   Into
	   #tblSummary

select count(PersonID) as RegCount
into #RegVoter
from tblPerson

select distinct VotersID as Voters
into #VoterTurnOutList
from tblElection

select count(Voters) as VoterCount
into #VoterTurnOutCount
from #VoterTurnOutList

select count(case when candidate1 >0 then 1 end)  as [CandidateBallot1] 
into #tblCandidate1
from tblElection

select count(case when candidate2 >0 then 1 end)  as [CandidateBallot2] 
into #tblCandidate2
from tblElection

select count(case when candidate3 >0 then 1 end)  as [CandidateBallot3] 
into #tblCandidate3
from tblElection

select count(case when candidate4 >0 then 1 end)  as [CandidateBallot4] 
into #tblCandidate4
from tblElection

select count(case when candidate5 >0 then 1 end)  as [CandidateBallot5] 
into #tblCandidate5
from tblElection

select count(case when candidate6 >0 then 1 end)  as [CandidateBallot6] 
into #tblCandidate6
from tblElection

select count(case when candidate7 >0 then 1 end)  as [CandidateBallot7] 
into #tblCandidate7
from tblElection

select count(case when candidate8 >0 then 1 end)  as [CandidateBallot8] 
into #tblCandidate8
from tblElection

select count(case when candidate9 >0 then 1 end)  as [CandidateBallot9] 
into #tblCandidate9
from tblElection

Update #tblSummary set RegVoter = RegCount from #RegVoter
Update #tblSummary set VoterTurnOut = VoterCount from #VoterTurnOutCount
Update #tblSummary set Candidate1 = CandidateBallot1 from #tblCandidate1
Update #tblSummary set Candidate2 = CandidateBallot2 from #tblCandidate2
Update #tblSummary set Candidate3 = CandidateBallot3 from #tblCandidate3
Update #tblSummary set Candidate4 = CandidateBallot4 from #tblCandidate4
Update #tblSummary set Candidate5 = CandidateBallot5 from #tblCandidate5
Update #tblSummary set Candidate6 = CandidateBallot6 from #tblCandidate6
Update #tblSummary set Candidate7 = CandidateBallot7 from #tblCandidate7
Update #tblSummary set Candidate8 = CandidateBallot8 from #tblCandidate8
Update #tblSummary set Candidate9 = CandidateBallot9 from #tblCandidate9

select * from #tblSummary
END

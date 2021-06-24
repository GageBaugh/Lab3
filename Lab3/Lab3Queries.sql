-- Total Budget of all Projects
select sum(p.budget) as Budget_Sum from Projects p;

-- Professors that manage projects
select distinct p.principal_inv from Projects p;

-- Professors that dont manage projects
select distinct p.pssn from Professors p where p.pssn not in (select pj.principal_inv from Projects pj);

-- Which student work on 3 or more projects
select r.research_assistant from Research_Assistants r group by research_assistant having count(*)>=3;

-- Professors that work in each department
select p.dept_num, p.pssn from Professor_Department p;
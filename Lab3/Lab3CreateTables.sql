drop table if exists Advisors;
drop table if exists Research_Assistants ;
drop table if exists Professor_Department;
drop table if exists Co_Investigators;
drop table if exists Graduate_Students;
drop table if exists Departments;
drop table if exists Projects;
drop table if exists Professors;

-- Create tables
create table Professors(
	pssn int not null,
	rank varchar(19),
	research_specialty varchar(20),
	dob date, --Same as graduate students
	name varchar(20),
	primary key(pssn));

create table Projects(
	project_num int not null,
	sponsor_name varchar(20),
	starting_date date,
	ending_date date,
	budget float,
	principal_inv int not null,
	primary key(project_num),
	foreign key(principal_inv) references Professors(pssn)
		on update cascade);

create table Departments(
	dept_num int not null,
	dept_name varchar(20),
	main_office varchar(20),
	chairman int not null,
	primary key(dept_num),
	foreign key(chairman) references Professors(pssn)
		on update cascade);

create table Graduate_Students(
	gssn int not null,
	dob date, --Changed to date of birth because age has to be derived from dob anyway
	name varchar(20),
	degree_program varchar(20),
	major int not null,
	primary key(gssn),
	foreign key(major) references Departments(dept_num)
		on update cascade);

create table Research_Assistants(
	project_num int not null,
	research_assistant int not null,
	supervisor int not null,
	foreign key(project_num) references Projects(project_num)
		on update cascade
		on delete cascade,
	foreign key(research_assistant) references Graduate_Students(gssn),
	foreign key(supervisor) references Professors(pssn));

create table Co_Investigators(
	project_num int not null,
	co_inv int not null,
	foreign key(project_num) references Projects(project_num)
		on update cascade
		on delete cascade,
	foreign key(co_inv) references Professors(pssn));

--Tracks the percent of a professors time in each dept and which depts they work in
create table Professor_Department(
	dept_num int not null,
	pssn int not null,
	hours_spent_per_day float not null, --Did this so you can calculate the percent when asked
	foreign key(dept_num) references Departments(dept_num)
		on update cascade
		on delete cascade,
	foreign key(pssn) references Professors(pssn));

create table Advisors(
	advised int not null,
	advised_dob date not null,
	advisor int not null,
	advisor_dob date not null,
	foreign key(advised) references Graduate_Students(gssn),
	foreign key(advisor) references Graduate_Students(gssn));

-- Constraint
alter table Advisors
add constraint elder_advisor_check check (advised_dob > advisor_dob);

alter table Projects
add constraint start_before_end check (starting_date < ending_date);

alter table Professor_Department
add constraint work_day_check check (hours_spent_per_day < 24.0);

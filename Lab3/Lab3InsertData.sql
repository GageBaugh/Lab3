-- Professor Data (pssn, rank, research specialty, dob, name)
insert into Professors values (1, 'Professor', 'Math', '1969-07-10', 'Bob Hates');
insert into Professors values (2, 'Professor', 'English', '1959-04-15', 'Elong Musket');
insert into Professors values (3, 'Professor', 'CS', '1980-03-20', 'Jeff Besos');
insert into Professors values (4, 'Professor', 'Science', '1974-11-29', 'Greave Hobs');
insert into Professors values (5, 'Professor', 'Art', '1978-12-25', 'Mark Suckerburg');

-- Project Data (project num, sponsor name, starting date, ending date, budget, principal inv)
insert into Projects values (1, 'Macrosoft', '2020-12-15', '2021-06-25', 4200.69, 1);
insert into Projects values (2, 'Orange', '2021-03-01', '2021-12-23', 7000.30, 4);
insert into Projects values (3, 'Amazoon', '2021-05-15', '2021-09-13', 6900.70, 3);
insert into Projects values (4, 'Nikola', '2021-07-16', '2021-09-30', 10000.54, 2);
insert into Projects values (5, 'Orange', '2020-08-29', '2021-08-29', 3000.78, 4);

-- Department Data (dept num, dept name, main office, chairman)
insert into Departments values (1, 'Math', 'Here', 1);
insert into Departments values (2, 'Art', 'Close', 5);
insert into Departments values (3, 'English', 'Right', 2);
insert into Departments values (4, 'Science', 'Left', 4);
insert into Departments values (5, 'CS', 'IDK', 3);

-- Graduate Student Data (gssn, dob, name, degree program, major)
insert into Graduate_Students values (1, '2000-08-29', 'Micheal Peeves','Math', 1);
insert into Graduate_Students values (2, '1997-05-24', 'Mackie Jan','Art', 2);
insert into Graduate_Students values (3, '1998-03-17', 'Ben Dover','Math', 1);
insert into Graduate_Students values (4, '1996-11-06', 'Froyd Slip', 'Science', 4);
insert into Graduate_Students values (5, '2001-10-07', 'Edd Comp', 'CS', 5);
insert into Graduate_Students values (6, '1995-06-01', 'Pan One', 'Cs', 5);
insert into Graduate_Students values (7, '2000-01-01', 'Jonathon Schlatt', 'English', 3);

-- Research Assitants Data (project num, research assistant, supervisor)
insert into Research_Assistants values (1, 3, 4);
insert into Research_Assistants values (1, 2, 2);
insert into Research_Assistants values (2, 6, 5);
insert into Research_Assistants values (2, 1, 1);
insert into Research_Assistants values (3, 7, 3);
insert into Research_Assistants values (3, 1, 2);
insert into Research_Assistants values (4, 1, 5);
insert into Research_Assistants values (4, 4, 3);
insert into Research_Assistants values (5, 5, 4);

-- Co Investigator Data (project num, co inv)
insert into Co_Investigators values (1, 3);
insert into Co_Investigators values (1, 5);
insert into Co_Investigators values (2, 4);
insert into Co_Investigators values (3, 2);
insert into Co_Investigators values (4, 1);
insert into Co_Investigators values (5, 1);
insert into Co_Investigators values (5, 5);

-- Professor Department Data (dept num, pssn, hours spent)
insert into Professor_Department values (1, 3, 7.5);
insert into Professor_Department values (1, 2, 9.5);
insert into Professor_Department values (2, 1, 6.5);
insert into Professor_Department values (3, 1, 7.0);
insert into Professor_Department values (4, 4, 10.0);
insert into Professor_Department values (5, 5, 9.0);
insert into Professor_Department values (5, 3, 3.5);

-- Advisor (advised, advised_dob, advisor, advisor_dob)
insert into Advisors values (1, '2000-08-29', 7, '2000-01-01');
insert into Advisors values (2, '1997-05-24', 6, '1995-06-01');
insert into Advisors values (3, '1998-03-17', 4, '1996-11-06');
insert into Advisors values (4, '1996-11-06', 6, '1995-06-01');
insert into Advisors values (5, '2001-10-07', 1, '2000-08-29');
insert into Advisors values (7, '2000-01-01', 3, '1998-03-17');
-- 1. Creating Tables --
CREATE TABLE Cohort (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    Name VARCHAR(55) NOT NULL,
);

CREATE TABLE Instructor (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName varchar(55) NOT NULL,
    LastName varchar(55) NOT NULL,
    SlackHandle varchar(55) NOT NULL,
    Speciality varchar(55) NOT NULL,
    CohortId INTEGER NOT NULL,
    CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE Student (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName varchar(55) NOT NULL,
    LastName varchar(55) NOT NULL,
    SlackHandle varchar(55) NOT NULL,
    CohortId INTEGER NOT NULL,
    CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);
CREATE TABLE Exercise (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    Name VARCHAR(55) NOT NULL,
    Language VARCHAR(55) NOT NULL,
);

CREATE TABLE StudentExercise (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    StudentId INTEGER NOT NULL,
    ExerciseId INTEGER NOT NULL,
    CONSTRAINT FK_StudentExercise_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
    CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)

)

-- 2. Creating Data --

--COHORTS--
INSERT INTO Cohort (Name) VALUES ('Cohort 35');
INSERT INTO Cohort (Name) VALUES ('Cohort 36');
INSERT INTO Cohort (Name) VALUES ('Cohort 37');

--STUDENTS--
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Nick', 'Wessel', 'nick.wessel', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('David', 'Cornish', 'david.cornish', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Seth', 'Oakly', 'seth.oakly', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Phil', 'Grismor', 'phil.grismor', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Mark', 'McCann', 'mark.mccann', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Fortu', 'Mugnano', 'fortu.mugnano', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Stephan', 'Walgreens', 'stephan.walgreens', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Heidi', 'Smith', 'gradi.smith', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Sage', 'Kline', 'sage.kline', 1);

--INSTRUCTORS--
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Adam', 'Shreffer', 'adam.shreffer', 'knowlogment', 2); 
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Madi', 'Piper', 'madi.piper', 'smile', 3);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Mo', 'Silvera', 'mo.silvera', 'travel', 1);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Brenda', 'Long', 'brenda.long', 'laughing', 3);

--EXERCISES--
INSERT INTO Exercise (Name, Language) VALUES ('Student Exercise1', 'Javascript');
INSERT INTO Exercise (Name, Language) VALUES ('Student Exercise3', 'Javascript');
INSERT INTO Exercise (Name, Language) VALUES ('Student Exercise2', 'React');
INSERT INTO Exercise (Name, Language) VALUES ('Student Exercise4', 'C#');
INSERT INTO Exercise (Name, Language) VALUES ('Student Exercise5', 'SQL');
INSERT INTO Exercise (Name, Language) VALUES ('Student Exercise6', '.net');

--STUDENT EXERCISES--
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (7, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (8, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (8, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (9, 1);
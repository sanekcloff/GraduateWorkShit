--CREATE DATABASE ScheduleDataBase
--GO
USE ScheduleDataBase
GO

CREATE TABLE Specialties
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	Title VARCHAR(100) NOT NULL
)

CREATE TABLE Teachers
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	MiddleName VARCHAR(50) NOT NULL,
)

CREATE TABLE Subjects
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	Title VARCHAR(50) NOT NULL,
	TeacherId INT REFERENCES Teachers(ID)
)

CREATE TABLE Groups
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	SpecialtyId INT REFERENCES Specialties(ID) NOT NULL,
	DateOfEnrollment DATE NOT NULL,
)

CREATE TABLE Cabinets
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	Number INT NOT NULL,
)

CREATE TABLE Timetable
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	[Time] VARCHAR(10) NOT NULL,
)

CREATE TABLE ClassTypes
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	Title VARCHAR(25) NOT NULL,
)

CREATE TABLE Classes
(
	ID INT IDENTITY PRIMARY KEY NOT NULL,
	SubjectId INT REFERENCES Subjects(ID) NOT NULL,
	GroupId INT REFERENCES Groups(ID) NOT NULL,
	CabinetId INT REFERENCES Cabinets(ID) NOT NULL,
	TimetableID INT REFERENCES Timetable(ID) NOT NULL,
	ClassTypeID INT REFERENCES ClassTypes(ID) NOT NULL,
)

--DROP TABLE Classes
--DROP TABLE ClassTypes
--DROP TABLE Timetable
--DROP TABLE Cabinets
--DROP TABLE Groups
--DROP TABLE Subjects
--DROP TABLE Teachers
--DROP TABLE Specialties
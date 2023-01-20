create database Rainbow;
use rainbow ;
Create table Parents(
ParentID int primary key auto_increment,
Surname varchar (255),
ParentName varchar (255),
Patronymic varchar (255),
PhoneNumber varchar(255));

 create table Children (
 ChildrenID int primary key auto_increment,
 Surname varchar (255),
ParentName varchar (255),
Patronymic varchar (255),
GroupID int, foreign key (GroupID) references ChildrenGroup(GroupID),
ParentID int , foreign key (ParentID) references Parents(ParentID));
 
 create table ChildrenGroup (
 GroupID int primary key auto_increment,
 GroupName varchar (255));
 
 create table Journal (
JournalID int primary key auto_increment,
ChildrenID  int, foreign key (ChildrenID) references Children(ChildrenID),
Datee date,
VisitStatus int, foreign key (VisitStatus) references VisitStatus(StatusID),
GroupID int, foreign key (GroupID) references ChildrenGroup(GroupID),
EmployeeID int, foreign key (Employeeid) references Employees(EmployeeID));

 create table VisitStatus (
 StatusID int primary key auto_increment,
 StatusName varchar (255));

create table Employees (
EmployeeID int primary key auto_increment,
FirstName varchar(50) not null,
Surname varchar(50) not null,
Ptronimyc Varchar(255),
EmployeeLogin varchar(255),
Passcode varchar (255),
EmployeeStatus int,  foreign key (EmployeeStatus) References EmployeeStatus (
StatusID))  ;

create table EmployeeStatus (
StatusID int primary key auto_increment,
EmployeeStatus varchar(255)); 
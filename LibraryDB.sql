/* Creation statements */

CREATE TABLE Book
(
    ISBN CHAR(13) NOT NULL,
    BookTitle VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Publisher VARCHAR(100) NOT NULL,
    Borrowed_Date DATE,
    Return_Date DATE,
    CONSTRAINT pk_Book PRIMARY KEY(ISBN)
);
CREATE TABLE Users (
	userName varchar(50) NOT NULL,
	password varchar(20) NOT NULL,
	firstName varchar(50) NOT NULL,
	lastName varchar(50) NOT NULL, 
	memberID varchar(20) NOT NULL,
	phoneNumber varchar(20) DEFAULT NULL,
	emailAddress varchar(50) DEFAULT NULL,
	ISBN char(13) NOT NULL, 
	CONSTRAINT user_pk PRIMARY KEY (memberID),
	CONSTRAINT user_fk FOREIGN KEY (ISBN) REFERENCES Book (ISBN)
);

CREATE TABLE Staff(
	userName varchar(50) NOT NULL,
	password varchar(20) NOT NULL,
	firstName 		VARCHAR(30) NOT NULL,
	lastName  		VARCHAR(30) NOT NULL,
	staffEmail		VARCHAR(70) NOT NULL,
	staffPhoneNumber 	VARCHAR(12) DEFAULT NULL,
	staffAddress		VARCHAR(70) DEFAULT NULL,
	staffID                INT DEFAULT NULL,
	memberID		VARCHAR(20) NOT NULL,
	jobPosition		VARCHAR(30) DEFAULT NULL,
	CONSTRAINT staff_pk PRIMARY KEY (firstName, lastName, staffEmail),
	CONSTRAINT staff_fk FOREIGN KEY (memberID) REFERENCES Users (memberID)
);

/* Insert Statements */
insert into Book(ISBN, BookTitle, Author, Publisher, Borrowed_Date, Return_Date) values
('157610', 'The Starving Games: Mockingjayson', 'Suzy Collards', 'John Jones', '2011-04-18', NULL),
('190721', 'The Cat in the Mat', 'Doctor Zeus', 'Jack Black', NULL, NULL),
('114614', 'Artemis Foul', 'John Smith', 'Allen Baker', '2012-12-01', '2013-01-02'),
('9780786838653','The Lightning Thief','Riordan, Rick','Disney-Hyperion','2018-09-08','2018-09-24'),
('9780134794105','Computer Security:Principles and Practice','Stallings, William; Brown, Lawrie','Pearson','2021-08-22',NULL),
('9788120340077','Introduction to Algorithms','Cormen, Thomas H.; Leiserson, Charles E.; Rivest, Ronald L.; Stein, Clifford','PHI Learning Pvt. Ltd.','2021-08-22',NULL),
('9781543057386','Distributed Systems','van Steen, Maarten; Tanenbaum, Andrew S.','CreateSpace Independent Publishing Platform','2020-08-22','2020-12-28'),
('9780128182000','Computer Networks: A Systems Approach','Peterson, Larry L.; Davie, Bruce S.','Morgan Kaufmann','2020-08-22','2020-12-28'),
('9780071795579','Schaum''s Outline Of Probability And Statistics','John J. Schiller Jr.; R. Alu Srinivasan; Murray R. Spiegel','Mcgraw-hill Education','2020-08-22','2020-12-28'),
('9781119363026','Coding All-in-One For Dummies','Steinberg, Joseph','For Dummies','2021-08-22',NULL),
('9781119555018','Blockchain For Dummies','Steinberg, Joseph','For Dummies','2021-08-22',NULL),
('9780073398242','Vector Mechanics for Engineers: Statics and Dynamics','Beer, Ferdinand; Johnston, E.; Mazurek, David; Cornwell, Phillip; Self, Brian','McGraw-Hill Education','2018-01-18','2018-06-15'),
('9780135929032','Starting Out with Python','Steinberg, Joseph','Pearson','2021-01-22','2021-06-24'),
('9780134549897','Digital Design: With an Introduction to the Verilog HDL, VHDL, and SystemVerilog','Mano, M. Morris; Ciletti, Michael','Pearson','2021-01-22','2021-06-24'),
('9781119588887','Big Java: Early Objects','Mano, M. Morris; Ciletti, Michael','Horstmann, Cay S.','2021-01-22','2021-06-24'),
('9781119499909','Applied Calculus, WileyPLUS NextGen Card with Loose-leaf Set','Hughes-Hallett, Deborah; Gleason, Andrew M.; Lock, Patti Frazer; Flath, Daniel E.','Wiley (WileyPLUS Products)','2021-01-22','2021-06-24'),
('9781118912652','Fox and McDonald''s Introduction to Fluid Mechanics','Pritchard, Philip J.; Mitchell, John W.','Wiley','2018-01-18','2018-06-15'),
('9780133923605','Introductory Circuit Analysis','Boylestad, Robert','Pearson','2018-01-18','2018-06-15'),
('9781118875865','Matter and Interactions','Chabay, Ruth W.; Sherwood, Bruce A.','Wiley','2018-01-18','2018-06-15'),
('9781319057428','Rules for Writers','Hacker, Diana','Bedford/St. Martin''s Press','2019-01-08','2019-06-08'),
('9781284147803','Hacker Techniques, Tools, and Incident Handling','Oriyano, Sean-Philip; Solomon, Michael G.','Jones & Bartlett Learning','2021-01-08','2021-06-08'),
('9781285740621','Calculus','Stewart, James','Cengage Learning','2021-01-08','2021-06-08'),
('9781428262980','The Composition of Everyday Life: A Guide to Writing, Brief','Mauk, John; Metz, John','Cengage Learning','2021-09-26',NULL);

insert into Users(userName, password, firstName, lastName, memberID, phoneNumber, emailAddress, ISBN) values
('bourne90','password123','Jason', 'Bourne', '12034351', '234-345-4567', 'itsjasonbourne@gmail.com', '157610'),
('bravo360','cookies420','Johnny', 'Bravo', '12493047', '010-292-1119', 'heytheremama@gmail.com', '114614');

insert into Staff(userName, password, firstName, lastName, staffEmail, staffPhoneNumber, staffAddress, staffID, memberID, jobPosition) values
('bobthebuilder', '123456','Bob', 'Smith', 'bobsmith@yahoo.com', '777-898-2222', '5959 Lonestar Drive', 13587130,  '12034351', 'Custodian'),
('mike_tyson', 'number1','Mike', 'Tyson', 'mtyson@gmail.com', '999-888-7777', '0000 Knockout Ave.', 19911599, '12493047', 'Librarian'),
('larry_pr', 'thebest69','Larry', 'Wheels', 'wheelsonthebus@gmail.com', '232-343-4545', '1245 Deadlift Circle', 19814577, '12493047', 'Assistant Librarian');

/*
--Removing all tables
--DROP TABLE Staff;
--DROP TABLE "user";
--DROP TABLE Book;

--Removing all table information
--DELETE FROM "user";
--DELETE FROM Book;
--DELETE FROM staff;
*/

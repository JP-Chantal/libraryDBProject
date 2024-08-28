CREATE DATABASE LibraryDB;

-- This statement show us that the libraryDB database as been created  
SHOW DATABASES;

-- This statement allow us to use the libraryDB database for our project
USE LibraryDB;





CREATE TABLE Books (
	bookID INT NOT NULL AUTO_INCREMENT Primary Key,
	TITLE VARCHAR(50) NOT NULL,
	AUTHOR VARCHAR(50) NOT NULL,
	GENRE VARCHAR(50) NOT NULL,
	PUBLISHED_YEAR VARCHAR(15) NOT NULL
    );
    
   

CREATE TABLE Borrowers (
	borrowerID INT NOT NULL AUTO_INCREMENT Primary Key,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	Phone_number VARCHAR(13) NOT NULL
);



CREATE TABLE BorrowedBooks (
	borrowedID INT NOT NULL AUTO_INCREMENT, 
	bookID INT NOT NULL,  -- A primary key in the Books table
	borrowerID INT NOT NULL, -- A primary key in the Borrowers table
    -- Date DATE,
	borrow_date DATE NOT NULL,
	return_date  DATE NOT NULL,
    PRIMARY KEY (borrowedID),
    
	INDEX bookID_idx (bookID ASC) VISIBLE,
	INDEX borrowerID_idx (borrowerID ASC) VISIBLE,
	
	FOREIGN KEY (bookID)
	REFERENCES Books(bookID)
	ON UPDATE CASCADE
    ON DELETE CASCADE,
   
    FOREIGN KEY (borrowerID)
	REFERENCES Borrowers(borrowerID)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);



-- To display the three table, we use the statement below ==> ie The table within the libraryDB database.
SHOW TABLES;


-- This statement below allow us to insert data within the table(s)
INSERT INTO
 

-- The statement below allow us to Read or list all the Records ==> ie in this case all the books within the Books table
SELECT * FROM Books;





INSERT INTO Books (bookID, TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values (NULL,'The Hunger Games', 'Carlee Di Franceschi', 'Historical Fiction', 2008);
INSERT INTO Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Rivy Prigg', 'Historical Fiction', 2007);

-- bulk insert on Books

insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Benita Seelbach', 'Mystery', 2007);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Catcher in the Rye', 'Erminia Rubenov', 'Mystery', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('To Kill a Mockingbird', 'Ag Aloshkin', 'Science Fiction', 2015);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Gayla Beard', 'Horror', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Pride and Prejudice', 'Garry McPhail', 'Thriller', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Catcher in the Rye', 'Eleen Scrivin', 'Fantasy', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Great Gatsby', 'Aubry Minichi', 'Romance', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Orren Blazey', 'Historical Fiction', 2020);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Lord of the Rings', 'Fredi Ixer', 'Biography', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Maxy Mosco', 'Cookbook', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('To Kill a Mockingbird', 'Moira Brind', 'Science Fiction', 2012);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Lord of the Rings', 'Lucy Feeney', 'Self-Help', 2012);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('To Kill a Mockingbird', 'Sella Gilchrest', 'Biography', 2013);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Great Gatsby', 'Travus Badham', 'Biography', 2005);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Haleigh Shingles', 'Biography', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Bab Bellamy', 'Self-Help', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Pride and Prejudice', 'Rafi Keune', 'Thriller', 2010);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('To Kill a Mockingbird', 'Alexei Tooher', 'Mystery', 2007);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Murray Boik', 'Biography', 2015);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Pride and Prejudice', 'Gearalt Clell', 'Mystery', 2013);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Ramon Skeeles', 'Horror', 2010);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Shelley Scarlon', 'Horror', 2012);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Shelden Fulham', 'Historical Fiction', 2019);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Da Vinci Code', 'Lorine Jeannard', 'Horror', 2019);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Van Bernardino', 'Thriller', 2013);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Staci Blackader', 'Mystery', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Ginni Stacy', 'Thriller', 2015);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Filia Stelfox', 'Fantasy', 2005);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Christa Carradice', 'Mystery', 2019);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Phaidra McDermott-Row', 'Cookbook', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Catcher in the Rye', 'Angelina Duxfield', 'Horror', 2005);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Catcher in the Rye', 'Janeta Mushrow', 'Science Fiction', 2020);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Antonetta Wedmore', 'Self-Help', 2012);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Eal Humm', 'Science Fiction', 2020);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('To Kill a Mockingbird', 'Darren Duckit', 'Self-Help', 2020);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Pride and Prejudice', 'Roscoe Longea', 'Science Fiction', 2019);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Catcher in the Rye', 'Xavier Dundon', 'Thriller', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Kit Skakunas', 'Mystery', 2007);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Tris Lighterness', 'Fantasy', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Pride and Prejudice', 'Corri Jouannisson', 'Cookbook', 2020);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Secret Garden', 'Karlyn Kos', 'Self-Help', 2019);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Da Vinci Code', 'Hamel Lawlee', 'Thriller', 2007);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Hunger Games', 'Daven Staley', 'Science Fiction', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Great Gatsby', 'Renell Aristide', 'Biography', 2013);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Lord of the Rings', 'Ritchie Semmence', 'Romance', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Harry Potter and the Sorcerer''s Stone', 'Bab Leal', 'Horror', 2007);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Harry Potter and the Sorcerer''s Stone', 'Klara Chittey', 'Mystery', 2007);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('Pride and Prejudice', 'Arabel Putterill', 'Science Fiction', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Clementius Zanitti', 'Horror', 2017);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Catcher in the Rye', 'Ancell Willicott', 'Historical Fiction', 2013);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('1984', 'Aguste Burkert', 'Biography', 2015);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('The Great Gatsby', 'Maris Pennington', 'Cookbook', 2008);
insert into Books (TITLE, AUTHOR, GENRE, PUBLISHED_YEAR) values ('To Kill a Mockingbird', 'Lauralee Shelp', 'Fantasy', 2007);
-- End




 -- This statement allow us to insert single or bulk data within our tables
INSERT INTO 
  

-- This statement below allow us to Read or list all the Records ==> ie In this case all the borrowers from the Borrowers table
SELECT * FROM Borrowers;





INSERT INTO Borrowers (borrowerID, first_name, last_name, email, Phone_number) values (NULL, 'Leigh', 'Stephenson', 'lstephenson2q@google.fr', '0207 555-2468');
INSERT INTO Borrowers (first_name, last_name, email, Phone_number) values ('Tremayne', 'Bannard', 'tbannard2r@spotify.com', '0207 555-8765');

-- bulk insert on Borrowers

insert into Borrowers (first_name, last_name, email, Phone_number) values ('Ellette', 'Fowlie', 'efowlie0@devhub.com', '0207 555-4321');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Jacklin', 'Bartul', 'jbartul1@mozilla.com', '0207 555-9876');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Clarinda', 'Dabner', 'cdabner2@example.com', '0207 555-6173');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Mariel', 'Olyet', 'molyet3@forbes.com', '0207 555-6179');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Rhetta', 'Lias', 'rlias4@youtube.com',  '0207 555-5678');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Valeda', 'Crayden', 'vcrayden5@dailymotion.com', '0207 555-8769');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('William', 'Bendson', 'wbendson6@twitpic.com', '0207 555-8042');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Astrix', 'D''Emanuele', 'ademanuele7@yellowbook.com', '0207 555-8049');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Sherlock', 'Corzon', 'scorzon8@macromedia.com', '0207 555-3690');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Jaquith', 'Dobrowski', 'jdobrowski9@digg.com',  '0207 555-9879');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Lula', 'Podmore', 'lpodmorea@plala.or.jp',  '0207 555-1357');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Andriana', 'Kearle', 'akearleb@networkadvertising.org', '0207 555-3699');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Ciel', 'Aireton', 'cairetonc@google.fr', '0207 555-6178');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Scot', 'Nairne', 'snairned@diigo.com',   '0207 555-8048');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Thomasa', 'Hugnet', 'thugnete@washingtonpost.com', '0207 555-8047');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Oralia', 'Darch', 'odarchf@mtv.com', '0207 555-1359');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Milzie', 'Hamner', 'mhamnerg@auda.org.au', '0207 555-2469');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Matti', 'Lawlings', 'mlawlingsh@people.com.cn', '0207 555-1234');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Aurie', 'Gilpillan', 'agilpillani@google.cn', '0207 555-6177');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Vonnie', 'Cherrison', 'vcherrisonj@a8.net',  '0207 555-9878');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Allys', 'Blose', 'ablosek@abc.net.au', '0207 555-1358');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Evaleen', 'Howchin', 'ehowchinl@ucsd.edu', '0207 555-5679');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Betty', 'Starte', 'bstartem@shareasale.com', '0207 555-8046');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Jerri', 'Dietz', 'jdietzn@opera.com', '0207 555-5677');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Alon', 'Manolov', 'amanolovo@rakuten.co.jp', '0207 555-8768');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Murielle', 'Wilbraham', 'mwilbrahamp@storify.com', '0207 555-3698');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Morie', 'Gossage', 'mgossageq@jalbum.net', '0207 555-5676');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Del', 'Labern', 'dlabernr@rediff.com', '0207 555-9877');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Gilly', 'Linebarger', 'glinebargers@unc.edu', '0207 555-4329');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Tito', 'Prynne', 'tprynnet@trellian.com', '0207 555-2467');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Mathilde', 'Wick', 'mwicku@weebly.com', '0207 555-9875');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Gretel', 'Kike', 'gkikev@pagesperso-orange.fr', '0207 555-1356');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Anthony', 'McCrossan', 'amccrossanw@squidoo.com', '0207 555-1239');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Tristam', 'Hellmore', 'thellmorex@google.com.hk', '0207 555-1355');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Ignacio', 'Kix', 'ikixy@washingtonpost.com', '0207 555-4328');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Elita', 'Aldersea', 'ealderseaz@tumblr.com', '0207 555-3697');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Tabina', 'Spatari', 'tspatari10@woothemes.com', '0207 555-8045');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Bron', 'Halligan', 'bhalligan11@opera.com', '0207 555-3696');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Burnard', 'Mauchline', 'bmauchline12@instagram.com', '0207 555-1238');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Merle', 'Badrick', 'mbadrick13@creativecommons.org', '0207 555-3695');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Minette', 'Illsley', 'millsley14@prnewswire.com',  '0207 555-1354');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Thomasine', 'Chuney', 'tchuney15@miibeian.gov.cn', '0207 555-9874');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Derwin', 'Giacaponi', 'dgiacaponi16@miibeian.gov.cn','0207 555-9873');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Malorie', 'Scarborough', 'mscarborough17@people.com.cn', '0207 555-2466');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Carie', 'Ohrt', 'cohrt18@blog.com', '0207 555-4327');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Remington', 'Manicom', 'rmanicom19@adobe.com', '0207 555-1237');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Teddy', 'Bawles', 'tbawles1a@dell.com', '0207 555-2465');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Carolann', 'Haselden', 'chaselden1b@skype.com', '0207 555-3694');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Tyler', 'Breinl', 'tbreinl1c@github.io', '0207 555-8044');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Talia', 'Hymas', 'thymas1d@unicef.org', '0207 555-1357');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Dennie', 'Scutter', 'dscutter1e@unc.edu', '0207 555-5675');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Nonie', 'Merricks', 'nmerricks1f@alibaba.com', '0207 555-8767');
insert into Borrowers (first_name, last_name, email, Phone_number) values ('Norris', 'Jahner', 'njahner1g@friendfeed.com', '0207 555-2464');

-- End





-- The statement below allow us to read or list all the borrowed books in the BorrowedBooks table via the LibraryDB database. 

SELECT borrow_date, return_date
FROM BorrowedBooks
WHERE borrow_date >= '2024-06-18'
AND return_date  <= '2024-08-19';
  

-- These are the borrowed books need to be return before or on 2024-07-27 
  
SELECT borrow_date, return_date
FROM BorrowedBooks
WHERE borrow_date >= '2024-06-18'
AND return_date  <= '2024-07-27';



-- This statement allow us to update some specific records within the BorrowedBooks table

UPDATE BorrowedBooks SET borrow_date = '2024-07-18', return_date = '2024-08-17'
WHERE bookID AND borrowerID = 3;


UPDATE BorrowedBooks SET borrow_date = '2024-07-18', return_date = '2024-08-17'
WHERE bookID AND borrowerID = 4;


UPDATE BorrowedBooks SET borrow_date = '2024-07-19', return_date = '2024-08-18'
WHERE bookID AND borrowerID = 5;


 

-- This statement Delete one records from the BorrowedBooks table

DELETE FROM BorrowedBooks WHERE borrowerID = 3;
 

 
-- This statement Delete several records from the BorrowedBooks table
 
DELETE FROM BorrowedBooks WHERE borrowerID > 2 
AND borrowerID <= 32;
 
 
 
 


 INSERT INTO BorrowedBooks (bookID, borrowerID, borrow_date, return_date) VALUES ('1', '1', '2024-07-22', '2024-08-21');
 INSERT INTO BorrowedBooks (bookID, borrowerID, borrow_date, return_date) VALUES ('2', '2', '2024-07-20', '2024-08-19');

-- bulk insert on BorrowedBooks

insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('3',  '3', '2024-06-18', '2024-07-17');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('4',  '4', '2024-06-18', '2024-07-17');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('5',  '5', '2024-06-19', '2024-07-18');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('6',  '6', '2024-06-19', '2024-07-18');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('7',  '7', '2024-06-19', '2024-07-18');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('8',  '8',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values  ('9' , '9',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('10', '10',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('11', '11', '2024-06-20', '2024-07-19');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('12', '12', '2024-06-20', '2024-07-19');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('13', '13', '2024-06-20', '2024-07-19');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('14', '14', '2024-06-22', '2024-07-21');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('15', '15', '2024-06-22', '2024-07-21');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('16', '16', '2024-06-22', '2024-07-21');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('17', '17', '2024-06-24', '2024-07-23');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('18', '18', '2024-06-24', '2024-07-23');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('19', '19', '2024-06-24', '2024-07-23');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('20', '20', '2024-06-25', '2024-07-24');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('21', '21', '2024-06-25', '2024-07-24');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('22', '22', '2024-06-25', '2024-07-24');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('23', '23', '2024-06-26', '2024-07-25');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('24', '24', '2024-06-26', '2024-07-25');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('25', '25',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('26', '26',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('27', '27',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('28', '28', '2024-06-27', '2024-07-26');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('29', '29', '2024-06-27', '2024-07-26');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('30', '30', '2024-06-28', '2024-07-27');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('31', '31', '2024-06-28', '2024-07-27');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('32', '32', '2024-06-28', '2024-07-27');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('33', '33', '2024-07-03', '2024-08-02');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('34', '34', '2024-07-03', '2024-08-02');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('35', '35',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('36', '36',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('37', '37',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('38', '38',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('39', '39',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('40', '40',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('41', '41', '2024-07-05', '2024-08-04');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('42', '42', '2024-07-05', '2024-08-04');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('43', '43', '2024-07-06', '2024-08-05');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('44', '44', '2024-07-06', '2024-08-05');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('45', '45', '2024-07-08', '2024-08-07');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('46', '46', '2024-07-09', '2024-08-08');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('47', '47', '2024-07-10', '2024-08-09');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('48', '48',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('49', '49',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('50', '50',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('51', '51',  borrow_date, return_date);
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('52', '52', '2024-07-10', '2024-08-09');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('53', '53', '2024-07-15', '2024-08-14');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('54', '54', '2024-07-16', '2024-08-15');
insert into BorrowedBooks (bookID, borrowerID, borrow_date, return_date) values ('55', '55', '2024-07-20', '2024-08-19');
-- End

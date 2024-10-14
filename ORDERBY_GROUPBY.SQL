CREATE TABLE bookDetails
(book_id int,
book_name varchar(30),
author varchar(30),
publisher varchar(30),
category varchar(20),
language varchar(15),
price int,
no_of_copies int,
no_of_pages int,
availability varchar(10));
DESC bookDetails;
INSERT INTO bookDetails VALUES(1,"To kill mockingbird","Harper Lee","Arrow Books","Fiction","English",399,5,336,"yes"),
(2,"The Alchemist","Paulo Coelho","HarperCollins","Fiction","English",299,10,208,"yes"),
(3,"Khasakkinte Ithihasam","O.V. Vijayan","DC Books","Novel","Malayalam",299,4,290,"yes"),
(4,"Randamoozham","M.T.Vasudevan","DC Books","Fiction","Malayalam",375,2,520,"yes"),
(5,"Aadujeevitham","Bennyamin","DC Books","Novel","Malayalam",280,3,270,"no"),
(6,"Harry Potter","J.K.Rowling","Bloomsbury","Fantacy","English",499,6,223,"yes"),
(7,"A Brief History of Time","Stephen Hawking","Bantam","Cosmology","English",350,2,256,"no"),
(8,"Bharathipura","Anandamurthy","Oxford","Fiction","Kannada",250,5,280,"yes"),
(9,"Samskara","Anandamurthy","Penguin Classic","Fiction","Kannada",300,4,200,"no"),
(10,"Atomic Habits","James Clear","Penguin Random House","Self help","English",550,15,320,"yes"),
(11,"Think and Grow Rich","Napoleon Hill","Vermilion","Self help","English",299,10,264,"no"),
(12,"Mayyazhi puzha","M.Mukundan","Current Books","Novel","Malayalam",350,10,384,"yes"),
(13,"The Subtle Art of Not Giving","Mark Manson","HarperOne","Self help","English",500,7,224,"yes"),
(14,"Ezhuthachante kala","Krishnavarrier","Mathrubhumi Books","Critisism","Malayalam",190,8,180,"no"),
(15,"Wings of Fire","A.P.J. Abdul Kalam","Universities Press","Autobiography","English",250,10,180,"yes"),
(16,"The Art of War","Sun Tzu","Sh'ambhala Publications","Strategy","English",399,3,112,"no"),
(17,"Indulekha","O.Chandumenon","DC Books","Classis","Malayalam",199,4,320,"yes"),
(18,"Becoming","Michelle Obama","Crown Publishing Group","Autobiography","English",800,3,464,"yes"),
(19,"Ikigai: The Japanese Secret","Hector Garcia","Penguin Random House","Self help","English",350,7,208,"no"),
(20,"1984","George Orwell","Penguin Classics","Fiction","English",350,30,328,"yes");
SELECT * FROM bookDetails;

CREATE TABLE libraryDetails (
    book_id INT,
    title VARCHAR(255),
    author VARCHAR(255),
    language VARCHAR(50),
    genre VARCHAR(100),
    publisher VARCHAR(100),
    year INT,
    pages INT,
    ISBN bigint,
    availability varchar(20)
);
DESC libraryDetails;

INSERT INTO libraryDetails VALUES(1,"Aarachar","K.R. Meera","Malayalam","Fiction","DC Books",2012,592,"9788171304010",	"Available"),
(2,"Randamoozham","M.T. Vasudevan Nair","Malayalam","Mythology","DC Books",1984,852,"9788126419098","Issued"),
(3,"Ghachar Ghochar","Vivek Shanbhag","Kannada","Fiction","HarperCollins",2015,118,"9789384067265","Available"),
(4,"Samskara","U.R. Ananthamurthy","Kannada","Classic","Oxford",1965,132,"9780195673114","Available"),
(5,"The God of Small Things","Arundhati Roy","English","Fiction","Penguin",1997,340,"9780143028574","Issued"),
(6,"Midnight's Children","Salman Rushdie","English","Magical Realism","Jonathan Cape",1981,647,"9780224009959","Available"),
(7,"Oru Deshathinte Katha","S.K. Pottekkatt","Malayalam","Travelogue","DC Books",1971,400,"9788126417254","Available"),	
(8,"Tamas","Bhisham Sahni","English","Historical Fiction","Penguin",1974,289,"9780143063681","Available"),
(9,"Ponniyin Selvan: The Crown","Kalki Krishnamurthy","English","Historical Fiction","HarperCollins",1955,608,"9789356292551","Issued"),	
(10,"Nanu Nanna Jeevana","Jayanth Kaikini","Kannada","Autobiography","Kannada Pustaka",1996,320,"9788171673300","Available"),
(11,"Asuravithu","M.T. Vasudevan Nair","Malayalam","Fiction","DC Books",1962,144,"9788126435654","Available"),
(12,"The White Tiger","Aravind Adiga","English","Fiction","HarperCollins",2008,321,"9781416562603","Available"),
(13,"Bhutaraya","Devanuru Mahadeva","Kannada","Fiction","Sahitya Akademi",1996,212,"9788126018505","Issued"),
(14,"Pathummayude Aadu","Vaikom Muhammad Basheer","Malayalam","Fiction","DC Books",1959,150,"9788171303245","Available"),
(15,"Swami and Friends","R.K. Narayan","English","Fiction","Indian Thought",1935,224,"9788185986005","Available"),	
(16,"Nalku Kambigal","S.L. Bhyrappa","Kannada","Fiction","Sahitya Bhandara",1978,256,"9788126028108","Available"),	
(17,"Ente Katha","Kamala Surayya","Malayalam","Autobiography","DC Books",1976,200,"9788171305140","Issued"),
(18,"The Guide","R.K. Narayan","English","Fiction","Indian Thought",1958,220,"9788185986104","Available"),	
(19,"Mallige","M.K. Indira","Kannada","Fiction","Sahitya Bhandara",1960,160,"9788126028198","Issued"),	
(20,"Chemmeen","Thakazhi Sivasankara Pillai","Malayalam","Fiction","DC Books",1956,224,"9788171300916","Available");

SELECT * FROM libraryDetails;

SELECT * FROM bookDetails WHERE book_name LIKE 'B%';
select book_name from bookDetails where category like 'F%';
select * from bookDetails where publisher not like '%s';
select book_name from bookDetails where category not like 'F%';
select DISTINCT(publisher) from bookDetails;
SELECT * FROM bookDetails ORDER BY book_id DESC;
SELECT * FROM bookDetails ORDER BY book_id;
SELECT * FROM bookDetails ORDER BY price DESC;
SELECT COUNT(*) AS TOTAL_ROWS FROM bookDetails ;
SELECT COUNT(PRICE) AS TOTAL_PRICE FROM bookDetails;
SELECT SUM(PRICE) AS TOTAL_PRICE FROM bookDetails;
SELECT AVG(PRICE) AS AVERAGE_PRICE FROM bookDetails;
select avg(no_of_copies) as average_copies from bookDetails;
SELECT MAX(price) as max_price FROM bookDetails;
SELECT MIN(price) as min_pages FROM bookdetails;
SELECT UPPER(book_name) FROM bookdetails;
SELECT LOWER(PUBLISHER) FROM bookdetails;
SELECT UPPER(PUBLISHER) FROM bookdetails;
CREATE TABLE airport_details(a_id VARCHAR(10),a_name VARCHAR(10),a_city varchar(20),a_country VARCHAR(20),a_no_of_flights BIGINT,a_no_of_runways BIGINT,a_contact_no BIGINT,a_employees BIGINT,a_category VARCHAR(15),a_ticket_category VARCHAR(20));
INSERT INTO airport_details VALUES(1,'Kannur','Mattannur','Kerala',20,5,8113822784,200,'International','Business'),
(2,'Manglore','Kenjar','Karnataka',15,5,6282063606,150,'International','Economy'),
(3,'Kochin','Kochi','Kerala',10,6,9745197531,100,'International','Premium'),
(4,'Mysore','Mysore','Karnataka',5,1,9876543210,50,'Domestic','Economy'),
(5,'Tirupati','Andra','Andrapradesh',3,1,6543218906,40,'International','Premium'),
(6,'Selam','Selam','TamilNadu',4,2,9876789543,20,'Domestic','Economy'),
(7,'Nedumba','Trivandrum','Kerala',20,3,7654897654,45,'International','Premium'),
(8,'Banglore','Banglore','Karnataka',10,4,8970594534,35,'International','Bussiness'),
(9,'Swami','Raipur','Chhattisgarh',4,1,7098543656,10,'Domestic','Economy'),
(10,'Daporijo','Daporijo','Andrapradesh',4,1,6578493026,17,'Domestic','Economy'),
(11,'Manohar','Mopa','Goa',6,2,8790867890,29,'International','Premium'),
(12,'Dabolim','Dabolim','Goa',6,2,9809989767,35,'International','Bussiness');
SELECT * FROM airport_details;
ALTER TABLE airport_details RENAME COLUMN a_country TO a_state;
SELECT * FROM airport_details WHERE a_no_of_flights=5 AND a_state='Kerala';
SELECT * FROM airport_details WHERE a_no_of_flights=5 AND a_state='Karnataka';
SELECT a_city FROM airport_details WHERE a_state='Karnataka' AND a_employees=50 AND a_ticket_category='Economy';
SELECT a_name FROM airport_details WHERE a_state='Kerala' OR a_category='Domestic';
SELECT * FROM airport_details WHERE a_name IN('Mysore','Kannur','Selam');
SELECT * FROM airport_details WHERE a_id NOT IN(4,5,6);
CREATE TABLE olympic_games (
    id INT ,
    year INT,
    city VARCHAR(50),
    country VARCHAR(50),
    sports_item VARCHAR(50),
    number_of_events INT,
    number_of_athletes INT,
    number_of_countries INT,
    team_name VARCHAR(100),
    venue VARCHAR(100)
);

INSERT INTO olympic_games (id, year, city, country, sports_item, number_of_events, number_of_athletes, number_of_countries, team_name, venue)
VALUES
(1, 1984, 'Los Angeles', 'United States', 'Fencing', 221, 6829, 140, 'Team USA', 'Coliseum'),
(2, 1988, 'Seoul', 'South Korea', 'Weightlifting', 263, 8450, 160, 'Team Korea', 'Olympic Stadium'),
(3, 1992, 'Barcelona', 'Spain', 'Basketball', 257, 9356, 169, 'Team Spain', 'Olympic Stadium'),
(4, 1996, 'Atlanta', 'United States', 'Boxing', 271, 10400, 197, 'Team USA', 'Centennial Stadium'),
(5, 2000, 'Sydney', 'Australia', 'Rowing', 300, 10300, 199, 'Team Australia', 'Stadium Australia'),
(6, 2004, 'Athens', 'Greece', 'Cycling', 301, 10600, 202, 'Team Greece', 'Olympic Stadium'),
(7, 2008, 'Beijing', 'China', 'Athletics', 302, 11000, 204, 'Team China', 'National Stadium'),
(8, 2012, 'London', 'United Kingdom', 'Athletics', 302, 10500, 205, 'Team Great Britain', 'Olympic Stadium'),
(9, 2016, 'Rio de Janeiro', 'Brazil', 'Swimming', 306, 11200, 207, 'Team Brazil', 'Maracanã Stadium'),
(10, 2020, 'Tokyo', 'Japan', 'Gymnastics', 339, 11400, 206, 'Team Japan', 'Olympic Stadium'),
(11, 2024, 'Paris', 'France', 'Athletics', 32, 10000, 206, 'Team France', 'Stade de France'),
(12, 2028, 'Los Angeles', 'United States', 'Surfing', 32, 10000, 206, 'Team USA', 'Venice Beach');

select * from  olympic_games;


SELECT * FROM olympic_games
WHERE year > 2000 AND number_of_countries > 200;

SELECT * FROM olympic_games
WHERE sports_item = 'Athletics' OR country = 'United States';

SELECT * FROM olympic_games
WHERE city IN ('London', 'Tokyo', 'Rio de Janeiro');

SELECT * FROM olympic_games
WHERE sports_item NOT IN ('Athletics', 'Swimming', 'Gymnastics');
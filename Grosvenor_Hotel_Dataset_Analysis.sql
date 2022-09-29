

-- DROP SCHEMA IF EXISTS Grosvenor_Hotel;


DROP DATABASE IF EXISTS Grosvenor_Hotel;  
 
 -- Creating a database
CREATE DATABASE IF NOT EXISTS Grosvenor_Hotel;

-- select database  
USE Grosvenor_Hotel;                     

-- DROP SCHEMA IF EXISTS Grosvenor_Hotel;
DROP TABLE IF EXISTS Hotel,           
                     Room,
                     Booking,
                     Guest; 
            
-- Creating the Tables     

-- Table structure for table `hotel` 
      
CREATE TABLE hotel ( 
hotel_no CHAR(4) NOT NULL PRIMARY KEY, 
name VARCHAR(30) NOT NULL, 
address VARCHAR(50) NOT NULL
);




-- Table structure for table `room` 

CREATE TABLE room ( 
room_no VARCHAR(30) NOT NULL,
hotel_no CHAR(4) NOT NULL,
type VARCHAR(30) NOT NULL, 
price DECIMAL(5,2) NOT NULL,
PRIMARY KEY (room_No),
foreign key (hotel_no) REFERENCES hotel(hotel_no)
);




-- Table structure for table `guest` 

CREATE TABLE guest ( 
guest_no VARCHAR(30) NOT NULL PRIMARY KEY, 
name VARCHAR(30) NOT NULL, 
address VARCHAR(50) NOT NULL
);




-- Table structure for table `booking` 

CREATE TABLE booking (
hotel_no CHAR(4) NOT NULL, 
guest_no VARCHAR(30) NOT NULL, 
date_from DATETIME NOT NULL, 
date_to DATETIME NULL, 
room_no VARCHAR(30) NOT NULL,
foreign key (hotel_no) REFERENCES hotel(hotel_no),
foreign key (room_no) REFERENCES room(room_no),
foreign key (guest_no) REFERENCES guest(guest_no)
); 








-- Populating the Tables

-- Dumping data for table hotel

INSERT INTO hotel VALUES 
('H111','Grosvenor hotel','London');




-- Dumping data for table room

INSERT INTO room VALUES 
('101', 'H111', 'family', 39.00), 
('102', 'H111', 'Single', 38.00), 
('103', 'H111', 'family', 68.00), 
('104', 'H111', 'double', 35.00), 
('105', 'H111', 'double', 45.00), 
('106', 'H111', 'Single', 39.00), 
('107', 'H111', 'single', 38.00), 
('108', 'H111', 'double', 58.00),
('109', 'H111', 'Single', 31.00), 
('110', 'H111', 'Single', 55.00); 





-- Dumping data for table guest

INSERT INTO guest VALUES    
('G101', 'John Smith', 'London'),        
('G102', 'Mery Smith', 'London'),        
('G201', 'Malti Soni', 'India'),         
('G202', 'Mahir Soni', 'India'),         
('G203', 'Lalita Soni', 'India'),        
('G301', 'Smith Poland', 'Belgium'),     
('G302', 'Jessy Poland', 'Belgium'),     
('G401', 'Smith Joy', 'London'),         
('G402', 'Willi Joy', 'London'),  
('G103', 'Karry Kidney', 'Canada'),    
('G204','JOHNNY CAGE','UK'),              
('G303','JODIE DEGENERES','US'),            
('G403','TOM MIRANDA','India'),             
('G501','KIRK JOVOVICH','Pakistan'),       
('G601','NICK STALLONE','Rusia'),        
('G701','REESE KILMER','Denmark'), 
('G104', 'Ady Fandry', 'India'),    
('G105', 'Sandy Fandry', 'India'),    
('G205', 'Rocky James', 'London'),     
('G206', 'Merry james', 'London'),        
('G304', 'Charly Oliver', 'London'),    
('G305', 'Nancy Oliver', 'London'),      
('G306', 'Nia Oliver', 'London'),       
('G404', 'Michael Wing', 'uk'),          
('G405', 'Maria Wing', 'uk'),         
('G502', 'Sandy Connor', 'London'),     
('G503', 'Nancy Connor', 'London'),    
('G504', 'Maddy Connor', 'London'),     
('G602', 'Rakhi Oja', 'Argentina') ,    
('G603', 'Preety Oja', 'Argentina') ,    
('G702', 'Pravin Mishra', 'India'),       
('G703', 'Ravi Mishra', 'india'),       
('G704', 'Goldy Mishra', 'india'),       
('G106', 'Jacob Tandon', 'London'),       
('G107', 'John Mery', 'London'),           
('G207', 'Peter Mike', 'kazakistan'),      
('G307', 'jack Poter', 'Paris'),          
('G308', 'Nancy Jacob', 'Paris'),           
('G406', 'Ruhi Chavla', 'France'),       
('G507', 'Ethan David', 'France'),     
('G608', 'Harry poter', 'Berlin'),     
('G708', 'Messy Joe', 'London'),       
('G709', 'Teddy Ninja', 'London'),    
('G110', 'Teddy Ninja', 'Nepal'),    
('G111', 'Oli Sehgal', 'Nepal'),     
('G210', 'Harry Adison', 'Paris'),    
('G310', 'Mason Robert', 'London'),   
('G311', 'Willium Thomas', 'London'),  
('G409', 'James Kyle', 'Germany'),      
('G410', 'Paddy Jonas', 'Germany'),
('G112', 'Medric Horizon', 'UK'),           
('G211', 'George Jack', 'UK'),        
('G313', 'Sedric Salvock', 'London'),   
('G412', 'Nick Kelvin', 'London') ,     
('G515','NICK WAHLBERG','US'),          
('G616','ED CHASE','Japan'),            
('G114', 'JENNIFER DAVIS', 'London'),          
('G215', 'JOHNNY LOLLOBRIGIDA', 'London'),      
('G318', 'BETTE NICHOLSON', 'kazakistan'),       
('G420', 'GRACE MOSTEL', 'Paris'),              
('G522', 'MATTHEW JOHANSSON', 'Paris'),             
('G125','JOE SWANK','Myanmar'),           
('G225','CHRISTIAN SWANK','Germany'),     
('G325','ZERO OLIVIER','Spain'),           
('G326','CUBA OLIVIER','Spain'),          
('G430','KARL BERRY','Norway'),           
('G531','UMA WOOD','Italy'),                 
('G532','VIVIEN BERGEN','Italy'),       
('G622','FRED COSTNER','Turkey'),        
('G623','HELEN VOIGHT','Turkey'),      
('G150','ELVIS MARX','Italy'),         
('G230','SANDRA KILMER','London'),      
('G335','CAMERON STREEP','Uk'),       
('G432','KEVIN BLOOM','Spain'),         
('G534','RIP CRAWFORD','Myanmar'),      
('G650','JULIA MCQUEEN','London'),      
('G155','WOODY HOFFMAN','Turkey'), 
('G256','ALEC WAYNE','Brazil'),      
('G388','SANDRA PECK','London'),     
('G490','SISSY SOBIESKI','Austria'),   
('G544','TIM HACKMAN','Iceland'),      
('G660','MILLA PECK','London');  





-- Dumping data for table booking
   
INSERT INTO booking VALUES 
('H111', 'G101','1999-08-01', '1999-10-11','101'),
('H111', 'G102','1999-08-01', '1999-10-11','101'),
('H111', 'G201','1999-10-18', '2000-01-20','101'),
('H111', 'G202','1999-10-18', '2000-01-20','101'),
('H111', 'G203','1999-10-18', '2000-01-20','101'),
('H111', 'G301','2000-01-20', '2000-04-05','101'),  
('H111', 'G302','2000-01-20', '2000-04-05','101'),
('H111', 'G401','2000-06-10', '2000-08-28','101'),
('H111', 'G402','2000-06-10', '2000-08-28','101'),
('H111', 'G103','1999-07-26', '1999-09-26','102'), 
('H111', 'G204','1999-10-02', '2000-01-07','102'), 
('H111', 'G303','2000-01-15', '2000-03-08','102'), 
('H111', 'G403','2000-03-10', '2000-05-02','102'), 
('H111', 'G501','2000-05-03', '2000-06-15','102'), 
('H111', 'G601','2000-06-28', '2000-08-17','102'), 
('H111', 'G701','2000-08-17', NULL, '102'),
('H111', 'G104','1999-07-31', '1999-08-15','103') , 
('H111', 'G105','1999-07-31', '1999-08-15','103') ,
('H111', 'G205','1999-08-21', '1999-09-15','103') ,
('H111', 'G206','1999-08-21', '1999-09-15','103') ,   
('H111', 'G304','1999-09-16', '2000-10-29','103') ,
('H111', 'G305','1999-09-16', '2000-10-29','103') ,
('H111', 'G306','1999-09-16', '2000-10-29','103') ,
('H111', 'G404','1999-10-30', '2000-01-28','103') ,
('H111', 'G405','1999-10-30', '2000-01-28','103') ,
('H111', 'G502','2000-01-31', '2000-04-11','103') ,
('H111', 'G503','2000-01-31', '2000-04-11','103') ,
('H111', 'G504','2000-01-31', '2000-04-11','103') ,
('H111', 'G602','2000-05-10', '2000-05-10','103') ,
('H111', 'G603','2000-05-10', '2000-05-10','103') ,
('H111', 'G702','2000-08-01',NULL,  '103') ,
('H111', 'G703','2000-08-01', NULL, '103') ,
('H111', 'G704','2000-08-01', NULL, '103') ,
('H111', 'G106','1999-08-02','1999-10-26','104'),
('H111', 'G107','1999-08-02','1999-10-26','104'),
('H111', 'G207','1999-11-08','2000-01-19','104'),
('H111', 'G307','2000-01-21', '2000-04-15','104'), 
('H111', 'G308','2000-01-21', '2000-04-15','104'),    
('H111', 'G406','2000-04-15', '2000-05-02','104'),
('H111', 'G507','2000-04-15', '2000-05-02','104'),
('H111', 'G608','2000-05-12', '2000-07-17','104'),
('H111', 'G708','2000-07-18', '2000-08-27','104'),
('H111', 'G709','2000-07-18', '2000-08-27','104'),
('H111', 'G110','1999-09-05','2000-01-09','105'),
('H111', 'G111','1999-09-05','2000-01-09','105'),
('H111', 'G210','2000-01-12','2000-03-15','105'),
('H111', 'G310','2000-04-15','2000-05-02','105'),
('H111', 'G311','2000-04-15','2000-05-02','105'),
('H111', 'G409','2000-05-05','2000-07-22','105'),
('H111', 'G410','2000-05-05','2000-07-22','105'),
('H111', 'G112','1999-07-28','1999-08-28','106'),    
('H111', 'G211','1999-09-22','1999-12-15','106'),
('H111', 'G313','2000-01-18','2000-03-12','106'),
('H111', 'G412','2000-04-01','2000-07-02','106'),
('H111', 'G515','2000-07-05','2000-08-24','106'),
('H111', 'G616','2000-08-25', NULL,'106'),
('H111', 'G114','1999-08-01','1999-09-15','107'),  
('H111', 'G215','1999-12-10','2000-01-22','107'), 
('H111', 'G318','2000-01-31','2000-04-21','107') ,
('H111', 'G420','2000-05-10','2000-07-28','107'), 
('H111', 'G522','2000-08-05','2000-09-02','107') ,
('H111', 'G125','1999-09-05', '2000-01-09','108'),
('H111', 'G225','1999-09-05', '2000-01-09','108'),
('H111', 'G325','2000-01-12', '2000-03-15','108'),
('H111', 'G326','2000-01-12', '2000-03-15','108'),
('H111', 'G430','2000-04-15', '2000-05-02','108'),
('H111', 'G531','2000-05-05', '2000-07-22','108'),
('H111', 'G532','2000-05-05', '2000-07-22','108') ,
('H111', 'G622','2000-07-24', '2000-08-30','108'),
('H111', 'G623','2000-07-24', '2000-08-30','108'),
('H111', 'G150','1999-08-04', '1999-09-11','109'),
('H111', 'G230','1999-10-18', '2000-01-25','109'),
('H111', 'G335','2000-01-28', '2000-03-05','109'),
('H111', 'G432','2000-05-10', '2000-07-28','109'),
('H111', 'G534','2000-08-10', '2000-10-28','109'),
('H111', 'G650','2000-10-29', NULL,'109') ,
('H111', 'G155','1999-07-22', '2000-09-15','110'),
('H111', 'G256','2000-09-21', '2000-12-18','110'),
('H111', 'G388','2000-01-20', '2000-03-22','110'),
('H111', 'G490','2000-04-01', '2000-07-21','110'),
('H111', 'G544','2000-07-25', '2000-08-24','110'),
('H111', 'G660','2000-08-25',NULL,'110');





select * from hotel;
select * from room;
select * from guest;
select * from booking;




-- Updating the Tables 'room'

UPDATE room SET price = price*1.05;
select * from room;




-- Create a separate table with the same structure as the Booking table to hold archive records.
-- Using the INSERT statement, copy the records from the Booking table to the archive table relating to bookings before 1st January 2000. Delete all bookings before 1st January 2000 from the Booking table

-- creating table 'booking_old'

CREATE TABLE booking_old (
hotel_no CHAR(4) NOT NULL, 
guest_no CHAR(4) NOT NULL primary key, 
date_from DATETIME NOT NULL, 
date_to DATETIME NULL, 
room_no VARCHAR(4) NOT NULL
);




-- inserting data into table 'booking_old'

INSERT INTO booking_old (SELECT * FROM booking WHERE date_to < '2000-01-01');
select * from booking_old;





-- delecting data from table 'booking'

DELETE FROM booking WHERE date_to < '2000-01-01';
select * from booking;







## Simple Queries

-- 1. List full details of all hotels.

select * from hotel;


-- 2. List full details of all hotels in London.

select * from hotel;
SELECT * FROM Hotel WHERE address = 'London'; 



-- 3. List the names and addresses of all guests in London, alphabetically ordered by name.

select * from guest;

select name,address 
from 
guest WHERE address = 'London'
ORDER BY Name ;




-- 4. List all double or family rooms with a price below £40.00 per night, in ascending order of price.

select * from room;

select * from
room where type in('double','family') 
and price < 40.00
ORDER BY price ASC ;



-- 5. List the bookings for which no date_to has been specified.

SELECT * FROM booking ;

SELECT * FROM booking where date_to is null;






## Aggregate Functions

-- 1. How many hotels are there?

select * from hotel;

select count(hotel_no) as total_no_of_hotels from hotel;
           -- OR 
select count(*) total_no_of_hotels from hotel; 

 
         
-- 2. What is the average price of a room?

select * from room;

select avg(price) from room;



-- 3. What is the total revenue per night from all double rooms?

select * from room;

select sum(price) 
as 'total revenue per night'
from 
room where type = 'double';



-- 4. How many different guests have made bookings for August?

select * from booking;

select count(distinct guest_no) as bookings_in_august
from 
booking WHERE (date_From >= '1999-08-01' AND date_To <= '1999-08-31') 
                                      OR  
			  (date_From >= '2000-08-01' AND date_From <= '2000-08-31'); 
              
              
              
              
              
              
              
 ## Subqueries and Joins

-- 1. List the price and type of all rooms at the Grosvenor Hotel.

select * from hotel;
select * from room;

select h.name, r.type,r.price  -- by using joins
from hotel h
inner join room r on h.hotel_no = r.hotel_no
where h.name = 'Grosvenor Hotel' ;
                
               -- OR

SELECT price, type FROM Room      -- by using subqureey in where clause
WHERE hotel_No =  
			(SELECT hotel_No FROM Hotel 
            WHERE Name = 'Grosvenor Hotel'); 



-- 2. List all guests staying at the Grosvenor Hotel date_From '1999-11-01' AND date_To  '2000-02-28'.

select * from booking;
SELECT * FROM Guest ;
SELECT * FROM hotel; 

SELECT * FROM Guest                     -- muiltiple subquerries in where clause 
   WHERE guest_No IN                   -- IN clause allows more than 1 row result from subwuerry
		   (SELECT guest_No FROM Booking 
			    WHERE 
                      (date_From >= '1999-11-01' AND date_To <= '2000-02-28')
			                              AND 
				      (hotel_No = (SELECT hotel_No FROM Hotel WHERE Name = 'Grosvenor Hotel'))); 




-- 3. List the details of all rooms at the Grosvenor Hotel, including the name of the guest staying in the room, if the room is occupied from 'december' to 'march'.

select * from hotel;
select * from room;
select * from guest;
select * from booking;

SELECT r.* FROM Room r 
LEFT JOIN  
 	 	(SELECT g.Name, h.hotel_No, b.room_No FROM Guest g, Booking b, Hotel h 
        WHERE g.guest_No = b.guest_No AND b.hotel_No = h.hotel_No 
        AND h.Name= 'Grosvenor Hotel' 
        AND  date_From <= '1999-12-01' AND  date_To >= '2000-3-31') AS info_required 
 ON r.hotel_No = info_required .hotel_No AND r.room_No = info_required .room_No; 




-- 4. What is the total income from bookings for the Grosvenor Hotel for '1999-09-05' ?

select * from booking;
select * from room;

SELECT SUM(PRICE) as total_income FROM ROOM 
  where room_no 
      IN (select distinct room_no from booking where date_From = '1999-09-05')
                  and
      hotel_no = (select hotel_no from hotel where name='Grosvenor Hotel');
               


-- 5. List the rooms that are unoccupied at the Grosvenor Hotel in between'2000-01-02' and '2000-01-30'.

select * from booking;
select * from room;

SELECT room_no FROM ROOM 
where  hotel_no = (select hotel_no from hotel where name='Grosvenor Hotel')
      and 
       room_no NOT IN (select distinct room_no from booking where date_From between  '2000-01-02' and '2000-01-30');
       
      
      
 -- 6. What is the lost income from unoccupied rooms at the Grosvenor Hotel on '1999-09-05'?     
      
select * from booking;
select * from room;

SELECT SUM(PRICE) as total_lost_income FROM ROOM 
where room_no 
    IN (select distinct room_no from booking where date_From = '1999-09-05')
and 
    hotel_no
	=(select hotel_no from hotel where name = 'Grosvenor Hotel');







## Grouping

-- 1. List the number of rooms in each hotel.

select * from hotel;
select * from room;

select h.hotel_no,h.name,count(distinct r.room_no) 
from hotel h
left join room r 
          on h.hotel_no = r.hotel_no
group by h.name;        



-- 2. List the number of rooms in each hotel in London.

select * from hotel;
select * from room;

select h.hotel_no,h.address,h.name,count(distinct r.room_no) 
from hotel h
left join room r 
          on h.hotel_no = r.hotel_no 
where h.address = 'London'
group by h.name;  

      

-- 3. What is the average number of bookings for each hotel in August?

select * from booking;

CREATE OR REPLACE VIEW bookings_august AS
((select hotel_no,count(distinct date_from) as booking from booking 
where date_from between '2000-08-01' and '2000-08-31' 
group by hotel_no)
union 
(select hotel_no,count(distinct date_from) as booking from booking 
where date_from between '1999-08-01' and '1999-08-31'
group by hotel_no));

select * from bookings_august;
select (round (avg(booking),2)) from bookings_august;


-- 4. What is the most commonly booked room type for each hotel in London?

select * from hotel;
select * from room;
select * from booking;

SELECT Type, COUNT(room_no) AS TypeCount
FROM Hotel H, Room R
   WHERE H.Address = 'London'
   AND 
   H.Hotel_No = R.Hotel_No
GROUP BY type
ORDER BY TypeCount DESC;



-- 5. What is the lost income from unoccupied rooms at each hotel today?
 
select * from booking;
select * from room;

SELECT SUM(PRICE) as total_lost_income_for_today_per_hotel FROM ROOM 
where room_no 
      IN 
      (select distinct room_no from booking where date_From = '1999-09-05');

 







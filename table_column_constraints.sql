CREATE TABLE hotel_info (
    hotel_id INT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL unique,
    rating DECIMAL(2, 1),
    total_rooms INT,
    available_rooms INT,
    price_per_night DECIMAL(10, 2),
    contact_number VARCHAR(15)
);
desc hotel_info;
INSERT INTO hotel_info VALUES 
(1, 'Grand Palace', 'Delhi', 4.5, 200, 50, 5000.00, '9876543210'),
(2, 'Ocean View', 'Goa', 4.8, 150, 20, 8000.00, '9988776655'),
(3, 'Mountain Retreat', 'Manali', 4.2, 80, 15, 4500.00, '8899776655'),
(4, 'Royal Heritage', 'Jaipur', 4.7, 120, 30, 7000.00, '7896543211'),
(5, 'City Light Inn', 'Mumbai', 4.0, 100, 25, 5500.00, '7788996655'),
(6, 'Serenity Stay', 'Rishikesh', 4.3, 60, 10, 4000.00, '9988443322'),
(7, 'Sunset Paradise', 'Pondicherry', 4.6, 75, 5, 6000.00, '8866554433'),
(8, 'Lakeside Resort', 'Udaipur', 4.4, 90, 18, 6500.00, '7799885566'),
(9, 'Skyline Hotel', 'Bengaluru', 4.1, 110, 45, 5200.00, '9654321780'),
(10, 'Eco Village', 'Kerala', 4.9, 50, 8, 9000.00, '9988771122');
select * from hotel_info;
alter table hotel_info add constraint hotel_id_pk primary key(hotel_id),add constraint price_per_night_chk check(price_per_night>100 and price_per_night<10000);
CREATE TABLE Patient (
    p_id INT,
    p_fname VARCHAR(50),
    p_lname varchar(20),
    p_gender VARCHAR(10),
    p_age INT,
    p_number VARCHAR(15),
    p_address VARCHAR(100),
    p_bloodgroup VARCHAR(5),constraint p_age_chk check(p_age>10 and p_age<100 ),constraint p_id_pk primary key(p_id)
);
desc Patient;
INSERT INTO Patient VALUES
(1, 'John', 'Doe', 'Male', 30, '9876543210', 'New York', 'A+'),
(2, 'Alice', 'Smith', 'Female', 25, '8765432109', 'Chicago', 'B+'),
(3, 'David', 'Johnson', 'Male', 45, '7654321098', 'San Francisco', 'O+'),
(4, 'Emily', 'Brown', 'Female', 35, '6543210987', 'Seattle', 'AB-'),
(5, 'Michael', 'Williams', 'Male', 50, '5432109876', 'Los Angeles', 'A-'),
(6, 'Sarah', 'Davis', 'Female', 29, '4321098765', 'Miami', 'O-'),
(7, 'Daniel', 'Miller', 'Male', 33, '3210987654', 'Dallas', 'B-'),
(8, 'Laura', 'Garcia', 'Female', 40, '2109876543', 'Houston', 'AB+'),
(9, 'James', 'Wilson', 'Male', 28, '1098765432', 'Denver', 'A+'),
(10, 'Sophia', 'Martinez', 'Female', 22, '9876512340', 'Boston', 'B+');

select * from Patient;

alter table Patient modify p_fname varchar(50) not null;
alter table Patient add constraint p_lname_uni unique(p_lname);

CREATE TABLE bank_info (
    b_id INT PRIMARY KEY,
    b_Name VARCHAR(100) not null,
    b_accountType VARCHAR(50),
    b_balance DECIMAL(12, 2),
    b_no_of_staffs int,
    IFSC_Code VARCHAR(15) unique,
    b_number VARCHAR(15),
    isActive boolean,constraint b_no_of_staffs_chk check(b_no_of_staffs>10)
);
desc bank_info;

INSERT INTO bank_info 
VALUES 
(1, 'State Bank of India', 'Savings', 1000000.50, 15, 'SBIN0001234', '9876543210', TRUE),
(2, 'HDFC Bank', 'Current', 2500000.00, 20, 'HDFC0005678', '9123456789', TRUE),
(3, 'ICICI Bank', 'Savings', 1500000.75, 18, 'ICIC0002468', '9867543201', TRUE),
(4, 'Axis Bank', 'Current', 300000.00, 25, 'AXIS0003698', '9801234567', TRUE),
(5, 'Kotak Mahindra Bank', 'Fixed Deposit', 5000000.00, 12, 'KKBK0009876', '9712345678', TRUE),
(6, 'Punjab National Bank', 'Savings', 180000.00, 16, 'PUNB0007890', '9987654321', FALSE),
(7, 'Bank of Baroda', 'Savings', 750000.00, 19, 'BARB0001357', '9823456710', TRUE),
(8, 'Canara Bank', 'Current', 750000.00, 30, 'CNRB0002584', '9954321768', TRUE),
(9, 'Union Bank of India', 'Savings', 125000.00, 22, 'UBIN0003579', '9875612348', FALSE),
(10, 'IndusInd Bank', 'Fixed Deposit', 2000000.00, 14, 'INDB0006457', '9901234569', TRUE);

CREATE TABLE hospital_info (
    h_id INT PRIMARY KEY,
    h_name VARCHAR(100) not null,
    h_location VARCHAR(50),
    h_capacity INT,
    h_number VARCHAR(15),
    h_type VARCHAR(50),
    h_dept_count INT,
    h_rating DECIMAL(2, 1),constraint h_name_uni unique(h_name)
);

desc hospital_info;

INSERT INTO hospital_info
VALUES 
(1, 'City Hospital', 'New Delhi', 500, '011-23456789', 'Multispecialty', 15, 4.5),
(2, 'Apollo Medical', 'Mumbai', 800, '022-34567890', 'Private', 20, 4.7),
(3, 'Global Care', 'Chennai', 600, '044-45678901', 'Teaching', 18, 4.3),
(4, 'Fortis Clinic', 'Bangalore', 350, '080-56789012', 'Multispecialty', 12, 4.2),
(5, 'AIIMS', 'New Delhi', 1200, '011-67890123', 'Government', 25, 4.8),
(6, 'Medanta', 'Gurgaon', 700, '0124-78901234', 'Private', 19, 4.6),
(7, 'Rainbow Children', 'Hyderabad', 300, '040-89012345', 'Specialty', 8, 4.4),
(8, 'Manipal Hospital', 'Pune', 450, '020-90123456', 'Teaching', 16, 4.1),
(9, 'KIMS', 'Kochi', 550, '0484-12345678', 'Private', 14, 4.0),
(10, 'Narayana Health', 'Jaipur', 900, '0141-23456789', 'Multispecialty', 22, 4.5);

alter table hospital_info add constraint h_capacity_chk check(h_capacity>100), drop constraint h_name_uni;
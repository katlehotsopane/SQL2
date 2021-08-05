CREATE TABLE profession(
prof_id serial,
profession varchar,
CONSTRAINT prf_key PRIMARY KEY (prof_id),
CONSTRAINT prof_con_unique UNIQUE(profession)
);

CREATE TABLE zip_code(
zip_code int,
city varchar,
province varchar,
CONSTRAINT zip_key PRIMARY KEY (zip_code),
CONSTRAINT check_zip_code CHECK (zip_code<10000)
);

CREATE TABLE status(
status_id serial,
status varchar,
CONSTRAINT sts_key PRIMARY KEY (status_id)
);

CREATE TABLE interests(
interest_id serial,
interest varchar,
CONSTRAINT int_key PRIMARY KEY (interest_id)
);

CREATE TABLE interests2(
interest2_id serial,
interest2 varchar,
CONSTRAINT int2_key PRIMARY KEY (interest2_id)
);

CREATE TABLE seeking(
seeking_id serial,
seeking varchar,
CONSTRAINT sek_key PRIMARY KEY (seeking_id)
);

CREATE TABLE my_contacts(
contact_id serial,
surname varchar,
first_name varchar,
phone bigint,
email varchar,
gender varchar,
birthday date,
prof_id int REFERENCES profession(prof_id),
zip_code int REFERENCES zip_code(zip_code),
status_id int REFERENCES status(status_id),
CONSTRAINT cnt_key PRIMARY KEY (contact_id)
);

CREATE TABLE contact_seeking(
contact_id int REFERENCES my_contacts(contact_id),
seeking_id int REFERENCES seeking(seeking_id)
);

CREATE TABLE contact_interest(
contact_id int REFERENCES my_contacts(contact_id),
interest_id int REFERENCES interests(interest_id),
interest2_id int REFERENCES interests2(interest2_id)
);

INSERT INTO profession(profession)
VALUES ('Data analyst'),
('Java developer'),
('Software engineer'),
('Electrical engineer'),
('Quality Asurance tester'),
('Web Developer'),
('Athletic Traine'),
('Network engineer');

INSERT INTO zip_code(zip_code,city,province)
VALUES 
(9399,'Bloemfontein','Free-State'),
(2499,'Carltonville','Gauteng'),
(1399,'Nelspruit','Mpumalanga'),
(0999,'Polokwane','Limopo'),
(4730,'Umzinkulu','KwaZulu-Natal'),
(8999,'Gordonia','Northern-Cape'),
(6099,'Port-Elizabeth','Eastern-Cape'),
(6699,'Lusikisiki','Eastern Cape'),
(7599,'Pinelands','Western Cape'),
(8099,'Steenberg','Western-Cape'),
(1799,'Krugersdorp','Gauteng'),
(3199,'Umlazi','KwaZulu-Natal'),
(0499,'Mafikeng','North-West'),
(6499,'Queenstown','Eastern-Cape'),
(4099,'Ethekwini','KwaZulu-Natal'),
(1234,'Midrand','Gauteng');

INSERT INTO status(status)
VALUES ('single'),
('complicated'),
('searching'),
('open relationship'),
('married');

INSERT INTO interests(interest)
VALUES ('touring'),
('reading newspapers'),
('exercising'),
('Music'),
('Art & Design'),
('Video Gaming'),
('dancing'),
('Volunteering');

INSERT INTO interests2(interest2)
VALUES ('dancing'),
('reading newspapers'),
('traveling'),
('playing indoors'),
('pets'),
('role play'),
('volunteering'),
('Singing'),
('Helping people'),
('role play'),
('cooking'),
('Music'),
('pets');

INSERT INTO seeking(seeking)
VALUES ('male'),
('female'),
('other');

INSERT INTO contact_seeking(contact_id,seeking_id)
VALUES
(1,1),
(2,1),
(3,3),
(4,3),
(5,1),
(6,1),
(7,3),
(8,2),
(9,1),
(10,1),
(11,3),
(12,1),
(13,1),
(14,3),
(15,1),
(16,3),
(17,1),
(18,3),
(19,2),
(20,1);
 

INSERT INTO contact_interest(contact_id,interest_id,interest2_id)
VALUES(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15),
(16,2,1),
(17,4,3),
(18,5,6),
(19,7,9),
(20,15,1);

INSERT INTO my_contacts(surname,first_name,phone,email,gender,birthday,prof_id,zip_code,status_id)
VALUES ('Mohau', 'Itumeleng', '27 735668314', 'thembin@gmail.com', 'M', '03-03-1998', 1,'0299','2'),
		('katleho', 'Mogane', '27 783452256', 'katleho@gmail.com', 'M', '04-02-1997', 1,'0499','2'),
		('noni', 'bulls', '27 639268214', 'noni@gmail.co,za', 'F', '31-07-1997', 1,'0999','1'),
		('siphelele', 'Magala', '27 633338310', 'siphelele@gmail.co.za', 'M','21-06-1999', 1,'1799','3'),
		('lelo', 'lebsa', '27 825121449', 'lelo@thegirl.com', 'F', '11-04-2000', 1,'4099','5'),
		('amo', 'Daniels', '27 836542298', 'amo@gmail.co.za', 'M', '06-03-1998',  1,'4730','2'),
		('haley', 'david', '27 623569231', 'healey@gmail.com', 'F', '05-12-1999', 2,'9399','1'),
		('tamara-ami', 'Sekese', '27 73981023', 'tarama@gmail.com', 'M', '26-05-2000', 2,'8999','2'),
		('xolile', 'tavia', '27 635443219', 'xolile@nikki.com', 'F', '07-07-2000', 4,'6099','5'),
		('lesedy', 'Menzo', '27 639887451', 'lesedy@gmail.co.za', 'M', '21-06-2000',  1,'6499','2'),
		('sky', 'sabela', '27 635447823', 'khanyimbau@khanyi.com', 'F', '17-04-1998',3,'6099','5'),
		('bouy', 'nthona', '27 625692210', 'bouy@thegirl.com', 'F', '23-05-1999', 3,'9301','1'),
		('dylan', 'sephai', '27 8256598', 'dylan@gmail.co.za', 'M', '18-07-1999', 2,'8401','2'),
		('godwin', 'monate', '27 987692210', 'godwn@gmail.com', 'M', '20-08-1998', 5,'9320','2'),
		('black', 'thembelani', '27 431038820', 'black@gmail.com', 'F', '23-05-2000', 1,'8773','5');

 
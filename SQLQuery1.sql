create database Tenants;

--- 1) Tenant History Table

create table tenants_history(
id int identity(1,1) Primary Key NOT NULL,
profile_id int NOT NULL,   -- foreign key
house_id int NOT NULL,     -- foreign key
move_in_date Date NOT NULL,
move_out_date Date NULL,
rent int NOT NULL,
bed_type varchar(255) NULL,
move_out_reason varchar(255) NULL
)

--adding foreign key profile_id

Alter table tenants_history 
add foreign key (profile_id) references profiles(profile_id);

--adding foreign key house_id
Alter table tenants_history 
add foreign key (house_id) references houses(house_id);

--Entering data into the table TenantsHistory
insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
1, 5, '12 feb 2015', '30 Apr 2016', 7500, 'bed', 'move_out')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type, move_out_reason)
values(
2, 2, '05 Jun 2015', 11000, 'room', '')
update tenants_history set move_out_reason=NULL where id=2

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
3, 4, '28 Oct 2015', '28 Nov 2016', 12000, 'room', 'rent_change')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
4, 1, '26 Apr 2015', 8000, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
5, 3, '15 May 2015', '27 Dec 2015', 9000, 'bed', 'move_out')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
6, 8, '25 Dec 2015', 10200, 'room')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
7, 6, '20 Nov 2015', 6500, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
8, 7, '10 Nov 2015', '31 Dec 2016', 7200, 'bed', 'move_out')

select* from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
9, 9, '15 Oct 2015', 7500, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
10, 10, '20 Jun 2015', 7500, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
11, 19, '29 Aug 2015', '14 Jun 2016', 8000, 'bed', 'internal_transfer')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
12, 15, '24 Feb 2015', 11000, 'room')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
13, 12, '25 Feb 2015', 12000, 'room')

select* from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
14, 18, '07 Jan 2015', '30 Dec 2016', 7500, 'bed', 'move_out')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
15, 13, '07 Apr 2015', 6500, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
16, 17, '23 Apr 2015', 6500, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
17, 14, '10 Feb 2015', 10500, 'bed')

update tenants_history set bed_type='room' where id= 17

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, move_out_date, rent, bed_type, move_out_reason)
values(
18, 16, '16 Oct 2015', '04 Sep 2016', 8000, 'bed', 'move_out')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
19, 20, '26 Sep 2015', 7500, 'bed')

select * from tenants_history

insert into tenants_history(
profile_id, house_id, move_in_date, rent, bed_type)
values(
20, 11, '30 Sep 2015', 9500, 'bed')

select * from tenants_history

-- 2) Profile Table

create table profiles(
profile_id int identity(1,1) Primary Key NOT NULL,
first_name varchar(255)NULL,
last_name varchar(255)NULL,
email varchar(255) NOT NULL,
phone varchar(255) NOT NULL,
city varchar(255)NULL,
pan_card varchar(255) NULL,
created_at DATE NOT NULL,
gender varchar(255) NULL,
marital_status varchar(255) NULL
)

-- Enteries for Profiles Table

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Anusha', 'Pariti', 'anusha.pariti@gmail.com', 8105987404, 'Bangalore', '16 Apr 2015', 'F', '7L5FZW', 'Y')

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Ashish', 'Singh', 'ashish.singh@gmail.com',	9876890463,	'Bangalore', '23 May 2015', 'M', 'KF34MF', 'Y')

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Bhaskar', 'Maheshwari',	'bhaskar.mah@gmail.com', 9801834992, 'Bangalore', '01 May 2015', 'M', '5TYSHGF', 'N')

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Garima', 'Yadav', 'garima0191@gmail.com', 81059237004, 'Bangalore', '20 Oct 2015', 'F', '5G5FQW', 'N')

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Tanvi', 'Mann', 'tanvi.mann1907@gmail.com', 9178352769, 'Bangalore', '16 feb 2015', 'F', 'JSH48B', 'N') 

select* from profiles

insert into profiles( 
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Harish', 'Sahai', 'harish294all@gmail.com', 9876548763, 'Bangalore', '11 Nov 2015', 'M', 'MKGI2W', 'Y') 

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Kamal', 'Gera', 'kamal0094@gmail.com', 8105987404, 'Bangalore', '31 Oct 2015', 'M', 'MK34ER', 'N') 

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Tushar', 'Kapoor', 'tushar.kapoor21@gmail.com', 8926537154, 'Pune', '12 Dec 2015', 'M', 'KLF12E', 'N') 

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Shivshankar', 'Das', 'sankar.shiva730@gmail.com', 9801834992, 'Pune', '06 Oct 2015', 'M', '3RE5TY', 'Y') 

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Aditi', 'Jain', 'aditi.jain@sproxil.com', 9873123456, 'Pune', '11 Jun 2015', 'F', '5TPL4E', 'N') 

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Deepa', 'Sudhakar', 'sudhakar.deepa@gmail.com', 7896785432, 'Pune', '15 Sep 2015', 'M', '4RTYUIO', 'Y')

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Umang', 'Parejiya', 'uparejiya@gmail.com', 7896543674, 'Pune', '18 Jul 2015', 'M', '6TY4WE', 'N') 

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values('Mitali', 'Gupta', 'mitali.gupta80@gmail.com', 8796751238, 'Pune', '24 Mar 2015', 'F', '5RTYU3', 'Y') 

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Manisha', 'Yadav', 'maniyadav88@gmail.com', 9867845182, 'Delhi', '27 Jan 2015', 'F', 'LKGHY6', 'N')  

select * from profiles

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Shivani', 'Godha', 'shivani_go@nid.edu', 9878673428, 'Delhi', '19 Feb 2015', 'F', '8NM4R', 'Y')  

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Rajan', 'Pandey', 'raajanpandey@gmail.com', 8987647811, 'Delhi', '04 Sep 2015', 'M', '5TYUIO', 'N')  

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Roosena', 'Manuel', 'roseenasimimanuel@gmail.com', 9875623345, 'Delhi', '13 Apr 2015', 'F', '6TYHU', 'Y')  

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Prabhjot', 'Gill', 'prabhjotgill09@gmail.com', 9800786688, 'Delhi', '30 Dec 2015', 'M', 'GHJK34', 'N')  

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Ankita', 'Sharma', 'ankit.anku96@gmail.com', 9988789656, 'Delhi', '17 Aug 2015', 'F', 'TH67TY', 'Y')  

select * from profiles;

insert into profiles(
first_name, last_name, email, phone, city, created_at, gender, pan_card, marital_status)
values(
'Karan', 'Singh', 'karan.singh@gmail.com', 8976665768, 'Delhi', '15 Sep 2015', 'M', 'LRF34F', 'N')  

select * from profiles;


-- 3) Houses Table

create table houses(
house_id int identity(1,1) Primary Key NOT NULL,
house_type varchar(255) NULL,
bhk_details varchar(255) NULL,
bed_count int NOT NULL,
furnishing_type varchar(255) NULL,
beds_vacant int NOT NULL
)

-- Inserting data into table houses

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 5, 'unfurnished', 2)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 3, 'unfurnished', 1);

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 6, 'fully-furnished', 4);

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 5, 'unfurnished', 2)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '2 BHK', 2, 'fully-furnished', 0)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '4 BHK', 4, 'fully-furnished', 2);

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 3, 'semifurnished', 1)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 3, 'semifurnished', 0)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '2 BHK', 4, 'fully-furnished', 1)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '1 BHK', 2, 'unfurnished', 0)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '3 BHK', 3, 'fully-furnished', 1)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '1 BHK', 1, 'unfurnished', 0)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '1 BHK', 2, 'unfurnished', 1)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '2 BHK', 4, 'unfurnished', 2)

select * from houses;

insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 3, 'fully-furnished', 0)

select * from houses;

--15
insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'indepemdent', '1 BHK', 2, 'unfurnished', 1)

select * from houses;

--16
insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'apartment', '3 BHK', 3, 'fully-furnished', 0)

select * from houses;

--17
insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '3 BHK', 3, 'fully-furnished', 1)

select * from houses;

--18
insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '2 BHK', 2, 'fully-furnished', 1)

select * from houses;

--19
insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '3 BHK', 3, 'fully-furnished', 1)

select * from houses;

--20
insert into houses(
house_type, bhk_details, bed_count, furnishing_type, beds_vacant)
values(
'independent', '1 BHK', 2, 'fully-furnished', 2)

select * from houses;

-- 4) Addresses Table

create table address(
ad_id int identity(2,1) Primary Key NOT NULL,
name varchar(255) NULL,
description text NULL,
pincode int NULL,
city varchar(255) NULL,
house_id int NOT NULL --foreign key
)

-- Adding foreign key house_id

alter table address 
add foreign key (house_id) references houses(house_id);

--Entering data into address table

--1
insert into address
(name,description, city, pincode, house_id)
values('Zaanz Appartment', 'Sterling BrookSide, Opp. Kundalahalli Colony, ITPL Main Rd', 'Bangalore', 560037, 1)

select * from address;
--2
insert into address
(name,description, city, pincode, house_id)
values('Stag Saptgiri', 'No.44,Ground floor,20th cross,Sector 2 HSR Layout,Bangalore.', 'Bangalore', 560102, 2)

select * from address;

--3
insert into address
(name,description, city, pincode, house_id)
values('Sri Sai Enclave', 'No.44,First floor,20th cross,Sector 2 HSR Layout.', 'Bangalore', 560102, 3)

--4
insert into address
(name,description, city, pincode, house_id)
values('Orchids Building', 'D-208, Balaji Pristine Whitefield Main Road', 'Bangalore', 560066, 4)

select * from address;

--5
insert into address
(name,description, city, pincode, house_id)
values('Fella Homes', '#11,Annaiya Reddy Rd, Narayana Reddy Layout,Phase 2, Electronic City', 'Bangalore', 560100, 5)

select * from address;

--6
insert into address
(name,description, city, pincode, house_id)
values('Juniper Apartments', '# 595/1, 1st Floor,1st A main, Domlur Layout', 'Bangalore', 560038, 6)

--7
insert into address
(name,description, city, pincode, house_id)
values('UDB Building', 'Flat No: T1 Deccan Field Appartment Kunadanhalli main road', 'Bangalore', 560037, 7)

--8
insert into address
(name,description, city, pincode, house_id)
values('Apoorva Society', 'Flat No-202, Apoorva Apartment No-296 Vyalikaval House Building Cooperative Society Ltd Nagavara', 'Delhi', 561202, 8)

--9
insert into address
(name,description, city, pincode, house_id)
values('Stag Saptgiri', 'Flat No-202, stag saptgiri No-26 phase2 Cooperative Society', 'Delhi', 560045, 9)

--10
insert into address
(name,description, city, pincode, house_id)
values('VaK Residency', '302,#473 VAK Residency, B-Block, AECS Layout Kundalahalli,', 'Delhi', 456738, 10)

--11
insert into address
(name,description, city, pincode, house_id)
values('Sunshine Hills', 'Flat no 3, water ville apartment R.galli', 'Delhi', 100234, 11)

--12
insert into address
(name,description, city, pincode, house_id)
values('Sri Sai Apartments', '2nd House, No-80/289, Sri Hari Darshan Nilaya, Ground Floor, Bellandur', 'Delhi', 560107, 12)

--13
insert into address
(name,description, city, pincode, house_id)
values('Barvika Residency', 'B105, 1st floor, B block, Barvika Residency', 'Delhi', 5610023, 13)

--14
insert into address
(name,description, city, pincode, house_id)
values('Nestaway Building', '#157, 4th Cross, 1st Main Road, Lower Palace Orchard', 'Delhi', 546783, 14)

--15
insert into address
(name,description, city, pincode, house_id)
values('Windsor Plaza', '#301, Windsor Plaza,ITPL', 'Pune', 560025, 15)

--16
insert into address
(name,description, city, pincode, house_id)
values('Indira Society', 'No. 502, Indira Meadows, Arunodaya Colony', 'Pune', 302017, 16)

--17
insert into address
(name,description, city, pincode, house_id)
values('Sri Krishna Society', 'Flat No-211 Sri Krishna sai enclave, Hoodi village, beside Vivekananda Ashram, Mahadevapura post', 'Pune', 560048, 17)

--18
insert into address
(name,description, city, pincode, house_id)
values('Uniworld', 'D1-1201, Uniworld Garden 2', 'Pune', 543678, 18)

--19
insert into address
(name,description, city, pincode, house_id)
values('Vinayaka Residency', '49, House 1 lathangi 2nd main vinayaka housing layout, RMV 2nd stage bhoopasandra', 'Pune', 560094, 19)

--20
insert into address
(name,description, city, pincode, house_id)
values('Sun City Apartments', 'Majeera Diamond Towers,malad-west', 'Pune', 5600263, 20)

select * from address;

-- 5) Referrals Table

create table referrals(
ref_id int identity(1,1) Primary Key NOT NULL,
referrer_id int NOT NULL,  --foreign key
referrer_bonus_amount float NULL,
referral_valid tinyint CHECK (referral_valid= 0 OR referral_valid= 1) NULL,      -- 0/1 key
valid_from DATE NULL,
valid_till DATE NULL,
--CONSTRAINT ch_referrals 
)

alter table referrals
add foreign key (referrer_id) references profiles(profile_id); 

-- Inserting data into Referrals table
Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(2,2500,1,'5 Jul 2015','5 Sep 2015')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(3,2500,1,'5 Jul 2015','5 Sep 2015')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(5,1000,0,'13 Dec 2015','13 Feb 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(6,2500,0,'25 Apr 2016','24 Jun 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(10,1000,1,'01 Jul 2015','01 Sep 2015')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(12,2500,1,'12 May 2015','12 Jul 2015')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(13,2500,0,'05 Aug 2015','05 Oct 2015')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(20,1000,1,'05 Feb 2016','05 Apr, 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(2,2500,0,'12 Aug 2015','12 Sep 2015')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(5,1000,1,'18 Feb 2016','18 Apr 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(7,1000,1,'18 Feb 2016','18 Apr 2016')

DELETE FROM Referrals WHERE referrer_id=7

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(20,1500,1,'19 Jun 2016','19 Aug 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(9,2500,0,'15 Nov 2015','15 Jan 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(13,1000,1,'01 Feb 2016','01 Apr 2016')

Insert into Referrals(referrer_id,referrer_bonus_amount,referral_valid,valid_from,valid_till)
Values(5,1000,1,'25 Apr 2016','24 Jun 2016')

select * from Referrals



-- 6) Employment_details Table

create table employement_details(
id int identity(1,1) Primary Key NOT NULL,
profile_id int NOT NULL,      --Foriegn Key
latest_employer varchar(255) NULL,
official_mail_id varchar(255) NULL,
yrs_experience int NULL,
Occupational_category varchar(255) NULL
)

--Entering data into employment details table

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(1,'Sabre','mehdi.hasan@sabre.com',1,'Working')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(2,'hindustan unilever','rags.ramgas@gmail.com',2,'Working')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(3,'Technicolor','jigna.thacker@technicolor.com',1,'Working')

Insert into employement_details(profile_id,Occupational_category)
Values(4,'Student')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(5,'GE Healthcare','ruchita.save@ge.com',3,'Working')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(6,'Aditya birla','shubhi.bajpai@adityabirla.com',3,'Working')

Insert into employement_details(profile_id,Occupational_category)
Values(7,'Student')

Insert into employement_details(profile_id,Occupational_category)
Values(8,'Student')

Insert into employement_details(profile_id,Occupational_category)
Values(9,'Student')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(10,'huawei Technologies','gunjan19wadhwa@gmail.com',4,'Working')

Insert into employement_details(profile_id,Occupational_category)
Values(11,'Student')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(12,'Centurylink India','PreetInder.Sodhi@centurylink.com',2,'Working')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(13,'SAP Labs India','udit.singh@sap.com',2,'	Working')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(14,'NestAway','deepak@nestaway.com',1,'Working')

Insert into employement_details(profile_id,Occupational_category)
Values(15,'Student')

Insert into employement_details(profile_id,Occupational_category)
Values(16,'Student')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(17,'Microsoft','t-akmeh@microsoft.com',2,'Working')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(18,'Cognizant','bhavranjan.pandey@cognizant.com',2,'Working')

Insert into employement_details(profile_id,Occupational_category)
Values(19,'Student')

Insert into employement_details(profile_id,latest_employer,official_mail_id,yrs_experience,Occupational_category)
Values(20,'Tiny Mogul Games','sanchit@hike.in',3,'Working')

select * from employement_details

alter table employement_details 
add foreign key (profile_id) references profiles(profile_id);
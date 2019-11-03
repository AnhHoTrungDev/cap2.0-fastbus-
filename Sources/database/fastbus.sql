create database fastbus
go

use fastbus
go

create table role
(	
	role_id int primary key identity,
	role_name nvarchar(50) 
)
go
create table account
(
	acc_mail varchar(50) primary key,
	acc_password varchar(20), 
	acc_phone varchar(10),
	acc_name nvarchar(50),
	acc_role_id int  
	constraint fk_acc_role foreign key (acc_role_id) references role(role_id)
)
go

CREATE TABLE province (
  province_id varchar(5) primary key, 
  province_name nvarchar(100) ,
  province_type nvarchar(30) 
)
go

create table district
(
  district_id varchar(5) primary key,
  district_name nvarchar(100) ,
  district_type nvarchar(30) ,
  district_pv_id varchar(5)

  constraint fk_dt_pv foreign key (district_pv_id) references province(province_id)
)
go

create table ward
(
  ward_id varchar(5) primary key,
  ward_name nvarchar(100),
  ward_type nvarchar(30),
  ward_dt_id varchar(5)

  constraint fk_ward_dt foreign key (ward_dt_id) references district(district_id)
)
go


create table business
(
	bs_id int primary key identity,
	bs_acc_mail varchar(50),
	bs_address nvarchar(255),
	bs_pv_id varchar(5),
	bs_dt_id varchar(5),
	bs_ward_id varchar(5),
	bs_description nvarchar(max)

	constraint fk_bs_ward foreign key (bs_ward_id) references ward(ward_id),
	constraint fk_bs_pv foreign key (bs_pv_id) references province(province_id),
	constraint fk_bs_dt foreign key (bs_dt_id) references district(district_id),
	constraint fk_bs_user foreign key (bs_acc_mail) references account (acc_mail)
)
go

create table place
(
	place_id int identity,
	place_name nvarchar(50),
	place_pv_id varchar(5)

	constraint pk_place_pv_dt primary key(place_id),
	constraint fk_place_pv foreign key (place_pv_id) references province(province_id)
)
go
create table trip
(
	trip_id int identity primary key,
	trip_start_place int,
	trip_end_place int,
	trip_start_time time(7),
	trip_hour float

	constraint fk_trip_start_place foreign key (trip_start_place) references place(place_id),
	constraint fk_trip_end_place foreign key (trip_end_place) references place(place_id)
)
go
create table images
(
	img_id int primary key identity,
	img_name varchar(50),
	img_bs_id int

	constraint fk_img_bs foreign key (img_bs_id) references business(bs_id)
)
go
create table bus_type
(
	bt_id int primary key identity,
	bt_name nvarchar(50),
	bt_seat_number int,
	bt_floor int
)
go

create table bus
(
	bus_id int primary key identity,
	bus_license nvarchar(50),
	bus_bs_id int,
	bus_bt_id int,

	constraint fk_bus_bs foreign key (bus_bs_id) references business(bs_id),
	constraint fk_bus_bt foreign key (bus_bt_id) references bus_type(bt_id)
)
go

create table seatbooking
(
	seatb_bus_id int,
	seatb_trip_id int,
	seatb_user_mail varchar(50),
	seatb_name varchar(5),
	seatb_date date

	constraint fk_seat_bus foreign key (seatb_bus_id) references bus(bus_id),
	constraint fk_seat_trip foreign key (seatb_trip_id) references trip(trip_id),
	constraint fk_seat_user foreign key (seatb_user_mail) references account(acc_mail)
)
go



create table rating
(
	rating_id int identity primary key,
	rating_acc_mail varchar(50),	
	rating_bs_id int,
	rating_point int,
	rating_number int

	constraint fk_rating_user foreign key (rating_acc_mail) references account(acc_mail),
	constraint fk_rating_bs foreign key (rating_bs_id) references business(bs_id)
)
go

create table comment
(
	comment_id int identity primary key,
	comment_acc_mail varchar(50),	
	comment_bs_id int,
	comment_text varchar(max)

	constraint fk_comment_user foreign key (comment_acc_mail) references account(acc_mail),
	constraint fk_comment_bs foreign key (comment_bs_id) references business(bs_id)
)
go




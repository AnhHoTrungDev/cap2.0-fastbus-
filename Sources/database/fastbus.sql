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
	acc_password varchar(50),
	acc_name nvarchar(50),
	acc_phone varchar(12),
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
	bs_ward_id varchar(5)

	constraint fk_bs_ward foreign key (bs_ward_id) references ward(ward_id),
	constraint fk_bs_pv foreign key (bs_pv_id) references province(province_id),
	constraint fk_bs_dt foreign key (bs_dt_id) references district(district_id),
	constraint fk_bs_user foreign key (bs_acc_mail) references account (acc_mail)
)
go

create table bus_type
(
	bt_id int primary key identity,
	bt_name nvarchar(50),
	bt_seat_number int,
	bt_description nvarchar(max),
	bt_floor int
)
go

create table bus
(
	bus_id int primary key identity,
	bus_license nvarchar(50),
	bus_starttime time(7),
	bus_bs_id int,
	bus_bt_id int

	constraint fk_bus_bs foreign key (bus_bs_id) references business(bs_id),
	constraint fk_bus_bt foreign key (bus_bt_id) references bus_type(bt_id)
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
	trip_date date,
	trip_start_time time(7),
	trip_price float

	constraint fk_trip_start_place foreign key (trip_start_place) references place(place_id),
	constraint fk_trip_end_place foreign key (trip_end_place) references place(place_id)
)
go
create table seat
(
	seat_id int primary key identity,
	seat_name nvarchar(50),
	seat_floor int,
	seat_bus_id int,
	seat_status int -- 0: empty, 1:da dat  

	constraint fk_seat_bus foreign key (seat_bus_id) references bus(bus_id)
)
go


create table ticket
(
	ticket_id int identity,
	ticket_trip_id int,
	ticket_seat_id int,
	ticket_user_email varchar(50)

	constraint pk_id_trip_seat_user primary key(ticket_id,ticket_trip_id,ticket_seat_id,ticket_user_email),
	constraint fk_tk_trip foreign key (ticket_trip_id) references trip(trip_id),
	constraint fk_tk_seat foreign key (ticket_seat_id) references seat(seat_id),
	constraint fk_tk_user foreign key (ticket_user_email) references account(acc_mail)
)
go




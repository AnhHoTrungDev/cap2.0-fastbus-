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
	constraint fk_bs_dt foreign key (bs_dt_id) references district(district_id)
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
	place_pv_id varchar(5),
	place_dt_id varchar(5)

	constraint pk_place_pv_dt primary key(place_id),
	constraint fk_place_pv foreign key (place_pv_id) references province(province_id),
	constraint fk_place_dt foreign key (place_dt_id) references district(district_id)

)
go

create table route
(
	route_id int primary key identity,
	route_start_palce int,
	route_end_pace int

	constraint fk_route_sp foreign key (route_start_palce) references place(place_id),
	constraint fk_place_ep foreign key (route_end_pace) references place(place_id)

)
go

create table trip
(
	trip_id int identity,
	trip_route_id int,
	trip_date date,
	trip_start_time time(7),
	trip_end_time time(7)

	constraint pk_id_route_date_st primary key(trip_id,trip_route_id,trip_date,trip_start_time),
	constraint fk_trip_route foreign key (trip_route_id) references route(route_id)
)
go
create table seat
(
	seat_id int primary key identity,
	seat_name nvarchar(50),
	seat_floor int
)
go

create table bus_seat
(
	bst_bus_id int,
	bts_seat_id int,
	bts_status int

	constraint pk_bus_seat primary key(bst_bus_id,bts_seat_id),
	constraint fk_bst_bus foreign key (bst_bus_id) references bus(bus_id),
	constraint fk_bst_seat foreign key (bts_seat_id) references seat(seat_id)
)
go




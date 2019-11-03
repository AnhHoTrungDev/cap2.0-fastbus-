-- use fastbus
------------------ record role -----------------
Insert into role(role_name) values
(N'administrator'),(N'customer'),(N'business')
go
---------------- record account -----------------
insert into account(acc_mail,acc_password,acc_name,acc_phone,acc_role_id) values
('admin@gmail.com.vn','123456',N'Administrator','0357708105',1),
('phuongtrangbmt@gmail.com.vn',N'123456','Nhà Xe Phương Trang','0358887878',3),
('maivy@gmail.com.vn','123456',N'Nhà Xe Mai Vy','0357708105',3),
('quocdat@gmail.com.vn','123456',N'Nhà Xe Quốc Đạt','0357708105',3),
('mailinh@gmail.com.vn','123456',N'Nhà Xe Mai Linh','0357708105',3),
('quoclh@gmail.com.vn','123456',N'Lê Hoàng Quốc','0357708105',2),
('anhht@gmail.com.vn','123456',N'Hồ Trung Anh','0357708105',2),
('vietnv@gmail.com.vn','123456',N'Ngô Văn Việt','0357708105',2)
--------------- place---------------
insert into place (place_pv_id,place_name) values
('66','643'),('66','644'),('66','645'),('66','646'),('66','647'),
('66','648'),('66','649'),('66','650'),('66','651'),('66','652'),
('66','654'),('66','655'),('66','656'),('66','657')


---------------- record bus type -----------------

insert into business(bs_acc_mail,bs_address,bs_ward_id,bs_dt_id,bs_pv_id) values
('phuongtrangbmt@gmail.com.vn',N'63 Ngô Gia Tự','24121','643','66'),
('maivy@gmail.com.vn',N'63 Ngô Gia Tự','24121','643','66'),
('mailinh@gmail.com.vn',N'20 Lê Thị Hồng Gấm','24127','643','66'),
('quocdat@gmail.com.vn',N'110 Trần Cảnh','24136','643','66')

------------------------ trip---------------------------

insert into trip (trip_start_place,trip_end_place,trip_start_time,trip_hour) values
(1,2,'17:30:00',10.0),
(1,3,'17:30:00',10.0),
(1,4,'17:30:00',10.0),
(1,5,'17:30:00',10.0),
(4,1,'17:30:00',10.0),
(3,1,'17:30:00',10.0),
(2,1,'17:30:00',10.0)
select * from trip
---------------- record bus type -----------------
insert into bus_type (bt_name,bt_floor,bt_seat_number) values
(N'Xe 16 Chỗ',1,16), 
(N'Xe 30 Chỗ',1,30),
(N'Xe 45 Chỗ',1,45),
(N'Xe LimoShine',2,24),
(N'Xe Giường Nằm',2,30)
---------------- record bus -----------------
insert into bus(bus_license,bus_bs_id,bus_bt_id) values
('47K2-34564',2,5),
('47K2-42351',2,5),
('47K2-34524',2,4),
('47K2-34584',3,5),
('47K2-84635',3,4),
('47K2-77536',4,5),
('47K2-37766',4,5),
('47K2-82455',4,5),
('47K2-11353',5,5),
('47K2-36179',5,5)
select * from trip
select * from account
---------------- record seat -----------------


---------------- record seat -----------------

insert into seatbooking(seatb_trip_id,seatb_user_mail,seatb_name,seatb_date) values
(1,'anhht@gmail.com.vn',N'A1D','2019-10-22'),(1,'anhht@gmail.com.vn',N'A2D','2019-10-22'),(1,'anhht@gmail.com.vn',N'A3D','2019-10-22'),(1,'anhht@gmail.com.vn',N'A4D','2019-10-22'),(1,'anhht@gmail.com.vn',N'A5D','2019-10-22'),(1,'anhht@gmail.com.vn',N'A6D','2019-10-22'),
(1,'anhht@gmail.com.vn',N'B1D','2019-10-22'),(1,'anhht@gmail.com.vn',N'B2D','2019-10-22'),(1,'anhht@gmail.com.vn',N'B3D','2019-10-22'),(1,'anhht@gmail.com.vn',N'B4D','2019-10-22'),(1,'anhht@gmail.com.vn',N'B5D','2019-10-22'),(1,'anhht@gmail.com.vn',N'B6D','2019-10-22'),
(1,'anhht@gmail.com.vn',N'C1D','2019-10-22'),(1,'anhht@gmail.com.vn',N'C2D','2019-10-22'),(1,'anhht@gmail.com.vn',N'C3D','2019-10-22'),(1,'anhht@gmail.com.vn',N'C4D','2019-10-22'),(1,'anhht@gmail.com.vn',N'C5D','2019-10-22'),(1,'anhht@gmail.com.vn',N'C6D','2019-10-22'),
(2,'anhht@gmail.com.vn',N'A1T','2019-10-22'),(2,'anhht@gmail.com.vn',N'A2T','2019-10-22'),(2,'anhht@gmail.com.vn',N'A3T','2019-10-22'),(2,'anhht@gmail.com.vn',N'A4T','2019-10-22'),(2,'anhht@gmail.com.vn',N'A5T','2019-10-22'),(2,'anhht@gmail.com.vn',N'A6T','2019-10-22'),
(2,'anhht@gmail.com.vn',N'B1T','2019-10-22'),(2,'anhht@gmail.com.vn',N'B2T','2019-10-22'),(2,'anhht@gmail.com.vn',N'B3T','2019-10-22'),(2,'anhht@gmail.com.vn',N'B4T','2019-10-22'),(2,'anhht@gmail.com.vn',N'B5T','2019-10-22'),(2,'anhht@gmail.com.vn',N'B6T','2019-10-22'),
(2,'anhht@gmail.com.vn',N'C1T','2019-10-22'),(2,'anhht@gmail.com.vn',N'C2T','2019-10-22'),(2,'anhht@gmail.com.vn',N'C3T','2019-10-22'),(2,'anhht@gmail.com.vn',N'C4T','2019-10-22'),(2,'anhht@gmail.com.vn',N'C5T','2019-10-22'),(2,'anhht@gmail.com.vn',N'C6T','2019-10-22')

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

---------------- record bus type -----------------

insert into business(bs_acc_mail,bs_address,bs_ward_id,bs_dt_id,bs_pv_id) values
('phuongtrangbmt@gmail.com.vn',N'63 Ngô Gia Tự','24121','643','66'),
('maivy@gmail.com.vn',N'63 Ngô Gia Tự','24121','643','66'),
('mailinh@gmail.com.vn',N'20 Lê Thị Hồng Gấm','24127','643','66'),
('quocdat@gmail.com.vn',N'110 Trần Cảnh','24136','643','66')
---------------- record bus type -----------------
insert into bus_type (bt_name,bt_description,bt_floor,bt_seat_number) values
(N'Xe 16 Chỗ',N'',1,16), 
(N'Xe 30 Chỗ',N'',1,30),
(N'Xe 45 Chỗ',N'',1,45),
(N'Xe LimoShine',N'',2,24),
(N'Xe Giường Nằm',N'',2,30)
---------------- record bus -----------------
insert into bus(bus_license,bus_starttime,bus_bs_id,bus_bt_id) values
('47K2-34564','17:30:00',2,5),
('47K2-42351','18:30:00',2,5),
('47K2-34524','20:00:00',2,4),
('47K2-34584','17:30:00',3,5),
('47K2-84635','18:30:00',3,4),
('47K2-77536','19:30:00',4,5),
('47K2-37766','17:30:00',4,5),
('47K2-82455','18:00:00',4,5),
('47K2-11353','17:30:00',5,5),
('47K2-36179','18:30:00',5,5)

---------------- record seat -----------------

insert into seat(seat_name,seat_floor,seat_bus_id,seat_status) values
(N'A1D',1,10,1),(N'A2D',1,10,1),(N'A3D',1,10,1),(N'A4D',1,10,1),(N'A5D',1,10,1),(N'A6D',1,10,1),
(N'B1D',1,10,1),(N'B2D',1,10,1),(N'B3D',1,10,1),(N'B4D',1,10,1),(N'B5D',1,10,1),(N'B6D',1,10,1),
(N'C1D',1,10,1),(N'C2D',1,10,1),(N'C3D',1,10,1),(N'C4D',1,10,1),(N'C5D',1,10,1),(N'C6D',1,10,1),
(N'A1T',2,10,1),(N'A2T',2,10,1),(N'A3T',2,10,1),(N'A4T',2,10,1),(N'A5T',2,10,1),(N'A6T',2,10,1),
(N'B1T',2,10,1),(N'B2T',2,10,1),(N'B3T',2,10,1),(N'B4T',2,10,1),(N'B5T',2,10,1),(N'B6T',2,10,1),
(N'C1T',2,10,1),(N'C2T',2,10,1),(N'C3T',2,10,1),(N'C4T',2,10,1),(N'C5T',2,10,1),(N'C6T',2,10,1)

---------------- record seat -----------------

insert into place (place_pv_id,place_dt_id) values
('66','643'),('66','644'),('66','645'),('66','646'),('66','647'),
('66','648'),('66','649'),('66','650'),('66','651'),('66','652'),
('66','654'),('66','655'),('66','656'),('66','657')


insert into trip (trip_start_place,trip_end_place,trip_date,trip_start_time) values
(1,2,'09-29-2019','17:30:00'),
(1,3,'09-29-2019','17:30:00'),
(1,4,'09-29-2019','17:30:00'),
(1,5,'09-29-2019','17:30:00'),
(4,1,'09-29-2019','17:30:00'),
(3,1,'09-29-2019','17:30:00'),
(2,1,'09-29-2019','17:30:00')
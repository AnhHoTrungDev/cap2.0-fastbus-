
------------------- load place ----------------------------------

select place_id,place_name,place_pv_id from place 

------------------- tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi--------------------
select a.acc_name, t.trip_id ,p.place_name,p1.place_name,t.trip_start_time, t.trip_start_date from trip t
inner join place p on p.place_id=t.trip_start_place and t.trip_start_date='2019/10/29' and t.trip_start_time='17:30'
inner join place p1 on p1.place_id=t.trip_end_place
inner join province d on p.place_pv_id= d.province_id and p.place_name like N'%Hà Nội%'
inner join province d1 on p1.place_pv_id=d1.province_id and p1.place_name like N'%Đà Nẵng%'
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on b.bus_bs_id=bs.bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail
 
 ------------------- end tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi--------------------
 select * from Place
select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_total_time, t.trip_price,t.trip_status from trip t
inner join place p on p.place_id=t.trip_start_place and p.place_name like  N'%Đắk Lắk%' 
inner join place p1 on p1.place_id=t.trip_end_place and p1.place_name like N'%Đà Nẵng%' and t.trip_start_time='17:30'
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on b.bus_bs_id=bs.bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail

--------------- check login------------------
select acc_mail,acc_password from account where acc_mail like 'admin@gmail.com.vn' and acc_password like '123456';
select * from province
select * from trip
select * from business

-------------load seat -------------------------
select * from trip
select seatb_id,seatb_trip_id,seatb_user_mail,seatb_name,seatb_date from seatbooking where seatb_trip_id=1

--------------------- insert account ----------------------

insert into account (acc_mail, acc_password, acc_phone, acc_name, acc_role_id) values('','','',N'',3)

---------------------- check duplicate -----------------

select * from account where acc_mail like N'admin@gmail.com.vn'

------------------------- inssert thong tin khach hang.--------------------

select acc_name, acc_mail, acc_phone, acc_password from account where acc_name=N'Administrator'

------------------ get list trip by id business and startdate

select t.trip_id, t.trip_bus_id, a.acc_name,p.place_name,p1.place_name,t.trip_start_date, t.trip_start_time, t.trip_end_time, t.trip_price from trip t 
				inner join place p on p.place_id=t.trip_start_place  
				inner join place p1 on p1.place_id=t.trip_end_place 
				inner join province d on p.place_pv_id= d.province_id 
				inner join province d1 on p1.place_pv_id=d1.province_id 
				inner join bus b on b.bus_id=t.trip_bus_id 
				inner join business bs on b.bus_bs_id=bs.bs_id and bs.bs_id=5 and trip_start_date='2019-11-16'
				inner join account a on bs.bs_acc_mail=a.acc_mail










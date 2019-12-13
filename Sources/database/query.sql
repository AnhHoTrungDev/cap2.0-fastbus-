
------------------- load place ----------------------------------
select * from seatbooking
// select vs điều kiện chuyến vs ngày đi xem nào
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
select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_end_time, t.trip_price,t.trip_status from trip t
inner join place p on p.place_id=t.trip_start_place and p.place_name like  N'%Đắk Lắk%' 
inner join place p1 on p1.place_id=t.trip_end_place and p1.place_name like N'%Đà Nẵng%' and t.trip_start_time='17:30'
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on b.bus_bs_id=bs.bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail

 ------------------- end tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi--------------------
 select * from Place
select bs.bs_id,a.acc_name, p.place_name,p1.place_name, COUNT(acc_name) from trip t
inner join place p on p.place_id=t.trip_start_place  
inner join place p1 on p1.place_id=t.trip_end_place
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on b.bus_bs_id=bs.bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail
where p1.place_name not in(N'Đà Nẵng')
group by p1.place_name,p.place_name, acc_name, bs.bs_id
order by p1.place_name  asc
-----------------------------------
select  * from trip t
select * from bus
select * from business
inner join place p1 on p1.place_id=t.trip_end_place
where p1.place_name not in(N'Đà Nẵng')
group by p1.place_name

--------------- check login------------------
select acc_mail,acc_password from account where acc_mail like 'admin@gmail.com.vn' and acc_password like '123456';
select * from province
select * from trip
select * from business

-------------load seat -------------------------
select * from account
select seatb_id,seatb_trip_id,seatb_user_mail,seatb_name,seatb_date from seatbooking where seatb_trip_id=1
select seatb_trip_id,seatb_start_date,seatb_user_mail,seatb_name,seatb_date from seatbooking
truncate table seatbooking
--------------------- insert account ----------------------

insert into account (acc_mail, acc_password, acc_phone, acc_name, acc_role_id) values('','','',N'',3)

---------------------- check duplicate -----------------

select * from account where acc_mail like N'admin@gmail.com.vn'

------------------------- inssert thong tin khach hang.--------------------=N'

select acc_name, acc_mail, acc_phone, acc_password from account where acc_name=N'Administrator'

update account set acc_name=N'', acc_phone='', acc_address=N'' where 

------------------ get list trip by id business and startdate

select t.trip_id, t.trip_bus_id, a.acc_name,p.place_name,p1.place_name,t.trip_start_date, t.trip_start_time, t.trip_end_time, t.trip_price from trip t 
				inner join place p on p.place_id=t.trip_start_place  
				inner join place p1 on p1.place_id=t.trip_end_place 
				inner join province d on p.place_pv_id= d.province_id 
				inner join province d1 on p1.place_pv_id=d1.province_id 
				inner join bus b on b.bus_id=t.trip_bus_id 
				inner join business bs on b.bus_bs_id=bs.bs_id and bs.bs_id=5 and trip_start_date='2019-11-16'
				inner join account a on bs.bs_acc_mail=a.acc_mail

---------------------------

select acc_mail,acc_password,acc_name,acc_role_id from account where acc_mail= and acc_password=

select * from account
select * from business
select seatb_trip_id,seatb_start_date,seatb_user_mail, count(*)as total
from seatbooking where seatb_user_mail='fastbuscompany@gmail.com'  
group by seatb_trip_id,seatb_start_date,seatb_user_mail order by seatb_start_date desc
select * from  seatbooking



select * from seatbooking where seatb_user_mail='fastbuscompany@gmail.com' and seatb_start_date='2019-12-03' and seatb_trip_id=105 order by seatb_name asc
select acc_name,acc_mail,acc_role_id,b.bs_id from account a
inner join business b on a.acc_mail=b.bs_acc_mail 
select * from trip where trip_id=105
select * from bus where bus_id=18
select * from business where bs_id=7
select * from seatbooking

select seatb_id, seatb_trip_id,a.acc_name,p.place_name,p1.place_name, seatb_name, seatb_date, seatb_start_date,t.trip_price from seatbooking s
inner join trip t on t.trip_id=s.seatb_trip_id and seatb_trip_id=105 and seatb_status=0
inner join place p on t.trip_start_place=p.place_id and seatb_start_date='2019-12-20'
inner join place p1 on t.trip_end_place=p1.place_id
inner join account a on s.seatb_user_mail = a.acc_mail and seatb_user_mail='fastbuscompany@gmail.com'
order by seatb_name asc
			where seatb_user_mail=? and seatb_start_date=? and seatb_trip_id=? order by seatb_name asc

select seatb_trip_id,s.seatb_start_date,s.seatb_user_mail,count(*)  from seatbooking s 
inner join trip t on t.trip_id=s.seatb_trip_id and s.seatb_status=0
inner join bus b on t.trip_bus_id=b.bus_id
inner join business bs on b.bus_bs_id= bs.bs_id and bs.bs_acc_mail='mailinh@gmail.com.vn'
inner join account a on s.seatb_user_mail=a.acc_mail
group by seatb_trip_id,seatb_user_mail,s.seatb_start_date
order by s.seatb_start_date desc



select seatb_id,seatb_trip_id,seatb_user_mail,seatb_name,seatb_date,seatb_start_date from seatbooking  where seatb_trip_id= 105 and seatb_start_date= '2019-12-03'
select * from account
select seatb_trip_id,seatb_start_date,seatb_user_mail, count(*) as 'total'  
				from seatbooking where seatb_user_mail= 'fastbuscompany@gmail.com' 
				group by seatb_trip_id,seatb_start_date,seatb_user_mail order by seatb_start_date desc 

select seatb_trip_id,seatb_start_date,seatb_user_mail, count(*) as 'total' from seatbooking s
inner join trip t on t.trip_id=s.seatb_trip_id and t.trip_start_time ='17:00:00' and seatb_start_date='2019-12-3'
group by seatb_user_mail,seatb_start_date,seatb_trip_id
-----------------------------------------------
select b.bus_id,b.bus_license from bus b inner join business bs on bs.bs_id=b.bus_bs_id and bs.bs_acc_mail='mailinh@gmail.com.vn'
select trip_start_place,trip_end_place,trip_bus_id,trip_price,trip_start_time,trip_end_time,trip_status from trip 

--------------------------------------------------------

select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_end_time, t.trip_price,t.trip_status from trip t
inner join place p on p.place_id=t.trip_start_place and p.place_name like  N'%Đắk Lắk%' 
inner join place p1 on p1.place_id=t.trip_end_place and p1.place_name like N'%Đà Nẵng%' and t.trip_start_time <> '17:30:00'
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on b.bus_bs_id=bs.bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail
select * from trip
delete from trip where trip_id=120
update trip set trip_status=1 where trip_id=105
select trip_id, trip_bus_id,trip_status from   where trip_start_place in(select place_id from place where place_name in (N'Đà Nẵng', N'Đắk Lắk') )
						and trip_end_place in (select place_id from place where place_name in (N'Đà Nẵng', N'Đắk Lắk') ) and trip_start_time='17:00:00'

						place 

select seatb_id,seatb_name,seatb_status from seatbooking where seatb_trip_id=105 and seatb_name in ('A6','A5') and seatb_start_date='2019-12-03'

update trip set trip_price=10000 where trip_id=105
select * from business
select  t.trip_id,(COUNT(*)*t.trip_price) from seatbooking s 
inner join trip t on s.seatb_trip_id =t.trip_id and s.seatb_start_date>=getdate()
inner join bus b on t.trip_bus_id=b.bus_id and s.seatb_status=1
inner join business bs on bs.bs_id =b.bus_bs_id and bs.bs_acc_mail='mailinh@gmail.com.vn'
group by t.trip_id, t.trip_price

select COUNT(*) from seatbooking s
inner join trip t on s.seatb_trip_id =t.trip_id and s.seatb_start_date='2019-12-03'
inner join bus b on t.trip_bus_id=b.bus_id and s.seatb_status=1
inner join business bs on bs.bs_id =b.bus_bs_id and bs.bs_acc_mail='mailinh@gmail.com.vn'

select COUNT(*) as 'total' from bus b
inner join business bs on bs.bs_id =b.bus_bs_id and bs.bs_acc_mail='mailinh@gmail.com.vn'

select COUNT(*) as 'total' from seatbooking s
inner join trip t on s.seatb_trip_id =t.trip_id and s.seatb_start_date<=getdate()
inner join bus b on t.trip_bus_id=b.bus_id and s.seatb_status=0
inner join business bs on bs.bs_id =b.bus_bs_id and bs.bs_acc_mail='mailinh@gmail.com.vn'
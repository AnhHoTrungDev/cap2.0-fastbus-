
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
select a.acc_name, t.trip_id ,p.place_name,p1.place_name,t.trip_start_time, t.trip_start_date from trip t
inner join place p on p.place_id=t.trip_start_place
inner join place p1 on p1.place_id=t.trip_end_place
inner join province d on p.place_pv_id= d.province_id
inner join province d1 on p1.place_pv_id=d1.province_id
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on b.bus_bs_id=bs.bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail
------------------- tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi bang id--------------------
select t.trip_id ,d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t
inner join place p on p.place_id=t.trip_start_place and trip_id=1
inner join place p1 on p1.place_id=t.trip_end_place
inner join district d on p.place_dt_id=d.district_id 
inner join district d1 on p1.place_dt_id=d1.district_id

--------------- check login------------------
select acc_mail,acc_password from account where acc_mail like 'admin@gmail.com.vn' and acc_password like '123456';
select * from province
select * from trip
select * from business

-------------load seat -------------------------
select s.seat_id,s.seat_name,s.seat_bus_id,s.seat_status from seat s 
inner join bus b on s.seat_bus_id=b.bus_id
inner join business bs on bs.bs_id=b.bus_bs_id
inner join trip t on bs.bs_id=t.trip_bs_id and t.trip_id=1




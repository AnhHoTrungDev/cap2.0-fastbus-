------------------- tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi--------------------
select d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t
inner join place p on p.place_id=t.trip_start_place and t.trip_date='9/29/2019' and t.trip_start_time='17:30'
inner join place p1 on p1.place_id=t.trip_end_place
inner join district d on p.place_dt_id=d.district_id and d.district_name like N'%Buôn Hồ%'
inner join district d1 on p1.place_dt_id=d1.district_id and d1.district_name like N'%Buôn Ma Thuột%'
inner join business bs on bs.bs_id=t.trip_bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail
 
 ------------------- end tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi--------------------

select t.trip_id ,d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t
inner join place p on p.place_id=t.trip_start_place
inner join place p1 on p1.place_id=t.trip_end_place
inner join district d on p.place_dt_id=d.district_id 
inner join district d1 on p1.place_dt_id=d1.district_id
------------------- tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi bang id--------------------
select t.trip_id ,d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t
inner join place p on p.place_id=t.trip_start_place and trip_id=1
inner join place p1 on p1.place_id=t.trip_end_place
inner join district d on p.place_dt_id=d.district_id 
inner join district d1 on p1.place_dt_id=d1.district_id

--------------- check login------------------
select acc_mail,acc_password from account where acc_mail like 'admin@gmail.com.vn' and acc_password like '123456';
select * from seat
select * from trip
select * from business

-------------load seat -------------------------
select s.seat_id,s.seat_name,s.seat_bus_id,s.seat_status from seat s 
inner join bus b on s.seat_bus_id=b.bus_id
inner join business bs on bs.bs_id=b.bus_bs_id
inner join trip t on bs.bs_id=t.trip_bs_id and t.trip_id=1

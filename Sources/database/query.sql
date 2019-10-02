------------------- tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi--------------------
select a.acc_name,d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t
inner join route r on t.trip_route_id=r.route_id and t.trip_date='9/29/2019' and t.trip_start_time='17:30'
inner join place p on p.place_id=r.route_start_palce
inner join place p1 on p1.place_id=r.route_end_pace
inner join district d on p.place_dt_id=d.district_id and d.district_name like N'%Liên Chiểu%'
inner join district d1 on p1.place_dt_id=d1.district_id and d1.district_name like N'%Buôn Ma Thuột%'
inner join bus b on b.bus_id=t.trip_bus_id
inner join business bs on bs.bs_id=b.bus_bs_id 
inner join account a on bs.bs_acc_mail=a.acc_mail
 
 ------------------- end tìm kiếm chuyến xe theo địa điểm đến, địa điểm đi, thời gian đi, ngày đi--------------------
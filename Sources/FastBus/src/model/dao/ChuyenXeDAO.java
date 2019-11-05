/**
 * @FileName	: ChuyenXeDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Sep 21, 2019			QuocLH				Create
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.ChuyenXe;

public class ChuyenXeDAO {

	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;

	List<ChuyenXe> listTrip = null;

	/**
	 * get all place in database
	 * 
	 * @return List<DiaDiem>
	 */
	public List<ChuyenXe> getListTripDAO(String startPlace, String endPlace, String startDate, String startTime) {
		connection = con.getConnect();
		listTrip = new ArrayList<ChuyenXe>();
		String selectPlace = null;
		String innerStartPlace="inner join place p on p.place_id=t.trip_start_place and t.trip_start_date='"+startDate+"' and t.trip_start_time='"+startTime+"'\r\n";
		String innerEndPlace="inner join place p1 on p1.place_id=t.trip_end_place\r\n" ;
		String innerStartProvince="inner join province d on p.place_pv_id= d.province_id and p.place_name like N'%"+startPlace+"%'\r\n";
		String innerEndProvince= "inner join province d1 on p1.place_pv_id=d1.province_id and p1.place_name like N'%"+endPlace+"%'\r\n";
		if (startPlace == "" && endPlace == "" && startDate == "" && startTime == "") {
			innerStartPlace="inner join place p on p.place_id=t.trip_start_place\r\n";
			innerStartProvince="inner join province d on p.place_pv_id= d.province_id\r\n";
			innerEndProvince="inner join province d1 on p1.place_pv_id=d1.province_id\r\n";
		} else if(endPlace == "" && startTime == "" && startDate == ""){ 
			innerStartPlace="inner join place p on p.place_id=t.trip_start_place\r\n";
			innerEndProvince= "inner join province d1 on p1.place_pv_id=d1.province_id\r\n";
		} else if(startDate == "" && startTime == "") {
			innerStartPlace="inner join place p on p.place_id=t.trip_start_place \r\n";
		} else if(startTime == "") {
			innerStartPlace="inner join place p on p.place_id=t.trip_start_place and t.trip_start_date='"+startDate+"' \r\n";
		}
		
		selectPlace = "select t.trip_id,a.acc_name,p.place_name,p1.place_name,t.trip_start_time, t.trip_start_date, t.trip_price from trip t\r\n" + 
				innerStartPlace + innerEndPlace + innerStartProvince + innerEndProvince + 
				"inner join bus b on b.bus_id=t.trip_bus_id\r\n" + 
				"inner join business bs on b.bus_bs_id=bs.bs_id \r\n" + 
				"inner join account a on bs.bs_acc_mail=a.acc_mail";
		
		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();

			while (rs.next()) {
				ChuyenXe trip = new ChuyenXe(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(6), rs.getString(5),rs.getFloat(7));
				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}

	public ChuyenXe getListTripByIdDAO(int idTrip) {
		connection = con.getConnect();
		ChuyenXe trip = null;

		String selectInfor = "select t.trip_id,a.acc_name,p.place_name,p1.place_name,t.trip_start_time, t.trip_start_date, t.trip_price from trip t\r\n"+
				"inner join place p on p.place_id=t.trip_start_place and trip_id="+idTrip+"\r\n"+
				"inner join place p1 on p1.place_id=t.trip_end_place\r\n" + 
				"inner join province d on p.place_pv_id= d.province_id\r\n" + 
				"inner join province d1 on p1.place_pv_id=d1.province_id\r\n" + 
				"inner join bus b on b.bus_id=t.trip_bus_id\r\n" + 
				"inner join business bs on b.bus_bs_id=bs.bs_id \r\n" + 
				"inner join account a on bs.bs_acc_mail=a.acc_mail";

		try {
			ps = connection.prepareStatement(selectInfor);
			rs = ps.executeQuery();
			while (rs.next()) {
				trip = new ChuyenXe(rs.getInt("trip_id"), rs.getString("acc_name"), rs.getString(3), rs.getString(4),
						rs.getString(6), rs.getString(5), rs.getFloat(7));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return trip;

	}
	
	public static void main(String[] args) {
		System.out.println(new ChuyenXeDAO().getListTripByIdDAO(1));
	}
}

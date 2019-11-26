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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;

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
		String selectPlace = "select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_total_time, t.trip_price,t.trip_status from trip t\r\n" + 
				"inner join place p on p.place_id=t.trip_start_place and p.place_name like  N'%"+startPlace+"%' \r\n" + 
				"inner join place p1 on p1.place_id=t.trip_end_place and p1.place_name like N'%"+endPlace+"%' and t.trip_start_time='"+startTime+"'\r\n" + 
				"inner join bus b on b.bus_id=t.trip_bus_id\r\n" + 
				"inner join business bs on b.bus_bs_id=bs.bs_id \r\n" + 
				"inner join account a on bs.bs_acc_mail=a.acc_mail";
		
		
				
		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();

			while (rs.next()) {
				ChuyenXe trip = new ChuyenXe(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6),
						        startDate, rs.getString(7), rs.getString(7), rs.getInt(8), rs.getFloat(9), rs.getInt(10));

				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}

	public ChuyenXe getListTripByIdDAO(int idTrip,String startDate) {
		connection = con.getConnect();
		ChuyenXe trip = null;

		String selectInfor = "select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_total_time, t.trip_price,t.trip_status from trip t\r\n" + 
				"inner join place p on p.place_id=t.trip_start_place \r\n"  + 
				"inner join place p1 on p1.place_id=t.trip_end_place \r\n" + 
				"inner join bus b on b.bus_id=t.trip_bus_id\r\n" + 
				"inner join business bs on b.bus_bs_id=bs.bs_id \r\n" + 
				"inner join account a on bs.bs_acc_mail=a.acc_mail and t.trip_id=?";

		try {
			ps = connection.prepareStatement(selectInfor);
			ps.setInt(1, idTrip);
			rs = ps.executeQuery();
			while (rs.next()) {
				trip = new ChuyenXe(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6),
						startDate, rs.getString(7), rs.getString(7), rs.getInt(8), rs.getFloat(9), rs.getInt(10));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return trip;

	}

	public List<ChuyenXe> getListTripByIdBusinessDAO(String idBusiness) {
		connection = con.getConnect();
		listTrip = new ArrayList<ChuyenXe>();

		String selectPlace = "select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_total_time, t.trip_price,t.trip_status from trip t\r\n"
				+ "inner join place p on p.place_id=t.trip_start_place  \r\n"
				+ "inner join place p1 on p1.place_id=t.trip_end_place \r\n"
				+ "inner join bus b on b.bus_id=t.trip_bus_id \r\n"
				+ "inner join business bs on b.bus_bs_id=bs.bs_id and bs.bs_id=? \r\n"
				+ "inner join account a on bs.bs_acc_mail=a.acc_mail";
		try {
			ps = connection.prepareStatement(selectPlace);
			ps.setInt(1, Integer.parseInt(idBusiness));
			rs = ps.executeQuery();

			while (rs.next()) {
				ChuyenXe trip = new ChuyenXe(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6),
						"2019-11-12", rs.getString(7), rs.getString(7), rs.getInt(8), rs.getFloat(9), rs.getInt(10));
				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}
}

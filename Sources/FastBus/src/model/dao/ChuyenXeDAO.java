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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;

import model.bean.ChuyenXe;
import model.bean.PickupPlace;
import model.bean.SeatBooking;

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
		String selectPlace = "select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_end_time, t.trip_price,t.trip_status from trip t\r\n"
				+ "inner join place p on p.place_id=t.trip_start_place and p.place_name like  N'%" + startPlace
				+ "%' \r\n" + "inner join place p1 on p1.place_id=t.trip_end_place and p1.place_name like N'%"
				+ endPlace + "%' and t.trip_start_time='" + startTime + "'\r\n"
				+ "inner join bus b on b.bus_id=t.trip_bus_id\r\n"
				+ "inner join business bs on b.bus_bs_id=bs.bs_id \r\n"
				+ "inner join account a on bs.bs_acc_mail=a.acc_mail";

		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();

			while (rs.next()) {
				Date sTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-03-14 " + rs.getString(7));
				Date eTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-03-15 " + rs.getString(8));
				int total = (int) (eTime.getTime() - sTime.getTime()) / (60 * 60 * 1000);

				ChuyenXe trip = new ChuyenXe(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), startDate, rs.getString(7), rs.getString(8), total, rs.getString(9),
						rs.getInt(10));

				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}

	public ChuyenXe getListTripByIdDAO(int idTrip, String startDate) {
		connection = con.getConnect();
		ChuyenXe trip = null;

		String selectInfor = "select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_end_time, t.trip_price,t.trip_status from trip t\r\n"
				+ "inner join place p on p.place_id=t.trip_start_place \r\n"
				+ "inner join place p1 on p1.place_id=t.trip_end_place \r\n"
				+ "inner join bus b on b.bus_id=t.trip_bus_id\r\n"
				+ "inner join business bs on b.bus_bs_id=bs.bs_id \r\n"
				+ "inner join account a on bs.bs_acc_mail=a.acc_mail and t.trip_id=?";

		try {
			ps = connection.prepareStatement(selectInfor);
			ps.setInt(1, idTrip);
			rs = ps.executeQuery();

			while (rs.next()) {
				Date sTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-03-14 " + rs.getString(7));
				Date eTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-03-15 " + rs.getString(8));
				int total = (int) (eTime.getTime() - sTime.getTime()) / (60 * 60 * 1000);

				trip = new ChuyenXe(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), startDate, rs.getString(7), rs.getString(8), total, rs.getString(9),
						rs.getInt(10));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return trip;

	}

	public List<ChuyenXe> getListTripByIdBusinessDAO(String idBusiness) {
		connection = con.getConnect();
		listTrip = new ArrayList<ChuyenXe>();

		String selectPlace = "select t.trip_id, t.trip_bus_id,bs.bs_id, a.acc_name,p.place_name,p1.place_name, t.trip_start_time,t.trip_end_time, t.trip_price,t.trip_status from trip t\r\n"
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
				Date sTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-03-14 " + rs.getString(7));
				Date eTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-03-15 " + rs.getString(8));
				int total = (int) (eTime.getTime() - sTime.getTime()) / (60 * 60 * 1000);

				ChuyenXe trip = new ChuyenXe(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), (LocalDate.now()).toString(), rs.getString(7), rs.getString(8), total,
						rs.getString(9), rs.getInt(10));
				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}
	
	
	
	public List<PickupPlace> getListPickUpPlaceDAO(int idBusiness) {
		connection = con.getConnect();
		List<PickupPlace> listPickupPlaces=new ArrayList<PickupPlace>();
		String selectPlace="select place_id,business_id, place_name from pickup_place where business_id=?";
		try {
			ps = connection.prepareStatement(selectPlace);
			ps.setInt(1, idBusiness);
			rs = ps.executeQuery();

			while (rs.next()) {
				
				PickupPlace pPlace=new PickupPlace(rs.getInt("place_id"), rs.getInt("business_id"), rs.getString("place_name"));
				listPickupPlaces.add(pPlace);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listPickupPlaces;
	}
	
	public List<ChuyenXe> getListTripDAO() {
		connection = con.getConnect();
		listTrip = new ArrayList<ChuyenXe>();
		String selectPlace = "select bs.bs_id,a.acc_name, p.place_name,p1.place_name, COUNT(acc_name) from trip t\r\n" + 
				"inner join place p on p.place_id=t.trip_start_place  \r\n" + 
				"inner join place p1 on p1.place_id=t.trip_end_place\r\n" + 
				"inner join bus b on b.bus_id=t.trip_bus_id\r\n" + 
				"inner join business bs on b.bus_bs_id=bs.bs_id \r\n" + 
				"inner join account a on bs.bs_acc_mail=a.acc_mail\r\n" +
				"group by p1.place_name,p.place_name, acc_name,bs.bs_id \r\n" + 
				"order by p1.place_name  asc";
		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();

			while (rs.next()) {
				ChuyenXe trip = new ChuyenXe(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}
	
	public int InsertListTripDAO(List<ChuyenXe> listTrip) {
		connection = con.getConnect();
		String insert = "select trip_start_place,trip_end_place,trip_bus_id,trip_price,"
				+ "trip_start_time,trip_end_time,trip_status from trip ";
		int check = 0;
		try {
			ps = connection.prepareStatement(insert, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = ps.executeQuery();
			rs.moveToInsertRow();
			for (ChuyenXe trip : listTrip) {
				rs.updateString("trip_start_place", trip.getStartPlace());
				rs.updateString("trip_end_place", trip.getEndPlace());
				rs.updateInt("trip_bus_id", trip.getIdBus());
				rs.updateFloat("trip_price", Float.parseFloat(trip.getPrice()));
				rs.updateString("trip_start_time", trip.getStartTime());
				rs.updateString("trip_end_time", trip.getEndTime());
				rs.updateInt("trip_status", trip.getStatus());
				rs.insertRow();
				check = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return check;
	}
}

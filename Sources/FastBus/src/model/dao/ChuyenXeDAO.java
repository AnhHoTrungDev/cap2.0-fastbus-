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
		String selectPlace=null;
		if (startDate == "" && startPlace == "" && endPlace == "" && startTime == "") {
			selectPlace = "select a.acc_name,d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t\r\n" + 
					"inner join place p on p.place_id=t.trip_start_place\r\n" + 
					"inner join place p1 on p1.place_id=t.trip_end_place\r\n" + 
					"inner join district d on p.place_dt_id=d.district_id\r\n" + 
					"inner join district d1 on p1.place_dt_id=d1.district_id\r\n" + 
					"inner join business bs on bs.bs_id=t.trip_bs_id \r\n" + 
					"inner join account a on bs.bs_acc_mail=a.acc_mail";

		} else {
			selectPlace = "select a.acc_name,d.district_name,d1.district_name,t.trip_start_time,t.trip_date from trip t\r\n" + 
					"inner join place p on p.place_id=t.trip_start_place and t.trip_date='"+startDate+"' and t.trip_start_time='"+startTime+"'\r\n" + 
					"inner join place p1 on p1.place_id=t.trip_end_place\r\n" + 
					"inner join district d on p.place_dt_id=d.district_id and d.district_name like N'%"+startPlace+"%'\r\n" + 
					"inner join district d1 on p1.place_dt_id=d1.district_id and d1.district_name like N'%"+endPlace+"%'\r\n" + 
					"inner join business bs on bs.bs_id=t.trip_bs_id \r\n" + 
					"inner join account a on bs.bs_acc_mail=a.acc_mail";
		}
		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();

			while (rs.next()) {
				ChuyenXe trip = new ChuyenXe(rs.getString("acc_name"), rs.getString(2), rs.getString(3),
						rs.getString(5), rs.getString(4));
				listTrip.add(trip);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTrip;
	}

	public static void main(String[] args) {
		List<ChuyenXe> list = new ChuyenXeDAO().getListTripDAO("", "", "", "");
		for (ChuyenXe c : list) {
			System.out.println(c.getNameBusiness());
			System.out.println(c.getStartPlace());
			System.out.println(c.getEndPlace());
			System.out.println(c.getStartDate());
			System.out.println(c.getStartTime());
			System.out.println();
		}
	}

}

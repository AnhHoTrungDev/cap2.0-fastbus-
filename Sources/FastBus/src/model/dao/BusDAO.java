/**
 * @FileName	: BusDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Dec 7, 2019			QuocLH				Create
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.Bus;
import model.bean.Business;

public class BusDAO {

	static Connection connection = null;
	static connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;

	List<Bus> listBus = null;
	Bus bus = null;

	public List<Bus> getListBusByEmailBusinessDAO(String email) {

		connection = con.getConnect();
		listBus = new ArrayList<Bus>();

		String selectBus = "select b.bus_id,b.bus_license  from bus b inner join business bs on bs.bs_id=b.bus_bs_id and bs.bs_acc_mail=?";
		try {
			ps = connection.prepareStatement(selectBus);
			ps.setString(1,email);
			rs = ps.executeQuery();

			while (rs.next()) {
				bus = new Bus(rs.getInt("bus_id"),rs.getString("bus_license"));
				listBus.add(bus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listBus;
	}
	public static void main(String[] args) {
		System.out.println(new BusDAO().getListBusByEmailBusinessDAO("mailinh@gmail.com.vn").size());
		for(Bus bus : new BusDAO().getListBusByEmailBusinessDAO("mailinh@gmail.com.vn")) {
			System.out.println(bus.getIdBus());
			System.out.println(bus.getNameBus());
		}
	}
}

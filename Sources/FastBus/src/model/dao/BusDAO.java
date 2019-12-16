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

		String selectBus = "select b.bus_id,b.bus_license from bus b inner join business bs on bs.bs_id=b.bus_bs_id and bs.bs_acc_mail=?";
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
	
	public List<Bus> loadListBusByIdBusiness(String idBusiness) {
		connection = con.getConnect();
		listBus = new ArrayList<Bus>();

		String selectBus = "select bus_id,bus_license,bus_color,bus_menu from bus where bus_bs_id=?";
		try {
			ps = connection.prepareStatement(selectBus);
			ps.setInt(1,Integer.parseInt(idBusiness));
			rs = ps.executeQuery();

			while (rs.next()) {
				bus = new Bus(rs.getInt("bus_id"),rs.getString("bus_license"),rs.getString("bus_color"),rs.getString("bus_menu"));
				listBus.add(bus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listBus;
	}
	
	public String insertBusBO(Bus bus) {
		connection = con.getConnect();
		listBus = new ArrayList<Bus>();
		String message="";
		int id= bus.getIdBusiness();
		String selectBus = "insert into bus(bus_license,bus_bt_id,bus_bs_id,bus_color,bus_menu) values(?,3,?,?,?)";
		try {
			ps = connection.prepareStatement(selectBus);
			ps.setString(1,bus.getNameBus());
			ps.setInt(2,id);
			ps.setString(3,bus.getColor());
			ps.setString(4,bus.getHangXe());
			 
			message= ps.executeUpdate()>0 ? "Thêm thành công" : "Thêm thất bại"; 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			message="Thêm Thất Bại";
			e.printStackTrace();
		}
		return message;
	}
	
	public static void main(String[] args) {
		System.out.println(new BusDAO().insertBusBO(new Bus("sdfghjgfd",7, "Xabg", "xe",null)));
	}

	
}

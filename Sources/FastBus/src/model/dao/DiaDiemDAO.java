/**
 * @FileName	: DiaDiemDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Sep 29, 2019			QuocLH				Create
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.Bus;
import model.bean.DiaDiem;
import model.bean.PickupPlace;

public class DiaDiemDAO {
	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;

	List<DiaDiem> listPlace = null;
	List<PickupPlace> listPick=null;

	/**
	 * get all place in database
	 * 
	 * @return List<DiaDiem>
	 */
	
	  public List<DiaDiem> getListPlaceNotDaNangDAO() {
	  
	  connection = con.getConnect(); 
	  listPlace = new ArrayList<DiaDiem>();
	  
	  String selectPlace ="select  p.place_name ,p1.place_name from trip  t\r\n" + 
	  		"			inner join place p on p.place_id=t.trip_start_place\r\n" + 
	  		"	  		inner join place p1 on p1.place_id=t.trip_end_place\r\n" + 
	  		"	  		group by p.place_name,p1.place_name";
	  
		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();
			while (rs.next()) {
				DiaDiem place = new DiaDiem(rs.getString(1),rs.getString(2));
				listPlace.add(place);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	  return listPlace;
	  
	  }
	  public List<DiaDiem> getListPlaceDAO() {
		  
		  connection = con.getConnect(); 
		  listPlace = new ArrayList<DiaDiem>();
		  
		  String selectPlace ="select place_id,place_name,place_pv_id from place ";
		  
		  try { 
			  ps = connection.prepareStatement(selectPlace); 
			  rs = ps.executeQuery(); 
		  while (rs.next()) { 
			  DiaDiem place=new DiaDiem(rs.getInt(1),rs.getString(2),rs.getString(3));
			  listPlace.add(place); 
			  } 
		  } catch (SQLException e) { 
			 e.printStackTrace(); 
			 } 
		  return listPlace;
		  
		  }
	public List<PickupPlace> loadListPickUpPlaceByIdBusiness(String idBusiness) {
		// TODO Auto-generated method stub
		connection = con.getConnect(); 
		listPick = new ArrayList<PickupPlace>();
		  
		  String selectPlace ="select p.place_id,p.place_name,pp.place_name from pickup_place p\r\n" + 
		  		"inner join place pp on pplace_id =pp.place_id and business_id=?";
		  
		  try { 
			  ps = connection.prepareStatement(selectPlace); 
			  ps.setInt(1, Integer.parseInt(idBusiness));
			  rs = ps.executeQuery(); 
		  while (rs.next()) { 
			  PickupPlace place=new PickupPlace(rs.getInt(1),rs.getString(2),rs.getString(3));
			  listPick.add(place); 
			  } 
		  } catch (SQLException e) { 
			 e.printStackTrace(); 
			 } 
		  return listPick;
	}
	public String insertPickUpDAO(PickupPlace pick) {
		// TODO Auto-generated method stub
		connection = con.getConnect();
		String message="";
		String selectBus = "insert into pickup_place(place_name,pplace_id,business_id) values(?,?,?) ";
		try {
			ps = connection.prepareStatement(selectBus);
			ps.setString(1,pick.getName());
			ps.setInt(2,pick.getIdPlace());
			ps.setInt(3,pick.getIdBusiness());
			 
			message= ps.executeUpdate()>0 ? "Thêm thành công" : "Thêm thất bại"; 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			message="Thêm Thất Bại";
			e.printStackTrace();
		}
		return message;
	}
}

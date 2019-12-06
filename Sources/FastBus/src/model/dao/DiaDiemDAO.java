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

import model.bean.DiaDiem;

public class DiaDiemDAO {
	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;

	List<DiaDiem> listPlace = null;

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
}

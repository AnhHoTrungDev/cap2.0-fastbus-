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
	
	  public List<DiaDiem> getListPlaceDAO() {
	  
	  connection = con.getConnect(); 
	  listPlace = new ArrayList<DiaDiem>();
	  
	  String selectPlace ="select  p1.place_name from trip t\r\n" + 
	  		"inner join place p1 on p1.place_id=t.trip_end_place\r\n" + 
	  		"where p1.place_name not in(N'Đà Nẵng')\r\n" + 
	  		"group by p1.place_name";
	  
	  try { 
		  ps = connection.prepareStatement(selectPlace); 
		  rs = ps.executeQuery(); 
	  while (rs.next()) { 
		  DiaDiem place=new DiaDiem(rs.getString("place_name"));
		  listPlace.add(place); 
		  } 
	  } catch (SQLException e) { 
		 e.printStackTrace(); 
		 } 
	  return listPlace;
	  
	  }
}

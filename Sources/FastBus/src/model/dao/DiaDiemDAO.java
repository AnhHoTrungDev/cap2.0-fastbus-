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
	  
	  connection = con.getConnect(); listPlace = new ArrayList<DiaDiem>();
	  
	  String selectPlace ="select place_id, place_name, place_pv_id from place";
	  
	  try { 
		  ps = connection.prepareStatement(selectPlace); 
		  rs = ps.executeQuery(); 
	  while (rs.next()) { 
		  DiaDiem place=new DiaDiem(rs.getInt("place_id"), rs.getString("place_name"), rs.getString("place_pv_id"));
		  listPlace.add(place); 
		  } 
	  } catch (SQLException e) { 
		 e.printStackTrace(); 
		 } 
	  return listPlace;
	  
	  }
}

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
import model.bean.DiaDiem;

public class ChuyenXeDAO {
	
	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	List<DiaDiem> listPlace=null;
	
	/**
	 * get all place in database
	 * @return List<DiaDiem>
	 */
	public List<DiaDiem> getListPlaceDAO() {
		connection = con.getConnect();
		listPlace = new ArrayList<DiaDiem>();
		
		String selectPlace = "select p.place_id,d.district_id, d.district_name from place p inner join district d on d.district_id=p.place_dt_id";
		
		try {
			ps = connection.prepareStatement(selectPlace);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				DiaDiem place=new DiaDiem(rs.getInt("place_id"),rs.getString("district_id"),rs.getString("district_name"));
				listPlace.add(place);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listPlace;
	}
}

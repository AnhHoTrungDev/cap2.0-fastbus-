/**
 * @FileName	: UserDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Sep 8, 2019			QuocLH				Create
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.User;

public class UserDAO {
	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<User> listUser = null;
	User userInfo;
	
	/**
	 * Get List User From the Database
	 * @return List<User>
	 */
	public List<User> getListUsersDAO() {
		connection = con.getConnect();
		listUser = new ArrayList<User>();
		String selectQuery = "select MaNguoiDung,password,idQuyen,TenNguoiDung,SoDienThoai,DiaChi,Email,TrangThai,"
							+"choPheDuyet,NoiDungPheDuyet from NguoiDung";
		
		try {
			ps = connection.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				userInfo=new User(rs.getInt("MaNguoiDung"), rs.getString("password"),rs.getInt("idQuyen"),
						rs.getString("TenNguoiDung"), rs.getString("SoDienThoai"),rs.getString("Email"),
						rs.getInt("TrangThai"), rs.getInt("choPheDuyet"), rs.getString("NoiDungPheDuyet"));
				
				listUser.add(userInfo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listUser;
	}
}

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
	
	public String CheckLoginDAO(String email,String password) {
		listUser =new ArrayList<User>();
		String check="fail";
		connection = con.getConnect();
		String selectCheck = "select acc_mail,acc_password from account where acc_mail like ? and acc_password like ?";
		try {
			ps= connection.prepareStatement(selectCheck);
			ps.setString(1, email);
			ps.setString(2, password);
			
			
			rs=ps.executeQuery();

			if(rs.next()) {
				check="true";
	
			}else {
				check="fail";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			check = "fail";
			e.printStackTrace();
		}
		return check;
		
	}
	
	public int insertUserDAO(User user) {
		connection = con.getConnect();
		int check=0;
		
		String insertUser="insert into account (acc_mail, acc_password, acc_phone, acc_name, acc_role_id) "
				+ " values(?,?,?,?,3)";
		
		try {
			ps=connection.prepareStatement(insertUser);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassWord());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getName());
			
			check = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			check=0;
			e.printStackTrace();
		}
		return check;
	}
	
//	public static void main(String[] args) {
//		User u=new User("nhoxpro@gmail.com", "123456", "0357708105", "Lê Hoàng Quốc");
//		System.out.println(new UserDAO().insertUser(u));
//	}
}

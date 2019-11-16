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
	static Connection connection = null;
	static connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<User> listUser = null;
	User userInfo;

	/**
	 * Get List User From the Database
	 * 
	 * @return List<User>
	 */

	public User CheckLoginDAO(String email, String password) {
		listUser = new ArrayList<User>();

		connection = con.getConnect();
		String selectCheck = "select acc_mail,acc_password,acc_name from account where acc_mail like ? and acc_password like ?";
		User user = null;

		String mail = "";
		String name = "";
		String pass = "";
		String message = "";

		try {
			ps = connection.prepareStatement(selectCheck);
			ps.setString(1, email);
			ps.setString(2, password);
			rs = ps.executeQuery();

			if (rs.next()) {
				mail = rs.getString("acc_mail");
				pass = rs.getString("acc_password");
				name = rs.getString("acc_name");
				message = "true";

			} else {
				message = "fail";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		user = new User(pass, mail, name, message);
		return user;

	}
	public int insertUserDAO(User user) {
		connection = con.getConnect();
		int check = 0;

		String insertUser = "insert into account (acc_mail, acc_password, acc_phone, acc_name, acc_role_id) "
				+ " values(?,?,?,?,3)";

		try {

			if (!checkDuplicateAccount(connection, user.getEmail())) {
				ps = connection.prepareStatement(insertUser);
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getPassWord());
				ps.setString(3, user.getPhone());
				ps.setString(4, user.getName());

				check = ps.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}

	public boolean checkDuplicateAccount(Connection con, String mail) {

		boolean check = false;

		String queryCheck = "select acc_mail from account where acc_mail like ?";

		try {
			ps = connection.prepareStatement(queryCheck);
			ps.setString(1, mail);
			rs = ps.executeQuery();

			if (rs.next()) {
				check = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return check;
	}

	public User getAccountByNameDAO(String name) {
		connection = con.getConnect();
		userInfo=null;
		String gettUser = "select acc_name, acc_mail, acc_phone, acc_password from account where acc_name=?";
		
		try {
			ps = connection.prepareStatement(gettUser);
			ps.setString(1, name);
			rs = ps.executeQuery();

			if (rs.next()) {
				userInfo=new User(rs.getString("acc_mail"), rs.getString("acc_password"), rs.getString("acc_phone"), rs.getString("acc_name"), "Đây là địa chỉ");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return userInfo;
	}
//	public static void main(String[] args) {
//		connection = con.getConnect();
//		System.out.println(new UserDAO().checkDuplicateAccount(connection, "admin@gmail.com.vn"));
//	}
}

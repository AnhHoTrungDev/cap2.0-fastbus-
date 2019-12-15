/**
 * @FileName	: BusinessDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 17, 2019			QuocLH				Create
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.Business;
import model.bean.User;

public class BusinessDAO {

	static Connection connection = null;
	static connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;

	List<Business> listBusiness = null;
	Business business = null;

	public List<Business> getListBusinessDAO() {

		connection = con.getConnect();
		listBusiness = new ArrayList<Business>();

		String queryBusiness = "select b.bs_id,b.bs_acc_mail, a.acc_phone,a.acc_name,b.bs_address,w.ward_name,d.district_name,p.province_name, b.bs_description from business b\r\n"
				+ "inner join district d on b.bs_dt_id=d.district_id\r\n"
				+ "inner join province p on b.bs_pv_id = p.province_id\r\n"
				+ "inner join ward w on b.bs_ward_id=w.ward_id \r\n"
				+ "inner join account a on a.acc_mail=b.bs_acc_mail";
		try {
			ps = connection.prepareStatement(queryBusiness);
			rs = ps.executeQuery();

			while (rs.next()) {
				business = new Business(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
				listBusiness.add(business);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listBusiness;
	}

	public Business getBusinessByIdDAO(String idBusiness) {
		connection = con.getConnect();

		String queryBusiness = "select b.bs_id,b.bs_acc_mail,a.acc_phone,a.acc_name,b.bs_address,w.ward_name,d.district_name,p.province_name, b.bs_description from business b\r\n"
				+ "inner join district d on b.bs_dt_id=d.district_id\r\n"
				+ "inner join province p on b.bs_pv_id = p.province_id\r\n"
				+ "inner join ward w on b.bs_ward_id=w.ward_id \r\n"
				+ "inner join account a on a.acc_mail=b.bs_acc_mail and b.bs_id=?";

		try {
			ps = connection.prepareStatement(queryBusiness);
			ps.setInt(1, Integer.parseInt(idBusiness));
			rs = ps.executeQuery();

			if (rs.next()) {
				business = new Business(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
			}
		} catch (SQLException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return business;
	}

	public int checkBusinessLogin(String email, String passWord) {

		connection = con.getConnect();
		String selectCheck = "select acc_role_id from account where acc_mail= ? and acc_password= ?";
		int message = 0;
		try {
			ps = connection.prepareStatement(selectCheck);
			ps.setString(1, email);
			ps.setString(2, passWord);

			rs = ps.executeQuery();

			if (rs.next()) {
				message = rs.getInt("acc_role_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return message;
	}

	public Business getBusinessByMail(String mail) {
		connection = con.getConnect();
		String selectCheck = "select acc_name,acc_mail,acc_role_id,b.bs_id,acc_status from account a\r\n"
				+ "inner join business b on a.acc_mail=b.bs_acc_mail and acc_mail= ?";
		try {
			ps = connection.prepareStatement(selectCheck);
			ps.setString(1, mail);

			rs = ps.executeQuery();

			if (rs.next()) {
				if (rs.getInt("acc_status") == 1) {
					business = new Business(rs.getString("acc_name"), rs.getInt("acc_role_id"),
							rs.getString("acc_mail"), rs.getInt("bs_id"));
				} else {
					business = null;
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return business;
	}

	public int insertBusinessAccount(Business business) {
		// TODO Auto-generated method stub
		connection = con.getConnect();
		int check = 0;

		String insertUser = "insert into business (bs_acc_mail, bs_address, bs_pv_id, bs_dt_id, bs_ward_id) values(?,?,?,?,?)";

		try {

			ps = connection.prepareStatement(insertUser);
			ps.setString(1, business.getMail());
			ps.setString(2, business.getAddress());
			ps.setString(3, business.getNameProvince());
			ps.setString(4, business.getNameDistrict());
			ps.setString(5, business.getNameWard());

			check = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}

	public Business getBusinessByEmailDAO(String email) {
		connection = con.getConnect();
		business = null;

		String insertUser = "select b.bs_id,b.bs_acc_mail,a.acc_name,a.acc_phone,b.bs_address,b.bs_pv_id,b.bs_dt_id,b.bs_ward_id,b.bs_description from business b \r\n"
				+ "inner join account a on b.bs_acc_mail=a.acc_mail\r\n" + "and b.bs_acc_mail=?";

		try {

			ps = connection.prepareStatement(insertUser);
			ps.setString(1, email);
			rs = ps.executeQuery();

			if (rs.next()) {
				business = new Business(rs.getInt("bs_id"), rs.getString("bs_acc_mail"), rs.getString("acc_phone"),
						rs.getString("acc_name"), rs.getString("bs_address"), rs.getString("bs_ward_id"),
						rs.getString("bs_dt_id"), rs.getString("bs_pv_id"), rs.getString("bs_description"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return business;
	}

	public int updateBusinessDAO(Business business) {
		// TODO Auto-generated method stub
		connection = con.getConnect();
		User user = new User(business.getMail(), business.getName(), business.getPhone(), business.getAddress(), null,
				null);
		String insertUser = "update business set bs_address=?, bs_pv_id=?,bs_dt_id=?, bs_ward_id=?, bs_description=? where bs_acc_mail=?";
		int check = 0;
		try {
			if (new UserDAO().updateUserDAO(user) != 0) {
				ps = connection.prepareStatement(insertUser);
				ps.setString(1, business.getAddress());
				ps.setString(2, business.getNameProvince());
				ps.setString(3, business.getNameDistrict());
				ps.setString(4, business.getNameWard());
				ps.setString(5, business.getDescription());
				ps.setString(6, business.getMail());

				check = ps.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}
}

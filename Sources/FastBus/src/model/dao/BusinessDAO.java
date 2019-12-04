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
				if (rs.getInt("acc_role_id") == 3) {
					message = 2;
				} else {
					message = 1;
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return message;
	}

	public Business getBusinessByMail(String mail) {
		connection = con.getConnect();
		String selectCheck = "select acc_name,acc_mail,acc_role_id from account where acc_mail= ?";
		try {
			ps = connection.prepareStatement(selectCheck);
			ps.setString(1, mail);

			rs = ps.executeQuery();

			if (rs.next()) {
				business = new Business(rs.getString("acc_name"), rs.getInt("acc_role_id"), rs.getString("acc_mail"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return business;
	}

	public void insertBusiness(Business business) {
		connection = con.getConnect();
		String selectCheck = "select acc_name,acc_mail,acc_role_id from account where acc_mail= ?";
		try {
			ps = connection.prepareStatement(selectCheck);
			// ps.setString(1, mail);

			rs = ps.executeQuery();

			if (rs.next()) {
				business = new Business(rs.getString("acc_name"), rs.getInt("acc_role_id"), rs.getString("acc_mail"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
}

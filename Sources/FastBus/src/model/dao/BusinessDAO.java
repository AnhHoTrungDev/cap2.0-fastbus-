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

		String queryBusiness = "select b.bs_id,b.bs_acc_mail,a.acc_name,b.bs_address,w.ward_name,d.district_name,p.province_name, b.bs_description from business b\r\n" + 
				"inner join district d on b.bs_dt_id=d.district_id\r\n" + 
				"inner join province p on b.bs_pv_id = p.province_id\r\n" + 
				"inner join ward w on b.bs_ward_id=w.ward_id \r\n" + 
				"inner join account a on a.acc_mail=b.bs_acc_mail";
		try {
			ps = connection.prepareStatement(queryBusiness);
			rs = ps.executeQuery();

			while (rs.next()) {
				business = new Business(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
				listBusiness.add(business);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listBusiness;
	}

	public Business getListBusinessDAO(String idBusiness) {
		connection = con.getConnect();

		String queryBusiness =  "";

		try {
			ps = connection.prepareStatement(queryBusiness);
			rs = ps.executeQuery();

			while (rs.next()) {
				business = new Business(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
				listBusiness.add(business);
			}

		} catch (SQLException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return business;
	}
//	public static void main(String[] args) {
//		System.out.println(new BusinessDAO().getListBusinessDAO().size());
//	}
}

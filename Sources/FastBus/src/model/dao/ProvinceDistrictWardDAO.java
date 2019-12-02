/**
 * @FileName	: ProvinceDistrictWardDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Dec 2, 2019			QuocLH				Create
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.DiaDiem;
import model.bean.District;
import model.bean.Province;
import model.bean.Ward;

public class ProvinceDistrictWardDAO {
	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<Province> listProvince = null;
	List<District> listDistrict = null;
	List<Ward> listWard = null;

	public List<Province> getListProvinceDAO() {
		connection = con.getConnect();
		String selectProvince = "select province_id,province_name from province";

		listProvince = new ArrayList<Province>();

		try {
			ps = connection.prepareStatement(selectProvince);
			rs = ps.executeQuery();
			while (rs.next()) {
				Province province = new Province(rs.getString("province_id"), rs.getString("province_name"));
				listProvince.add(province);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listProvince;
	}

	public List<District> getListDistrictDAO(String idProvince) {
		connection = con.getConnect();
		String selectDistrict = "select district_id,district_name,district_pv_id from district";
		if (idProvince != "") {
			selectDistrict = "select district_id,district_name,district_pv_id from district where district_pv_id='"
					+ idProvince + "'";
		}
		listDistrict = new ArrayList<District>();

		try {
			ps = connection.prepareStatement(selectDistrict);
			rs = ps.executeQuery();
			while (rs.next()) {
				District district = new District(rs.getString("district_id"), rs.getString("district_name"),
						rs.getString("district_pv_id"));
				listDistrict.add(district);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listDistrict;
	}

	public List<Ward> getListWardDAO(String idDistrict) {
		connection = con.getConnect();
		String selectWard = "select ward_id,ward_name,ward_dt_id from ward";
		if (idDistrict != "") {
			selectWard = "select ward_id,ward_name,ward_dt_id from ward where ward_dt_id='"+idDistrict+"'";
		}
		listWard = new ArrayList<Ward>();

		try {
			ps = connection.prepareStatement(selectWard);
			rs = ps.executeQuery();
			while (rs.next()) {
				Ward ward = new Ward(rs.getString("ward_id"), rs.getString("ward_name"), rs.getString("ward_dt_id"));
				listWard.add(ward);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listWard;
	}
}

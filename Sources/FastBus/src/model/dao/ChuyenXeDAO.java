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
	
	List<ChuyenXe> listChuyen=null;
	List<DiaDiem> listPlace=null;
	
	public List<ChuyenXe> getListChuyenXe() {
		connection = con.getConnect();
		listChuyen = new ArrayList<ChuyenXe>();
		
		String selectQuery = "select MaNguoiDung,password,idQuyen,TenNguoiDung,SoDienThoai,DiaChi,Email,TrangThai,"
				+"choPheDuyet,NoiDungPheDuyet from NguoiDung";
		
		try {
			ps = connection.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ChuyenXe chuyen=new ChuyenXe();
				
				listChuyen.add(chuyen);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listChuyen;
	}
	
	public List<DiaDiem> getListPlace() {
		connection = con.getConnect();
		listPlace = new ArrayList<DiaDiem>();
		
		String selectQuery = "select MaDiaDiem,TenDiaDiem from DiaDiem";
		
		try {
			ps = connection.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				DiaDiem place=new DiaDiem(rs.getInt("MaDiaDiem"),rs.getString("TenDiaDiem"));
				
				listPlace.add(place);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listPlace;
	}
}

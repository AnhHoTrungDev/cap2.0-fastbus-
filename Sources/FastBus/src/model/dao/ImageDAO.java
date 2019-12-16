/**
 * @FileName	: ImageDAO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Dec 14, 2019			QuocLH				Create
 */

package model.dao;

import java.io.File;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import model.bean.Images;

public class ImageDAO {
	static Connection connection = null;
	static connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<Images> listImgs = null;

	public int insertListImgsDAO(String img1, String img2, String img3, String img4, String img5, String idBusiness) {
		// TODO Auto-generated method stub
		connection = con.getConnect();
		int check = 0;
		ArrayList<Images> arr = new ArrayList<Images>();
		arr.add(new Images(Integer.parseInt(idBusiness), img1.toString()));
		arr.add(new Images(Integer.parseInt(idBusiness), img2.toString()));
		arr.add(new Images(Integer.parseInt(idBusiness), img3.toString()));
		arr.add(new Images(Integer.parseInt(idBusiness), img4.toString()));
		arr.add(new Images(Integer.parseInt(idBusiness), img5.toString()));

		String queryBusiness = "select img_name,img_bs_id from images ";
		try {
			ps = connection.prepareStatement(queryBusiness, ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			rs = ps.executeQuery();
			rs.moveToInsertRow();
			for (Images list : arr) {
				if(list.getImgName()!="") {
					rs.updateInt("img_bs_id", list.getIdBusiness());
					rs.updateString("img_name", list.getImgName());
					rs.insertRow();
					check = 1;
				}else {
					continue;
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}

	public List<Images> getListImagesDAOByIdBusiness(String idBusiness) {
		connection = con.getConnect();
		listImgs = new ArrayList<Images>();
		String queryBusiness = "select img_id,img_name,img_bs_id from images where img_bs_id=? ";
		try {
			ps = connection.prepareStatement(queryBusiness);
			ps.setInt(1, Integer.parseInt(idBusiness));
			rs = ps.executeQuery();
			while (rs.next()) {
				Images img = new Images(rs.getInt("img_id"), rs.getInt("img_bs_id"), rs.getString("img_name"));
				listImgs.add(img);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listImgs;
	}

	public String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}

	public File getFolderUpload(String realPath) {
		File folderUpload = new File(realPath);
		if (!folderUpload.exists()) {
			folderUpload.mkdirs();
		}
		return folderUpload;
	}
}

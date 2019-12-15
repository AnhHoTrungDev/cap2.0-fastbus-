/**
 * @FileName	: ImageBO.java
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


package model.bo;

import java.io.File;
import java.util.List;

import javax.servlet.http.Part;

import model.bean.Images;
import model.dao.ImageDAO;

public class ImageBO {

	public int insertListImgsBO(String img1, String img2, String img3, String img4, String img5, String idBusiness) {
		return new ImageDAO().insertListImgsDAO(img1,img2,img3,img4,img5,idBusiness);
	}
	public List<Images> getListImagesDAOByIdBusiness(String idBusiness) {
		return new ImageDAO().getListImagesDAOByIdBusiness(idBusiness);
	}
	public String extractFileName(Part part) {
		return new ImageDAO().extractFileName(part);
	}
	public File getFolderUpload(String realPath) {
		return new ImageDAO().getFolderUpload(realPath);
	}
}

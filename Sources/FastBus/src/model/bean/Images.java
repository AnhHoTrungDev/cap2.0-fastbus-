/**
 * @FileName	: Images.java
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

package model.bean;

import java.sql.Blob;

import javax.servlet.http.Part;

public class Images {
	private int imageId;
	private int idBusiness;
	private String imgName;

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getIdBusiness() {
		return idBusiness;
	}

	public void setIdBusiness(int idBusiness) {
		this.idBusiness = idBusiness;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public Images(int imageId, int idBusiness, String imgName) {
		super();
		this.imageId = imageId;
		this.idBusiness = idBusiness;
		this.imgName = imgName;
	}

	public Images() {
		super();
	}

	public Images(int idBusiness, String imgName) {
		super();
		this.idBusiness = idBusiness;
		this.imgName = imgName;
	}

}

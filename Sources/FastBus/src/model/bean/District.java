/**
 * @FileName	: District.java
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

package model.bean;

public class District {
	private String idDistrict;
	private String nameDistrict;
	private String idProvince;

	public String getIdDistrict() {
		return idDistrict;
	}

	public void setIdDistrict(String idDistrict) {
		this.idDistrict = idDistrict;
	}

	public String getNameDistrict() {
		return nameDistrict;
	}

	public void setNameDistrict(String nameDistrict) {
		this.nameDistrict = nameDistrict;
	}

	public String getIdProvince() {
		return idProvince;
	}

	public void setIdProvince(String idProvince) {
		this.idProvince = idProvince;
	}

	public District(String idDistrict, String nameDistrict, String idProvince) {
		super();
		this.idDistrict = idDistrict;
		this.nameDistrict = nameDistrict;
		this.idProvince = idProvince;
	}

	public District() {
		super();
	}
}

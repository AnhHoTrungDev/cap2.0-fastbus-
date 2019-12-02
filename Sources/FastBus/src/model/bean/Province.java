/**
 * @FileName	: Province.java
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

public class Province {
	private String idProvince;
	private String nameProvince;

	public String getIdProvince() {
		return idProvince;
	}

	public void setIdProvince(String idProvince) {
		this.idProvince = idProvince;
	}

	public String getNameProvince() {
		return nameProvince;
	}

	public void setNameProvince(String nameProvince) {
		this.nameProvince = nameProvince;
	}

	public Province(String idProvince, String nameProvince) {
		super();
		this.idProvince = idProvince;
		this.nameProvince = nameProvince;
	}

	public Province() {
		super();
	}
}

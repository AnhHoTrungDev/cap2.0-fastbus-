/**
 * @FileName	: Ward.java
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

public class Ward {
	private String idWard;
	private String nameWard;
	private String idDistrict;

	public String getIdWard() {
		return idWard;
	}

	public void setIdWard(String idWard) {
		this.idWard = idWard;
	}

	public String getNameWard() {
		return nameWard;
	}

	public void setNameWard(String nameWard) {
		this.nameWard = nameWard;
	}

	public String getIdDistrict() {
		return idDistrict;
	}

	public void setIdDistrict(String idDistrict) {
		this.idDistrict = idDistrict;
	}

	public Ward(String idWard, String nameWard, String idDistrict) {
		super();
		this.idWard = idWard;
		this.nameWard = nameWard;
		this.idDistrict = idDistrict;
	}

	public Ward() {
		super();

	}

}

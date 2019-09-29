/**
 * @FileName	: DiaDiem.java
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


package model.bean;

public class DiaDiem {
	private int idPlace;
	private String idDistrict;
	private String namePlace;
	
	public int getIdPlace() {
		return idPlace;
	}
	public void setIdPlace(int idPlace) {
		this.idPlace = idPlace;
	}
	public String getIdDistrict() {
		return idDistrict;
	}

	public void setIdDistrict(String idDistrict) {
		this.idDistrict = idDistrict;
	}
	public String getNamePlace() {
		return namePlace;
	}
	public void setNamePlace(String namePlace) {
		this.namePlace = namePlace;
	}
	
	public DiaDiem(int idPlace, String idDistrict, String namePlace) {
		super();
		this.idPlace = idPlace;
		this.idDistrict = idDistrict;
		this.namePlace = namePlace;
	}
	public DiaDiem() {
		super();
	}
	
	
}

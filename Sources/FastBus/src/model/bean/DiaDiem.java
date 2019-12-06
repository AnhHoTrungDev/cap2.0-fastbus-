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
	private String namePlace;
	private String nameEndPlace;
	private String nameStartPlace;
	private String idProvince;
	
	public int getIdPlace() {
		return idPlace;
	}
	public void setIdPlace(int idPlace) {
		this.idPlace = idPlace;
	}
	
	public String getIdProvince() {
		return idProvince;
	}
	public void setIdProvince(String idProvince) {
		this.idProvince = idProvince;
	}
	public String getNamePlace() {
		return namePlace;
	}
	public void setNamePlace(String namePlace) {
		this.namePlace = namePlace;
	}
	
	public String getNameEndPlace() {
		return nameEndPlace;
	}
	public void setNameEndPlace(String nameEndPlace) {
		this.nameEndPlace = nameEndPlace;
	}
	public String getNameStartPlace() {
		return nameStartPlace;
	}
	public void setNameStartPlace(String nameStartPlace) {
		this.nameStartPlace = nameStartPlace;
	}
	public DiaDiem(int idPlace, String namePlace, String idProvince) {
		super();
		this.idPlace = idPlace;
		this.namePlace = namePlace;
		this.idProvince = idProvince;
	}
	public DiaDiem() {
		super();
	}
	
	public DiaDiem(String nameStartPlace,String nameEndPlace) {
		super();
		this.nameStartPlace=nameStartPlace;
		this.nameEndPlace=nameEndPlace;
	}
	
}

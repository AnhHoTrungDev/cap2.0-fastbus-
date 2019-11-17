/**
 * @FileName	: business.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 17, 2019			QuocLH				Create
 */


package model.bean;

public class Business {
	private int idBusiness;
	private String address;
	private String name;
	private String mail;
	private String idProvince;
	private String idDistrict;
	private String idWard;
	private String description;
	public int getIdBusiness() {
		return idBusiness;
	}
	public void setIdBusiness(int idBusiness) {
		this.idBusiness = idBusiness;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getIdProvince() {
		return idProvince;
	}
	public void setIdProvince(String idProvince) {
		this.idProvince = idProvince;
	}
	public String getIdDistrict() {
		return idDistrict;
	}
	public void setIdDistrict(String idDistrict) {
		this.idDistrict = idDistrict;
	}
	public String getIdWard() {
		return idWard;
	}
	public void setIdWard(String idWard) {
		this.idWard = idWard;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public Business(int idBusiness, String address, String name, String mail, String idProvince, String idDistrict,
			String idWard, String description) {
		super();
		this.idBusiness = idBusiness;
		this.address = address;
		this.name = name;
		this.mail = mail;
		this.idProvince = idProvince;
		this.idDistrict = idDistrict;
		this.idWard = idWard;
		this.description = description;
	}
	public Business() {
		super();
	}
	
	
	
	
}

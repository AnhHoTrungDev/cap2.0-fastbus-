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
	private String name;
	private String mail;
	private String address;
	private String nameProvince;
	private String nameDistrict;
	private String nameWard;
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

	

	public String getNameProvince() {
		return nameProvince;
	}

	public void setNameProvince(String nameProvince) {
		this.nameProvince = nameProvince;
	}

	public String getNameDistrict() {
		return nameDistrict;
	}

	public void setNameDistrict(String nameDistrict) {
		this.nameDistrict = nameDistrict;
	}

	public String getNameWard() {
		return nameWard;
	}

	public void setNameWard(String nameWard) {
		this.nameWard = nameWard;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Business(int idBusiness, String mail, String name, String address, String nameWard, String nameDistrict,
			String nameProvince, String description) {
		super();
		this.idBusiness = idBusiness;
		this.address = address;
		this.name = name;
		this.mail = mail;
		this.nameProvince = nameProvince;
		this.nameDistrict = nameDistrict;
		this.nameWard = nameWard;
		this.description = description;
	}

	public Business() {
		super();
	}

}

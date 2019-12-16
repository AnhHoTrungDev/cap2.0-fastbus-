/**
 * @FileName	: PickupPlace.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 29, 2019			QuocLH				Create
 */


package model.bean;

public class PickupPlace {
	private int idPlace;
	private int idBusiness;
	private String name;
	private String namePro;
	public int getIdPlace() {
		return idPlace;
	}
	public void setIdPlace(int idPlace) {
		this.idPlace = idPlace;
	}
	public int getIdBusiness() {
		return idBusiness;
	}
	public void setIdBusiness(int idBusiness) {
		this.idBusiness = idBusiness;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getNamePro() {
		return namePro;
	}
	public void setNamePro(String namePro) {
		this.namePro = namePro;
	}
	public PickupPlace(int idPlace, int idBusiness, String name) {
		super();
		this.idPlace = idPlace;
		this.idBusiness = idBusiness;
		this.name = name;
	}
	public PickupPlace(int idPlace, String name, String namePro) {
		super();
		this.idPlace = idPlace;
		this.name = name;
		this.namePro=namePro;
	}
	public PickupPlace() {
		super();
	}
	
	
}

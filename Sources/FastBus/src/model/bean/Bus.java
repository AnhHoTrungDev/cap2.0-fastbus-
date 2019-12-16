/**
 * @FileName	: Bus.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Dec 7, 2019			QuocLH				Create
 */

package model.bean;

public class Bus {
	private int idBus;
	private int idBusiness;
	private String idType;
	private String nameBus;
	private String nameBusiness;
	private String nameType;
	private String color;
	private String hangXe;

	public int getIdBus() {
		return idBus;
	}

	public void setIdBus(int idBus) {
		this.idBus = idBus;
	}

	public int getIdBusiness() {
		return idBusiness;
	}

	public void setIdBusiness(int idBusiness) {
		this.idBusiness = idBusiness;
	}

	public String getIdType() {
		return idType;
	}

	public void setIdType(String idType) {
		this.idType = idType;
	}

	public String getNameBus() {
		return nameBus;
	}

	public void setNameBus(String nameBus) {
		this.nameBus = nameBus;
	}

	public String getNameBusiness() {
		return nameBusiness;
	}

	public void setNameBusiness(String nameBusiness) {
		this.nameBusiness = nameBusiness;
	}

	public String getNameType() {
		return nameType;
	}

	public void setNameType(String nameType) {
		this.nameType = nameType;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getHangXe() {
		return hangXe;
	}

	public void setHangXe(String hangXe) {
		this.hangXe = hangXe;
	}

	public Bus(int idBus, int idBusiness, String idType, String nameBus) {
		super();
		this.idBus = idBus;
		this.idBusiness = idBusiness;
		this.idType = idType;
		this.nameBus = nameBus;
	}

	public Bus(int idBus, String nameBus) {
		super();
		this.idBus = idBus;
		this.nameBus = nameBus;
	}

	public Bus(int idBus, String nameBus, String color, String hangXe) {
		super();
		this.idBus = idBus;
		this.nameBus = nameBus;
		this.color = color;
		this.hangXe = hangXe;
	}

	public Bus(String nameBus,int idBusiness,  String color, String hangXe,String a) {
		super();
		this.nameBus = nameBus;
		this.idBusiness=idBusiness;
		this.color = color;
		this.hangXe = hangXe;
	}

	public Bus() {
		super();
	}

}

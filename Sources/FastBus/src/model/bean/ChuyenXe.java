/**
 * @FileName	: ChuyenXe.java
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

public class ChuyenXe {
	
	private int idTrip;
	private String nameBusiness;
	private String startPlace;
	private String endPlace;
	private String startDate;
	private String startTime;
	private float price;
	
	
	public int getIdTrip() {
		return idTrip;
	}


	public void setIdTrip(int idTrip) {
		this.idTrip = idTrip;
	}


	public String getNameBusiness() {
		return nameBusiness;
	}


	public void setNameBusiness(String nameBusiness) {
		this.nameBusiness = nameBusiness;
	}


	public String getStartPlace() {
		return startPlace;
	}


	public void setStartPlace(String startPlace) {
		this.startPlace = startPlace;
	}


	public String getEndPlace() {
		return endPlace;
	}


	public void setEndPlace(String endPlace) {
		this.endPlace = endPlace;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getStartTime() {
		return startTime;
	}


	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	
	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public ChuyenXe(int idTrip,String nameBusiness, String startPlace, String endPlace, String startDate,
			String startTime,float price) {
		super();
		this.idTrip=idTrip;
		this.nameBusiness = nameBusiness;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.startDate = startDate;
		this.startTime = startTime;
		this.price= price;
		
	}


	public ChuyenXe() {
		super();
	}
}

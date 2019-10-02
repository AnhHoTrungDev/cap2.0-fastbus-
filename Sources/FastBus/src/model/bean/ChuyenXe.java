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
	
	private String idTrip;
	private String nameBusiness;
	private String startPlace;
	private String endPlace;
	private String startDate;
	private String startTime;
	
	
	public String getIdTrip() {
		return idTrip;
	}


	public void setIdTrip(String idTrip) {
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


	public ChuyenXe(String nameBusiness, String startPlace, String endPlace, String startDate,
			String startTime) {
		super();
		this.nameBusiness = nameBusiness;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.startDate = startDate;
		this.startTime = startTime;
	}


	public ChuyenXe() {
		super();
	}
}

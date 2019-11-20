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

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class ChuyenXe {

	private int idTrip;
	private int idBus;
	private int idBusiness;
	private String nameBusiness;
	private String startPlace;
	private String endPlace;
	private String startDate;
	private String startTime;
	private String endTime;
	private float price;

	public int getIdTrip() {
		return idTrip;
	}

	public void setIdTrip(int idTrip) {
		this.idTrip = idTrip;
	}

	public int getIdBus() {
		return idBus;
	}

	
	public int getIdBusiness() {
		return idBusiness;
	}

	public void setIdBusiness(int idBusiness) {
		this.idBusiness = idBusiness;
	}

	public void setIdBus(int idBus) {
		this.idBus = idBus;
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

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public ChuyenXe(int idTrip, int idBus,int idBusiness, String nameBusiness, String startPlace, String endPlace, String startDate,
			String startTime, String endTime, float price) {
		super();
		this.idTrip = idTrip;
		this.idBus = idBus;
		this.idBusiness=idBusiness;
		this.nameBusiness = nameBusiness;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.startDate = startDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.price = price;
	}

	
	public ChuyenXe(int idTrip, String nameBusiness, String startPlace, String endPlace, String startDate,
			String startTime, String endTime, float price) {
		super();
		this.idTrip = idTrip;
		this.nameBusiness = nameBusiness;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.startDate = startDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.price = price;
	}

	public ChuyenXe() {
		super();
	}

//	public static void main(String[] args) {
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//
//		try {
//			Date f = format.parse("2012-03-14 20:33:58");
//			Date e = format.parse("2012-03-15 10:34:59");
//
//			long t = (e.getTime() - f.getTime()) / (60 * 60 * 1000);
//			System.out.println(t);
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
}

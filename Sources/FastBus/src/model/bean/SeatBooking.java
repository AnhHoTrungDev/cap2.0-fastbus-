/**
 * @FileName	: SeatBooking.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 3, 2019			QuocLH				Create
 */


package model.bean;

public class SeatBooking {
	private int seatBooking;
	private int tripId;
	private String seatMail;
	private String seatName;
	private String seatDate;
	private String seatStartDate;
	private int totalSeat;
	
	public int getSeatBooking() {
		return seatBooking;
	}
	public void setSeatBooking(int seatBooking) {
		this.seatBooking = seatBooking;
	}
	public int getTripId() {
		return tripId;
	}
	public void setTripId(int tripId) {
		this.tripId = tripId;
	}
	public String getSeatMail() {
		return seatMail;
	}
	public void setSeatMail(String seatMail) {
		this.seatMail = seatMail;
	}
	public String getSeatName() {
		return seatName;
	}
	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	public String getSeatDate() {
		return seatDate;
	}
	public void setSeatDate(String seatDate) {
		this.seatDate = seatDate;
	}
	
	public int getTotalSeat() {
		return totalSeat;
	}
	public void setTotalSeat(int totalSeat) {
		this.totalSeat = totalSeat;
	}
	public String getSeatStartDate() {
		return seatStartDate;
	}
	public void setSeatStartDate(String seatStartDate) {
		this.seatStartDate = seatStartDate;
	}
	public SeatBooking(int seatBooking, int tripId, String seatMail, String seatName, String seatDate,String seatStartDate) {
		super();
		this.seatBooking = seatBooking;
		this.tripId = tripId;
		this.seatMail = seatMail;
		this.seatName = seatName;
		this.seatDate = seatDate;
		this.seatStartDate = seatStartDate;
	}
	public SeatBooking(int seatBooking, int tripId, String seatMail, String seatName, String seatDate,String seatStartDate,int seatTotal) {
		super();
		this.seatBooking = seatBooking;
		this.tripId = tripId;
		this.seatMail = seatMail;
		this.seatName = seatName;
		this.seatDate = seatDate;
		this.seatStartDate = seatStartDate;
		this.totalSeat=seatTotal;
	}
	
	public SeatBooking(int tripId, String seatMail, String seatName,String seatStartDate) {
		super();
		this.tripId = tripId;
		this.seatMail = seatMail;
		this.seatName = seatName;
		this.seatStartDate = seatStartDate;
	}
	public SeatBooking(int tripId,String seatStartDate,String seatMail,int seatTotal) {
		super();
		this.tripId = tripId;
		this.seatMail = seatMail;
		this.seatStartDate = seatStartDate;
		this.totalSeat=seatTotal;
	}
	public SeatBooking() {
		super();
	}
	
	
	
}

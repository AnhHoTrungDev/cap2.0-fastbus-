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
	public SeatBooking(int seatBooking, int tripId, String seatMail, String seatName, String seatDate) {
		super();
		this.seatBooking = seatBooking;
		this.tripId = tripId;
		this.seatMail = seatMail;
		this.seatName = seatName;
		this.seatDate = seatDate;
	}
	public SeatBooking() {
		super();
	}
	
	
	
}

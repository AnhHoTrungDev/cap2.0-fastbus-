/**
 * @FileName	: SeatBookingBO.java
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


package model.bo;

import java.util.List;

import model.bean.SeatBooking;
import model.dao.SeatBookingDAO;

public class SeatBookingBO {
	public List<SeatBooking> getListSeatBookingByIdBO(int idTrip,String startDate){
		return new SeatBookingDAO().getListSeatBookingByIdDAO(idTrip,startDate);
	}
	
	public int insertSeatBO(List<SeatBooking> seat) {
		return new SeatBookingDAO().insertSeatDAO(seat);
	}
	public List<SeatBooking> getListSeatBooked(String mail){
		return new SeatBookingDAO().getListSeatBooked(mail);
	}
	public List<SeatBooking> getListAwaitingAprovalTicketBO(String mail) {
		return new SeatBookingDAO().getListAwaitingAprovalTicketDAO(mail);
	}

	public String approvedListSeatBookingBO(String idTrip,String dateStart, String seat ) {
		return new SeatBookingDAO().approvedListSeatBookingDAO(idTrip,dateStart,seat);
	}

	public String deleteListSeatBookingBO(String idTrip, String dateStart, String seat) {
		return new SeatBookingDAO().deleteListSeatBookingDAO(idTrip,dateStart,seat);
	}
	public List<SeatBooking> getListTicketByTripIdAndDateDAO(String idTrip,String startDate){
		return new SeatBookingDAO().getListTicketByTripIdAndDateDAO(idTrip, startDate);
	}
}

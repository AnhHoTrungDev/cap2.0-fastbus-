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

public class SeatBookingBO {
	public List<SeatBooking> getListSeatBookingByIdBO(int idTrip){
		return new SeatBookingDAO().getListSeatBookingByIdDAO(idTrip);
	}
}

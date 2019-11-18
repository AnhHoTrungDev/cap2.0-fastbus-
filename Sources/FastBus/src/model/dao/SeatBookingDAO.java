/**
 * @FileName	: SeatBookingDAO.java
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

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import model.bean.ChuyenXe;
import model.bean.SeatBooking;

public class SeatBookingDAO {

	Connection connection = null;
	connect con = new connect();
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<SeatBooking> listSeat = null;

	public List<SeatBooking> getListSeatBookingByIdDAO(int idTrip) {

		connection = con.getConnect();
		listSeat = new ArrayList<SeatBooking>();

		String selectSeat = "select seatb_id,seatb_trip_id,seatb_user_mail,seatb_name,seatb_date from seatbooking where seatb_trip_id= "
				+ idTrip;

		try {
			ps = connection.prepareStatement(selectSeat);
			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking seat = new SeatBooking(rs.getInt("seatb_id"), rs.getInt("seatb_trip_id"),
						rs.getString("seatb_user_mail"), rs.getString("seatb_name"), rs.getString("seatb_date"));
				listSeat.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listSeat;
	}

	public int insertSeatDAO(List<SeatBooking> seat) {
		
		connection = con.getConnect();
		String insert = "select seatb_trip_id,seatb_user_mail,seatb_name,seatb_date from seatbooking";
		int check=0;
		try {
			ps = connection.prepareStatement(insert,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs=ps.executeQuery();
			rs.moveToInsertRow();
			for (SeatBooking listSeat : seat) {
				rs.updateInt("seatb_trip_id", listSeat.getTripId());
				rs.updateString("seatb_user_mail", listSeat.getSeatMail());
				rs.updateString("seatb_name",listSeat.getSeatName());
				rs.updateString("seatb_date",(LocalDate.now()).toString());
				rs.insertRow();
				check=1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return check;
	}

//	  public static void main(String[] args) {
//		  List<SeatBooking> list=new SeatBookingDAO().getListSeatBookingByIdDAO(1);
//		  for(SeatBooking seat : list ) {
//			  if("A1".contains(seat.getSeatName())) {
//				  System.out.println(seat.getSeatName());
//			  }
//			  
//		  }
//	  }

}

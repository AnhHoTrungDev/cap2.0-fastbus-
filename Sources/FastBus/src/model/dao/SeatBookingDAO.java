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

	public List<SeatBooking> getListSeatBookingByIdDAO(int idTrip, String startDate) {

		connection = con.getConnect();
		listSeat = new ArrayList<SeatBooking>();

		String selectSeat = "select seatb_id,seatb_trip_id,seatb_user_mail,seatb_name,seatb_date,seatb_start_date from seatbooking "
				+ "where seatb_trip_id= ? and seatb_start_date= ?";
		try {
			ps = connection.prepareStatement(selectSeat);
			ps.setInt(1, idTrip);
			ps.setString(2, startDate);
			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking seat = new SeatBooking(rs.getInt("seatb_id"), rs.getInt("seatb_trip_id"),
						rs.getString("seatb_user_mail"), rs.getString("seatb_name"), rs.getString("seatb_date"),
						rs.getString("seatb_start_date"));
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
		String insert = "select seatb_trip_id,seatb_start_date,seatb_user_mail,seatb_name,seatb_date,seatb_status from seatbooking";
		int check = 0;
		try {
			ps = connection.prepareStatement(insert, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = ps.executeQuery();
			rs.moveToInsertRow();
			for (SeatBooking listSeat : seat) {
				rs.updateInt("seatb_trip_id", listSeat.getTripId());
				rs.updateString("seatb_start_date", listSeat.getSeatStartDate());
				rs.updateString("seatb_user_mail", listSeat.getSeatMail());
				rs.updateString("seatb_name", listSeat.getSeatName());
				rs.updateString("seatb_date", (LocalDate.now()).toString());
				rs.updateInt("seatb_status", listSeat.getSeatStatus());
				rs.insertRow();
				check = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return check;
	}

	public List<SeatBooking> getListSeatBooked(String mail) {

		connection = con.getConnect();
		listSeat = new ArrayList<SeatBooking>();

		String selectSeatBooked = "select seatb_trip_id,seatb_start_date,seatb_user_mail,count(*) as 'total'\r\n"
				+ "from seatbooking where seatb_user_mail= '" + mail + "' \r\n"
				+ "group by seatb_trip_id,seatb_start_date,seatb_user_mail order by seatb_start_date desc";
		try {
			ps = connection.prepareStatement(selectSeatBooked);
			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking seat = new SeatBooking(rs.getInt("seatb_trip_id"), rs.getString("seatb_start_date"),
						rs.getString("seatb_user_mail"), rs.getInt("total"));
				listSeat.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<SeatBooking> l = new ArrayList<SeatBooking>();

		for (SeatBooking list : listSeat) {
			l.add(new SeatBookingDAO().apendSeatName(list.getSeatStartDate(), list.getSeatMail(), list.getTripId(),
					list.getTotalSeat()));
		}

		return l;
	}

//ghep chuoi 
	public SeatBooking apendSeatName(String startDate, String mail, int idTrip, int totalSeat) {
		SeatBooking seat = null;
		listSeat = new ArrayList<SeatBooking>();
		connection = con.getConnect();

		String getList = "select seatb_id, seatb_trip_id, seatb_user_mail, seatb_name, seatb_date, seatb_start_date from seatbooking "
				+ "where seatb_user_mail=? and seatb_start_date=? and seatb_trip_id=? order by seatb_name asc";

		try {
			ps = connection.prepareStatement(getList);
			ps.setString(1, mail);
			ps.setString(2, startDate);
			ps.setInt(3, idTrip);

			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking getListSeat = new SeatBooking(rs.getInt("seatb_id"), rs.getInt("seatb_trip_id"),
						rs.getString("seatb_user_mail"), rs.getString("seatb_name"), rs.getString("seatb_date"),
						rs.getString("seatb_start_date"), totalSeat);
				listSeat.add(getListSeat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name = "";
		for (SeatBooking list : listSeat) {

			for (SeatBooking list1 : listSeat) {
				if (listSeat.indexOf(list) == 0) {
					if (list1.getSeatName().equals(list.getSeatName())) {
						name += list.getSeatName() + ", ";
					} else {
						name += list1.getSeatName() + ", ";
					}
				} else {
					continue;
				}
			}
			seat = new SeatBooking(list.getSeatBooking(), list.getTripId(), list.getSeatMail(),
					name.substring(0, (name.length() - 2)), list.getSeatDate(), list.getSeatStartDate(),
					list.getTotalSeat());
		}

		return seat;

	}

	public List<SeatBooking> getListAwaitingAprovalTicketDAO(String mail) {

		listSeat = new ArrayList<SeatBooking>();
		connection = con.getConnect();
		List<SeatBooking> l = new ArrayList<SeatBooking>();
		String select = "select seatb_trip_id,s.seatb_start_date,s.seatb_user_mail,count(*) as total   from seatbooking s \r\n"
				+ "inner join trip t on t.trip_id=s.seatb_trip_id and s.seatb_status=0\r\n"
				+ "inner join bus b on t.trip_bus_id=b.bus_id\r\n"
				+ "inner join business bs on b.bus_bs_id= bs.bs_id and bs.bs_acc_mail=? \r\n"
				+ "inner join account a on s.seatb_user_mail=a.acc_mail\r\n"
				+ "group by seatb_trip_id,seatb_user_mail,s.seatb_start_date\r\n" + "order by s.seatb_start_date desc";
		try {
			ps = connection.prepareStatement(select);
			ps.setString(1, mail);

			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking seat = new SeatBooking(rs.getInt("seatb_trip_id"), rs.getString("seatb_start_date"),
						rs.getString("seatb_user_mail"), rs.getInt("total"));
				listSeat.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (SeatBooking list : listSeat) {
			l.add(new SeatBookingDAO().apendSeatName1(list.getSeatStartDate(), list.getSeatMail(), list.getTripId(),
					list.getTotalSeat()));
		}
		return l;
	}

	// ghep chuoi
	public SeatBooking apendSeatName1(String startDate, String mail, int idTrip, int totalSeat) {
		SeatBooking seat = null;
		listSeat = new ArrayList<SeatBooking>();
		connection = con.getConnect();

		String getList = "select seatb_id, seatb_trip_id,a.acc_name,p.place_name,p1.place_name, seatb_name, seatb_date, seatb_start_date,t.trip_price from seatbooking s\r\n"
				+ "inner join trip t on t.trip_id=s.seatb_trip_id and seatb_trip_id=? and seatb_status=0 \r\n"
				+ "inner join place p on t.trip_start_place=p.place_id and seatb_start_date=? \r\n"
				+ "inner join place p1 on t.trip_end_place=p1.place_id\r\n"
				+ "inner join account a on s.seatb_user_mail = a.acc_mail and seatb_user_mail=? \r\n"
				+ "order by seatb_name asc";

		try {
			ps = connection.prepareStatement(getList);
			ps.setInt(1, idTrip);
			ps.setString(2, startDate);
			ps.setString(3, mail);

			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking getListSeat = new SeatBooking(rs.getInt("seatb_id"), rs.getInt("seatb_trip_id"), mail,
						rs.getString("seatb_name"), rs.getString("seatb_date"), rs.getString("seatb_start_date"),
						totalSeat, rs.getString(5), rs.getString(4), rs.getString("acc_name"),rs.getString("trip_price"));
				listSeat.add(getListSeat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name = "";
		for (SeatBooking list : listSeat) {

			for (SeatBooking list1 : listSeat) {
				if (listSeat.indexOf(list) == 0) {
					if (list1.getSeatName().equals(list.getSeatName())) {
						name += list.getSeatName() + ", ";
					} else {
						name += list1.getSeatName() + ", ";
					}
				} else {
					continue;
				}
			}
			seat = new SeatBooking(list.getSeatBooking(), list.getTripId(), list.getSeatMail(), name.substring(0,name.length()-2),
					list.getSeatDate(), list.getSeatStartDate(), totalSeat, list.getEndPlace(), 
					list.getStartPlace(),list.getUserName(),list.getPrice());
		}

		return seat;

	}
	
	public String approvedListSeatBookingDAO(String idTrip,String dateStart, String seat) {
		// TODO Auto-generated method stub
		String s="'";
		for (String aSeat : seat.split(",")) {
			
			s+=aSeat+"','";
		}
		String updateSeat = "select seatb_id,seatb_name,seatb_status from seatbooking "
				+ "where seatb_trip_id=? and seatb_name in ("+s.substring(0,s.length()-2)+") and seatb_start_date=?";
		connection = con.getConnect();
		String check = "Cập Nhật Thất Bại";
		try {
			ps = connection.prepareStatement(updateSeat, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ps.setInt(1, Integer.parseInt(idTrip));
			ps.setString(2, dateStart);
			rs = ps.executeQuery();
			while(rs.next()) {
				rs.updateInt("seatb_status", 1);
				rs.updateRow();
				check = "Cập Nhật Thành Công";
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}
//	public static void main(String[] args) {
//		System.out.println(new SeatBookingDAO().approvedListSeatBookingDAO("105", "2019/12/03", "A5,A6"));
//	}

	public String deleteListSeatBookingDAO(String idTrip, String dateStart, String seat) {
		// TODO Auto-generated method stub
				String s="'";
				for (String aSeat : seat.split(",")) {
					
					s+=aSeat+"','";
				}
				String updateSeat = "select seatb_id,seatb_name,seatb_status from seatbooking "
						+ "where seatb_trip_id=? and seatb_name in ("+s.substring(0,s.length()-2)+") and seatb_start_date=?";
				connection = con.getConnect();
				String check = "Xóa Thất Bại";
				try {
					ps = connection.prepareStatement(updateSeat, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
					ps.setInt(1, Integer.parseInt(idTrip));
					ps.setString(2, dateStart);
					rs = ps.executeQuery();
					while(rs.next()) {
						rs.deleteRow();
						check = "Xóa Thành Công";
					}
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return check;
	}
	
	public List<SeatBooking> getListTicketByTripIdAndDateDAO(String idTrip,String startDate) {

		listSeat = new ArrayList<SeatBooking>();
		connection = con.getConnect();
		List<SeatBooking> l = new ArrayList<SeatBooking>();
		String select = "select seatb_trip_id,seatb_start_date,seatb_user_mail, count(*) as 'total'  \r\n" + 
				"from seatbooking where seatb_trip_id=? and seatb_start_date=? group by seatb_user_mail,seatb_start_date,seatb_trip_id";
		try {
			ps = connection.prepareStatement(select);
			ps.setInt(1, Integer.parseInt(idTrip));
			ps.setString(2,startDate);
			rs = ps.executeQuery();

			while (rs.next()) {
				SeatBooking seat = new SeatBooking(rs.getInt("seatb_trip_id"), rs.getString("seatb_start_date"),
						rs.getString("seatb_user_mail"), rs.getInt("total"));
				listSeat.add(seat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (SeatBooking list : listSeat) {
			l.add(new SeatBookingDAO().apendSeatName(list.getSeatStartDate(), list.getSeatMail(), list.getTripId(),
					list.getTotalSeat()));
		}
		return l;
	}
	
	public static void main(String[] args) {
		System.out.println(new SeatBookingDAO().getListTicketByTripIdAndDateDAO("105", "2019/12/03").size());
		for(SeatBooking seat : new SeatBookingDAO().getListTicketByTripIdAndDateDAO("105", "2019/12/03")) {
			System.out.println("name: "+seat.getSeatName());
		}
	}
}

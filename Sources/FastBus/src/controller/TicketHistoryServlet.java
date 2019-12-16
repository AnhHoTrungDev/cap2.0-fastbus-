package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.ChuyenXe;
import model.bean.SeatBooking;
import model.bean.User;
import model.bo.ChuyenXeBO;
import model.bo.SeatBookingBO;

/**
 * Servlet implementation class TicketHistoryServlet
 */
@WebServlet("/TicketHistoryServlet")
public class TicketHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TicketHistoryServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		String url = "";
		String mesage = "";
		if ("1".equalsIgnoreCase(request.getParameter("booked"))) {
			ChuyenXe trip =(ChuyenXe)session.getAttribute("tripInfo");
			String seat=(String)session.getAttribute("seat");
			String pickPlace= (String)session.getAttribute("pickPlace");
			
			request.setAttribute("trip", trip);
			request.setAttribute("seat", seat);
			request.setAttribute("pickPlace", pickPlace);
			request.setAttribute("totalSeat", request.getParameter("tong").toString());
			url="/Views/users/newTickerNow.jsp";
			
			session.removeAttribute("pickPlace");
			session.removeAttribute("tripInfo");
			session.removeAttribute("seat");
			
		} else if (session.getAttribute("email") != null) {
			List<ChuyenXe> listChuyen = new ArrayList<ChuyenXe>();
			List<SeatBooking> listSeat = new SeatBookingBO().getListSeatBooked((String) session.getAttribute("email"));
			for (SeatBooking seat : listSeat) {
				ChuyenXe chuyenXe = new ChuyenXeBO().getListTripByIdBO(seat.getTripId(), seat.getSeatStartDate());
				listChuyen.add(chuyenXe);
			}
			request.setAttribute("listChuyen", listChuyen);
			request.setAttribute("list", listSeat);
			url = "/Views/users/tickerBusHistory.jsp";
		} else {
			url = "LoadHomePageServlet";
			mesage = "false";
		}
		request.setAttribute("message", mesage);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

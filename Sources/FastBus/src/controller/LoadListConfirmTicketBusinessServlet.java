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

import model.bean.SeatBooking;
import model.bo.SeatBookingBO;

/**
 * Servlet implementation class LoadListConfirmTicketBusinessServlet
 */
@WebServlet("/LoadListConfirmTicketBusinessServlet")
public class LoadListConfirmTicketBusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadListConfirmTicketBusinessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		request.getCharacterEncoding();
		if("btnConfirmAccept".equalsIgnoreCase(request.getParameter("btnConfirmAccept"))) {
			String idTrip=request.getParameter("idTripForAccept");
			String dateStart=request.getParameter("dateStarForAccept");
			String seat=request.getParameter("getChiarTickerForForAccept");
			
			String check=new SeatBookingBO().approvedListSeatBookingBO(idTrip,dateStart,seat);
			System.out.println(check);
			request.setAttribute("approvedMessage", check);
		}else if("btnConfirmDetleteTrickerConfrim".equalsIgnoreCase(request.getParameter("btnConfirmDetleteTrickerConfrim"))) {
			String idTrip=request.getParameter("idTripForDelete");
			String dateStart=request.getParameter("dateStarForDelete");
			String seat=request.getParameter("getCodeConfirmAllCharirTrickerr");
			
			String check=new SeatBookingBO().deleteListSeatBookingBO(idTrip,dateStart,seat);
			System.out.println(check);
			request.setAttribute("deleteMessage", check);
		}
		HttpSession session = request.getSession();
		List<SeatBooking> listSeat =new SeatBookingBO().getListAwaitingAprovalTicketBO((String) session.getAttribute("business_mail"));
		request.setAttribute("listSeat", listSeat);
		RequestDispatcher rd= request.getRequestDispatcher("/Views/business/confrimTicket.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

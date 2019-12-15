package controller;

import java.io.IOException;
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
 * Servlet implementation class LoadDashboardServlet
 */
@WebServlet("/LoadDashboardServlet")
public class LoadDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadDashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =request.getSession();
		
		String url="/Views/business/index.jsp";
		float totalPrice = new SeatBookingBO().getListTotalPrice((String)session.getAttribute("business_mail"));
		int totalSeat = new SeatBookingBO().getTotalSeatInDate((String)session.getAttribute("business_mail"));
		int totalBus = new SeatBookingBO().getTotalBus((String)session.getAttribute("business_mail"));
		int totalSeatIsApproving=new SeatBookingBO().gettotalSeatIsApproving((String)session.getAttribute("business_mail"));
		List<SeatBooking> listPrice=new SeatBookingBO().getListPriceByMonth((String)session.getAttribute("business_mail"));
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("totalSeat", totalSeat);
		request.setAttribute("totalBus", totalBus);
		request.setAttribute("listPrice", listPrice);
		request.setAttribute("totalSeatIsApproving", totalSeatIsApproving);
		RequestDispatcher rd= request.getRequestDispatcher(url);
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

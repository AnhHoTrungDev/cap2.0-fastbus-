package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SeatBookingInformationServlet
 */
@WebServlet("/SeatBookingInformationServlet")
public class SeatBookingInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeatBookingInformationServlet() {
        super();
        // TODO Auto-generated constructor stub        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String trip ="";
		String businessName="";
		String startPlace="";
		String endPlace="";
        String startDate="";
        String endDate="";
        String totalTime="";
        String startTime="";
        String endTime="";
        String seat="";
        String place="";
        String price="";
        
        if("Tiếp Tục".equalsIgnoreCase(request.getParameter("confirmSeatBooking"))) {
        	trip= request.getParameter("trip");
        	businessName=request.getParameter("business");
        	startDate=request.getParameter("startDate");
        	startTime=request.getParameter("startTime");
        	totalTime=request.getParameter("totalTime");
        	endTime=request.getParameter("endTime");
        	seat=request.getParameter("codeChairOder");
        	price=request.getParameter("price");
        	place=request.getParameter("place");
        	
        	String str[];
        	str= trip.split("-");
        	startPlace=str[0];
        	endPlace=str[1];
        	
        	
        	
        }
		
		RequestDispatcher rd= request.getRequestDispatcher("LoadHomePageServlet");
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

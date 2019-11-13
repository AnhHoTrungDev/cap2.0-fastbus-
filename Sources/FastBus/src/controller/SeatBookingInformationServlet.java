package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.bcel.internal.generic.FLOAD;

import model.bean.ChuyenXe;
import model.bean.User;

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
		HttpSession session =request.getSession();
		
		ChuyenXe tripInfor=null;
		
		String url="";
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
        	price= (request.getParameter("price").split("₫")[0]).toString();
        	
        	System.out.println();
        	place=request.getParameter("place");
        	
        	String str[];
        	str= trip.split("-");
        	startPlace=str[0];
        	endPlace=str[1];
        	
        	tripInfor= new ChuyenXe(businessName, startPlace, endPlace, startDate, startTime, endTime, 100000);
        	
        	session.setAttribute("tripInfo", tripInfor );
        	session.setAttribute("seat", seat);
        	
        	url="Views/users/confirmCustomerInfo.jsp";
        	
        }
        
        if("Tiếp Tục".equalsIgnoreCase(request.getParameter("confirmInfo"))) {
        	tripInfor=(ChuyenXe)session.getAttribute("tripInfo");
        	seat=(String)session.getAttribute("seat");
        	url="";
        	
        }
        
        
        
        
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

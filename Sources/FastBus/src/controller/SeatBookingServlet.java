package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.ChuyenXe;
import model.bo.ChuyenXeBO;

/**
 * Servlet implementation class SeatBookingServlet
 */
@WebServlet("/SeatBookingServlet")
public class SeatBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeatBookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getCharacterEncoding();
		response.getCharacterEncoding();
		
		int idTrip=  Integer.parseInt(request.getParameter("idTrip"));
		ChuyenXe Trip=new ChuyenXeBO().getListTripByIdBO(idTrip);
		
		request.setAttribute("trip", Trip);
		
		RequestDispatcher rd=request.getRequestDispatcher("Views/users/seatBooking.jsp");
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

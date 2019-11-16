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
import model.bo.UserBO;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		ChuyenXe tripInfor = null;

		String url = "";
		String trip = "";
		String businessName = "";
		String startPlace = "";
		String endPlace = "";
		String startDate = "";
		String endDate = "";
		String totalTime = "";
		String startTime = "";
		String endTime = "";
		String seat = "";
		String place = "";
		float price = 0;
		String userName="";
		String mail="";
		String phone="";
		String address="";

		if ("Tiếp Tục".equalsIgnoreCase(request.getParameter("confirmSeatBooking"))) {
			trip = request.getParameter("trip");
			businessName = request.getParameter("business");
			startDate = request.getParameter("startDate");
			startTime = request.getParameter("startTime");
			totalTime = request.getParameter("totalTime");
			endTime = request.getParameter("endTime");
			seat = request.getParameter("codeChairOder");
			
			String pr= request.getParameter("price");
			String ab = pr.substring(0, pr.length()-2);
			
			price = Float.parseFloat(ab);
			place = request.getParameter("place");

			String str[];
			str = trip.split("-");
			startPlace = str[0];
			endPlace = str[1];

			tripInfor = new ChuyenXe(businessName, startPlace, endPlace, startDate, startTime, endTime, price);

			session.setAttribute("tripInfo", tripInfor);
			session.setAttribute("seat", seat);

			if (session.getAttribute("acc_name") != null) {
				User getUser = new UserBO().getAccountByNameBO((String) session.getAttribute("acc_name"));

				request.setAttribute("getUser", getUser);
			}
			url = "Views/users/confirmCustomerInfo.jsp";
		}

		if ("Tiếp Tục".equalsIgnoreCase(request.getParameter("confirmInfo"))) {
			userName= request.getParameter("name");
			mail=request.getParameter("mail");
			phone=request.getParameter("phone");
			address= request.getParameter("address");
			User user=new User(mail, userName, phone, address, null, null);
			session.setAttribute("user", user);
			
			url="Views/users/comfirmFinish.jsp";

		}

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

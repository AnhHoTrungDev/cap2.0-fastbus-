package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
import model.bo.SeatBookingBO;
import model.bo.SendEmailBO;
import model.bo.UserBO;
import model.bean.MailConfig;

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
		response.setContentType("UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		ChuyenXe tripInfor = null;

		String url = "";
		String trip = "";
		int idTrip = 0;
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
		String userName = "";
		String mail = "";
		String phone = "";
		String address = "";

		if ("Tiếp Tục".equalsIgnoreCase(request.getParameter("confirmSeatBooking"))) {
			trip = request.getParameter("trip");
			idTrip = Integer.parseInt(request.getParameter("idTrip"));
			businessName = request.getParameter("business");
			startDate = request.getParameter("startDate");
			startTime = request.getParameter("startTime");
			totalTime = request.getParameter("totalTime");
			endTime = request.getParameter("endTime");
			seat = request.getParameter("codeChairOder");

			String pr = request.getParameter("price");
			String ab = pr.substring(0, pr.length() - 2);

			price = Float.parseFloat(ab);
			place = request.getParameter("place");

			startPlace = trip.split("-")[0];
			endPlace = trip.split("-")[1];

			tripInfor = new ChuyenXe(idTrip, businessName, startPlace, endPlace, startDate, startTime, endTime, price);

			session.setAttribute("tripInfo", tripInfor);
			session.setAttribute("seat", seat);

			if (session.getAttribute("acc_name") != null) {
				User getUser = new UserBO().getAccountByNameBO((String) session.getAttribute("acc_name"));

				session.setAttribute("getUser", getUser);
			}
			url = "Views/users/confirmCustomerInfo.jsp";
		}

		if ("Tiếp Tục".equalsIgnoreCase(request.getParameter("confirmInfo"))) {
			userName = request.getParameter("name");
			mail = request.getParameter("mail");
			phone = request.getParameter("phone");
			address = request.getParameter("address");
			User user = new User(mail, userName, phone, address, null, null);
			session.setAttribute("user", user);

			url = "Views/users/comfirmFinish.jsp";

		}
		if ("Xác nhận".equalsIgnoreCase(request.getParameter("confirmFinish"))) {

			tripInfor = (ChuyenXe) session.getAttribute("tripInfo");
			User user = (User) session.getAttribute("getUser");

			List<SeatBooking> listSeat = new ArrayList<SeatBooking>();
			for (String aSeat : ((String) session.getAttribute("seat")).split(",")) {
				SeatBooking sb = new SeatBooking(tripInfor.getIdTrip(), user.getEmail(), aSeat);
				listSeat.add(sb);
			}

			if (new SeatBookingBO().insertSeatBO(listSeat) == 1) {
				new SendEmailBO().SendMailCustomerBO(tripInfor, user, listSeat);
				url = "LoadHomePageServlet";
			} else {
				url = "Views/users/busGarageDetail.jsp";
			}
			session.removeAttribute("tripInfo");
			session.removeAttribute("seat");
			session.removeAttribute("user");
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

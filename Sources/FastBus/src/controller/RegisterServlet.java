package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.SendResult;

import org.apache.catalina.ha.backend.Sender;

import common.Encode;
import model.bean.User;
import model.bo.UserBO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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

		request.setCharacterEncoding("UTF-8");
		request.getCharacterEncoding();

		String url = "";
		User user = null;
		Encode enCode=new Encode();

		if ("Đăng Ký".equals(request.getParameter("register"))) {
			String message = "false";
			
			String mail = request.getParameter("mail");
			String name = request.getParameter("fullName");
			String passWord = enCode.md5(request.getParameter("password"));
			String phone = request.getParameter("phone");
			String address=request.getParameter("address");
			user = new User(mail, passWord, phone, name,address);

			if (new UserBO().insertUserBO(user) != 0) {
				message = "true";
				url="/LoadHomePageServlet";
				
			} else {
				url="/Views/users/register.jsp";
			}
			
			request.setAttribute("rgmessage", message);
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/Views/users/register.jsp");
			rd.forward(request, response);
		}

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

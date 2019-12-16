package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Encode;
import model.bean.Business;
import model.bean.User;
import model.bo.BusinessBO;
import model.bo.UserBO;

/**
 * Servlet implementation class LoginAdminServlet
 */
@WebServlet("/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAdminServlet() {
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
		Encode enCode = new Encode();
		HttpSession session = request.getSession();
		String url = "/Views/admin/loginAdmin.jsp";
		String message = "Tên đăng nhập hoặc mật khẩu không đúng";
		if ((String) session.getAttribute("admin_mail") != null) {
			url = "AcceptAccountBusinessServlet";
		}

		if ("btnAdminLogin".equalsIgnoreCase(request.getParameter("btnAdminLogin"))) {
			String email = request.getParameter("inputEmail");
			String passWord = request.getParameter("inputPassword");
			
			User user = new UserBO().checkAdminLogin(email, enCode.md5(passWord));
			if (user != null) {
				if ((Integer.parseInt(user.getIdRole())) != 1) {
					message = "Bạn Không phải là Administrator";
				} else {
					url = "AcceptAccountBusinessServlet";
					message = "Đăng Nhập Thành Công";
					session.setAttribute("admin_mail", user.getEmail());
					session.setAttribute("admin_name", user.getName());
				}
			}
		}
		request.setAttribute("messageAdminLogin", message);
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

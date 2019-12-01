package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.*;

import common.Encode;
import model.bean.User;
import model.bo.UserBO;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		request.getCharacterEncoding();
		response.getCharacterEncoding();

		Encode enCode = new Encode();
		
		HttpSession session = request.getSession();	
		String mail = request.getParameter("email");
		String password = enCode.md5(request.getParameter("password"));
		// message: true - false
		User user = new UserBO().CheckLoginBO(mail, password);
		if (user.getMessage() == "true") {
			session.setAttribute("email", user.getEmail());
			session.setAttribute("acc_name", user.getName());
			session.setAttribute("password", user.getPassWord());
		}
		response.getWriter().write(user.getMessage());

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

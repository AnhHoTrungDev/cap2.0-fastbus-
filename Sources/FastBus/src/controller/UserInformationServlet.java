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
import model.bean.User;
import model.bo.UserBO;

/**
 * Servlet implementation class UserInformationServlet
 */
@WebServlet("/UserInformationServlet")
public class UserInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserInformationServlet() {
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
		HttpSession session = request.getSession();
		Encode enCode=new Encode();
		String url="Views/users/profileUser.jsp";
		
		if ("btnupdateInfor".equalsIgnoreCase(request.getParameter("btnupdateInfor"))) {
			String messageUpdateUser="false";
			String mail= request.getParameter("mail");
			String name= request.getParameter("fullName");
			String phone= request.getParameter("inputUpdatePhone");
			String address= request.getParameter("inputUpdateAddress");
			
			User user=new User(mail, name, phone, address, null, null);
			if(new UserBO().updateUserDAO(user)==1) {
				messageUpdateUser="true";
				request.getSession().removeAttribute("acc_name");
			    request.getSession().setAttribute("acc_name", user.getName());
			}
			
			request.setAttribute("messageUpdateUser", messageUpdateUser);
		}else if("changePassword".equalsIgnoreCase(request.getParameter("change"))){
			url="Views/users/changePassword.jsp";
		}else if("btnChangePassword".equalsIgnoreCase(request.getParameter("btnChangePassword"))){
			String messageUpdatePass="false";
			String oldPass=enCode.md5(request.getParameter("inputPresentPassword"));
			String newPass=enCode.md5(request.getParameter("password"));
			
			int check=new UserBO().updatePasswordBO((String)session.getAttribute("email"), oldPass, newPass);
			if(check==1) {
				messageUpdatePass="true";
				request.setAttribute("messageUpdatePass", messageUpdatePass);
			}else {
				url="Views/users/changePassword.jsp";
			}
			
		}
			
			String name = (String) session.getAttribute("acc_name");
			User user = new UserBO().getUserByNameBO(name);
			request.setAttribute("user", user);
			

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

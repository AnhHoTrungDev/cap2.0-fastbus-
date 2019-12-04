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
import model.bo.BusinessBO;

/**
 * Servlet implementation class LoginBusinessServlet
 */
@WebServlet("/LoginBusinessServlet")
public class LoginBusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginBusinessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Encode enCode = new Encode();
		HttpSession session = request.getSession();
		String url="";
		
		if ("btnBusinessLogin".equalsIgnoreCase(request.getParameter("businessLogin"))) {
			Business business = null;
			String email = request.getParameter("inputEmail");
			String passWord = request.getParameter("inputPassword");
			String message = "false";
			
			// message=0: sai mk or pass , 1: ngoai pham vi,2: dung
			if (new BusinessBO().checkBusinessLogin(email,enCode.md5(passWord)) == 2) {
				business = new BusinessBO().getBusinessByMail(email);
				message = "true";
				url="/Views/business/index.jsp";
			} else if (new BusinessBO().checkBusinessLogin(email, passWord) == 1) {
				message = "isNotRole";
			}
			session.setAttribute("business_mail", business.getMail());
			session.setAttribute("business_name", business.getName());
			request.setAttribute("message", message);
		}else {
			url="/Views/business/loginBusiness.jsp";
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

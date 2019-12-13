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
		String url="/Views/business/loginBusiness.jsp";
		if ((String)session.getAttribute("business_mail") != null) {
			url="LoadDashboardServlet";
		}
		
		if ("btnBusinessLogin".equalsIgnoreCase(request.getParameter("businessLogin"))) {
			Business business = null;
			String email = request.getParameter("inputEmail");
			String passWord = request.getParameter("inputPassword");
			String message = "false";
			
			// message=0: sai mk or pass , 1: ngoai pham vi,2: dung
			if (new BusinessBO().checkBusinessLogin(email,enCode.md5(passWord)) == 3) {
				business = new BusinessBO().getBusinessByMail(email);
				if(business!=null) {
					message = "true";
					url="LoadDashboardServlet";
					
					session.setAttribute("idBusiness", business.getIdBusiness());
					session.setAttribute("business_mail", business.getMail());
					session.setAttribute("business_name", business.getName());
				}else{
					message="awaitingApproval";
				}
			} else {
				message = "isNotRole";
			}
			
			request.setAttribute("message", message);
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

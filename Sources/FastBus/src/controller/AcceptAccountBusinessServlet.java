package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Business;
import model.bo.BusBO;
import model.bo.BusinessBO;
import model.bo.UserBO;

/**
 * Servlet implementation class AcceptAccountBusinessServlet
 */
@WebServlet("/AcceptAccountBusinessServlet")
public class AcceptAccountBusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptAccountBusinessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message="";
		if("btnAcceptBs".equalsIgnoreCase(request.getParameter("btnAcceptBs"))) {
			String email= request.getParameter("emailBusiness");
			message = new UserBO().acceptNewBusiness(email);
			request.setAttribute("messageApproved", message);
		}else if("btnNoAcceptBs".equalsIgnoreCase(request.getParameter("btnNoAcceptBs"))){
			String email= request.getParameter("emailNoBusiness");
			message = new UserBO().deleteNewBusiness(email);
			request.setAttribute("messageDeleted", message);
		}
		List<Business> listBusiness= new BusinessBO().getListBusiniessIsApproving();
		request.setAttribute("listBusiness", listBusiness);
		RequestDispatcher rd = request.getRequestDispatcher("Views/admin/acceptNewAccountBs.jsp");
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

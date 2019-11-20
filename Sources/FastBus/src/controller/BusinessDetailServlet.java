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
import model.bean.ChuyenXe;
import model.bo.BusinessBO;
import model.bo.ChuyenXeBO;

/**
 * Servlet implementation class BusinessDetailServlet
 */
@WebServlet("/BusinessDetailServlet")
public class BusinessDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessDetailServlet() {
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
		
		String idBusiness=request.getParameter("idBusiness");
		Business business=new BusinessBO().getBusinessByIdBO(idBusiness);
		List<ChuyenXe> listTrip = new ChuyenXeBO().getListTripByIdBusinessBO(idBusiness);
		request.setAttribute("listTrip", listTrip);
		request.setAttribute("business", business);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Views/users/businessDetail.jsp");
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

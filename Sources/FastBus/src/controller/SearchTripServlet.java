package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.ChuyenXe;
import model.bo.ChuyenXeBO;

/**
 * Servlet implementation class SearchTripServlet
 */
@WebServlet("/SearchTripServlet")
public class SearchTripServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTripServlet() {
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
		
		String startPlace=request.getParameter("startPlace");
		String endPlace=request.getParameter("endPlace");
		String startDate=request.getParameter("startDate");
		String startTime=request.getParameter("startTime");
		

		List<ChuyenXe> listTrip = new ChuyenXeBO().getListPlaceBO(startPlace, endPlace, startDate, startTime);
		request.setAttribute("listTrip", listTrip);
		RequestDispatcher rd=request.getRequestDispatcher("/Views/users/listTripSearch.jsp");
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

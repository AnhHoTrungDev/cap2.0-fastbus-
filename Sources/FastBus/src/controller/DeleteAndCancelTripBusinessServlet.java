package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.ChuyenXeBO;

/**
 * Servlet implementation class DeleteAndCancelTripBusinessServlet
 */
@WebServlet("/DeleteAndCancelTripBusinessServlet")
public class DeleteAndCancelTripBusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAndCancelTripBusinessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		request.getCharacterEncoding();
		
		String url="";
		String messageDelete="deleteFalse";
		
		if("btnConfirmDetlete".equalsIgnoreCase(request.getParameter("btnConfirmDetlete"))) {
			String startPlace=request.getParameter("starPlaceForDeleteTrip");
			String endPlace=request.getParameter("endPlaceForDeleteTrip");
			String startTime=request.getParameter("timeStarForDeleteTrip");
			if(new ChuyenXeBO().DeleteTripByIdTripBO(startPlace,endPlace,startTime)==1) {
				messageDelete="deleteSuccess";
			}
			url="LoadListTripBusinessServlet";
			request.setAttribute("messageDelete", messageDelete);
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

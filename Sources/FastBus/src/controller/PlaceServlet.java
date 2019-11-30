package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.ChuyenXe;
import model.bean.DiaDiem;
import model.bo.ChuyenXeBO;
import model.bo.DiaDiemBO;

/**
 * Servlet implementation class PlaceServlet
 */
@WebServlet("/PlaceServlet")
public class PlaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<DiaDiem> listPlace=new DiaDiemBO().getListPlaceBO();
		List<ChuyenXe> listTrip=new ChuyenXeBO().getListTripBO();
		
		request.setAttribute("listPlace", listPlace);
		request.setAttribute("listTrip", listTrip);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Views/users/listBusiness.jsp");
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

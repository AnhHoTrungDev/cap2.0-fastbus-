package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Bus;
import model.bean.ChuyenXe;
import model.bean.DiaDiem;
import model.bo.BusBO;
import model.bo.ChuyenXeBO;
import model.bo.DiaDiemBO;

/**
 * Servlet implementation class LoadListTripBusinessServlet
 */
@WebServlet("/LoadListTripBusinessServlet")
public class LoadListTripBusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadListTripBusinessServlet() {
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
		HttpSession session = request.getSession();

		List<DiaDiem> listPlace = new DiaDiemBO().getListPlaceBO();
		List<Bus> listBus = new BusBO().getListBusByEmailBusinessBO(session.getAttribute("business_mail").toString());
		List<ChuyenXe> listTrip = new ChuyenXeBO()
				.getListTripByIdBusinessBO(session.getAttribute("idBusiness").toString());
		request.setAttribute("listPlace", listPlace);
		request.setAttribute("listTrip", listTrip);
		request.setAttribute("listBus", listBus);
		RequestDispatcher rd = request.getRequestDispatcher("/Views/business/listTripBusiness.jsp");
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

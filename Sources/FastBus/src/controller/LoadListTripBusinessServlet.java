package controller;

import java.io.IOException;
import java.util.ArrayList;
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
		request.setCharacterEncoding("UTF-8");
		request.getCharacterEncoding();
		
		List<ChuyenXe> listChuyen=new ArrayList<ChuyenXe>();
		String messageInsertTrip="false";
		HttpSession session = request.getSession();
		if ("btnAddTrip".equalsIgnoreCase(request.getParameter("btnAddTrip"))) {
			String startPlace = request.getParameter("cbAddressDepart");
			String endPlace = request.getParameter("cbAddressEnd");
			String startBus = request.getParameter("idBusgo");
			String endBus = request.getParameter("idBusReturn");
			String price = request.getParameter("inputPrice");
			String startTime = request.getParameter("inputTimeStart");
			String endTime = request.getParameter("inputTimeEnd");
			
			ChuyenXe startTrip=new ChuyenXe(Integer.parseInt(startBus), startPlace, endPlace, startTime, endTime, price, 1);
			ChuyenXe endTrip=new ChuyenXe(Integer.parseInt(endBus), endPlace, startPlace, startTime, endTime, price, 1);
			listChuyen.add(startTrip);
			listChuyen.add(endTrip);
			if(new ChuyenXeBO().InsertListTripBO(listChuyen)!=0) {
				messageInsertTrip="true";
			}
			
			request.setAttribute("messageInsertTrip", messageInsertTrip);
		}
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

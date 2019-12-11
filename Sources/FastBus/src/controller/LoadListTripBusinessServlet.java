package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.bcel.internal.generic.NEW;

import model.bean.Bus;
import model.bean.ChuyenXe;
import model.bean.DiaDiem;
import model.bean.SeatBooking;
import model.bo.BusBO;
import model.bo.ChuyenXeBO;
import model.bo.DiaDiemBO;
import model.bo.SeatBookingBO;

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
		
		String url="/Views/business/listTripBusiness.jsp";
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
		}else if("btnEditPrice".equalsIgnoreCase(request.getParameter("btnEditPrice"))){
			String price=request.getParameter("editPricebs");
			String idTrip=request.getParameter("getIDForEditPricebs");
			String message=new ChuyenXeBO().updatePriceByIdTripBO(idTrip,price);
			System.out.println(message);
			request.setAttribute("updatePriceMessage", message);

		}
		else if("btnDetail".equalsIgnoreCase(request.getParameter("btnDetail"))) {
			
			String idTrip=request.getParameter("idTrip");
			String startDate="2019-12-03";
			if(startDate=="") {
				startDate=LocalDate.now().toString();
			}
			List<SeatBooking> listSeat=new SeatBookingBO().getListTicketByTripIdAndDateDAO(idTrip, startDate);
			request.setAttribute("trip", new ChuyenXeBO().getListTripByIdBO(Integer.parseInt(idTrip), startDate));
			request.setAttribute("listSeat", listSeat);
			url="Views/business/detailTripbusiness.jsp";
		}
		List<DiaDiem> listPlace = new DiaDiemBO().getListPlaceBO();
		List<Bus> listBus = new BusBO().getListBusByEmailBusinessBO(session.getAttribute("business_mail").toString());
		List<ChuyenXe> listTrip = new ChuyenXeBO()
				.getListTripByIdBusinessBO(session.getAttribute("idBusiness").toString());
		request.setAttribute("listPlace", listPlace);
		request.setAttribute("listTrip", listTrip);
		request.setAttribute("listBus", listBus);
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

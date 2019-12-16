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
import javax.servlet.http.Part;

import model.bean.DiaDiem;
import model.bean.PickupPlace;
import model.bo.DiaDiemBO;

/**
 * Servlet implementation class PickUpPlaceSevlet
 */
@WebServlet("/PickUpPlaceSevlet")
public class PickUpPlaceSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PickUpPlaceSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesion = request.getSession();
		String message="";
		if("btnaddPickUPlocation".equals(request.getParameter("btnaddPickUPlocation"))) {
			String namePick = request.getParameter("inputAddressDetailPichup");
			String idPlace = request.getParameter("cbChoseCity");
			String idBusiness= sesion.getAttribute("idBusiness").toString();
			
			PickupPlace pick=new PickupPlace(Integer.parseInt(idPlace), Integer.parseInt(idBusiness), namePick);
			message= new DiaDiemBO().insertPickUpBO(pick);
			request.setAttribute("messageInsertPick", message);
		}
		
		List<PickupPlace> listPick= new DiaDiemBO().loadListPickUpPlaceByIdBusiness(sesion.getAttribute("idBusiness").toString());
		List<DiaDiem> listPlace = new DiaDiemBO().getListPlaceBO();
		
		request.setAttribute("listPlace", listPlace);
		request.setAttribute("listPick", listPick);
		RequestDispatcher rd= request.getRequestDispatcher("/Views/business/localPickUpCustome.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}

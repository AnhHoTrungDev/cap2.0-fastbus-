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
import model.bo.BusBO;

/**
 * Servlet implementation class LoadListBusBusinessServlet
 */
@WebServlet("/LoadListBusBusinessServlet")
public class LoadListBusBusinessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadListBusBusinessServlet() {
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
		HttpSession session =request.getSession();
		String message="";
		Bus bus= null;
		System.out.println(session.getAttribute("idBusiness").toString());
		if("btnAddbus".equalsIgnoreCase(request.getParameter("btnAddbus"))) {
			String name=request.getParameter("codeCarControl");
			String color=request.getParameter("busColor");
			String hangXe=request.getParameter("busBrand");
			
			bus = new Bus(name,Integer.parseInt(session.getAttribute("idBusiness").toString()) , color, hangXe,null);
			message = new BusBO().insertBusBO(bus);
			
			request.setAttribute("messageInsert", message);
		}
		
		List<Bus> listBus=new BusBO().loadListBusByIdBusiness(session.getAttribute("idBusiness").toString());
		
		request.setAttribute("listBus", listBus);
		RequestDispatcher rd=request.getRequestDispatcher("Views/business/listBusBusiness.jsp");
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

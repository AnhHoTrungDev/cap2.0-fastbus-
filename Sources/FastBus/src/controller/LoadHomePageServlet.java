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

/**
 * Servlet implementation class LoadHomePageServlet
 */
@WebServlet("/LoadHomePageServlet")
public class LoadHomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadHomePageServlet() {
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
		
		ChuyenXeBO chuyen=new ChuyenXeBO();
		List<DiaDiem> listChuyen=chuyen.getListPlaceBO();
		
		request.setAttribute("listDiaDiem", listChuyen);
		
		RequestDispatcher rd=request.getRequestDispatcher("/Views/users/homepage.jsp");
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

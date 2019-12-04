package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.bean.District;
import model.bean.Ward;
import model.bo.ProvinceDistrictWardBO;

/**
 * Servlet implementation class LoadDistrictWardToProvinceServlet
 */
@WebServlet("/LoadDistrictWardToProvinceServlet")
public class LoadDistrictWardToProvinceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadDistrictWardToProvinceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("application/json;charset=UTF-8");
		
		if("cbProvince".equals(request.getParameter("changeProvince"))) {
			String idProvince =request.getParameter("idProvince");
			
			List<District> listDistrict= new ProvinceDistrictWardBO().getListDistrictBO(idProvince);
			Gson gSon= new Gson();
			PrintWriter out= response.getWriter();
			out.print(gSon.toJson(listDistrict));
			out.flush();
			out.close();
		}
		if("cbDistrict".equals(request.getParameter("changeDistrict"))) {
			String idDistrict =request.getParameter("idDistrict");
				
			List<Ward> listWard= new ProvinceDistrictWardBO().getListWardBO(idDistrict);
			Gson gSon= new Gson();
			PrintWriter out= response.getWriter();
			out.print(gSon.toJson(listWard));
			out.flush();
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

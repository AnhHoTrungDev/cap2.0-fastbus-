package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.sun.prism.Image;

import model.bean.Business;
import model.bean.District;
import model.bean.Province;
import model.bean.Ward;
import model.bo.BusinessBO;
import model.bo.ImageBO;
import model.bo.ProvinceDistrictWardBO;

/**
 * Servlet implementation class BusinessProfileServlet
 */
@WebServlet("/BusinessProfileServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50, // 50MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class BusinessProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BusinessProfileServlet() {
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

		HttpSession session = request.getSession();
		Business business=null;
		Image img=null;
		System.out.println(request.getContextPath());
		// update thong tin nha xe
		if ("btnUpdateBs".equalsIgnoreCase(request.getParameter("btnUpdateBs"))) {
			String email = request.getParameter("gmailBs");
			String name = request.getParameter("inputNamebs");
			String phone = request.getParameter("phoneNumberBs");
			String address = request.getParameter("inputDetailAddressbs");
			String idProvince = request.getParameter("cbProvince");
			String idDistrict = request.getParameter("cbDistrict");
			String idWard = request.getParameter("cbWard");
			String description = request.getParameter("contentIntroduceBs");
			String idBusiness= session.getAttribute("idBusiness").toString();
			
			String img1=request.getPart("imageBS1").getSubmittedFileName().toString();
			String img2=request.getPart("imageBS2").getSubmittedFileName().toString();
			String img3=request.getPart("imageBS3").getSubmittedFileName().toString();
			String img4=request.getPart("imageBS4").getSubmittedFileName().toString();
			String img5=request.getPart("imageBS5").getSubmittedFileName().toString();
			business=new Business(Integer.parseInt(idBusiness), email, phone, name, address, idWard, idDistrict, idProvince, description);

			// upload image from user folder to web folder
			String path="/Fastbus";
			for (Part part : request.getParts()) {
			      String fileName = extractFileName(part);
			      // refines the fileName in case it is an absolute path
			      if(fileName!=null) {
			    	  fileName = new File("WEB-INF/"+fileName).getName();
				      part.write(this.getFolderUpload(path).getAbsolutePath() + File.separator + fileName);
			      }
			    }
	        // end upload			
	          
			int check= new BusinessBO().updateBusinessBO(business);
			if(check!=0) {
				int che= new ImageBO().insertListImgsBO(img1,img2,img3,img4,img5,idBusiness);
				System.out.println("Successful.");
			}else {
				System.out.println("false.");
			}
		}
		ProvinceDistrictWardBO bo = new ProvinceDistrictWardBO();
		List<Province> listProvinces = bo.getListProvinceBO();
		List<District> listDistricts = bo.getListDistrictBO("");
		List<Ward> listWards = bo.getListWardBO("");
		 business= new BusinessBO().getBusinessByEmailBO(session.getAttribute("business_mail").toString());

		request.setAttribute("business", business);
		request.setAttribute("listProvinces", listProvinces);
		request.setAttribute("listDistricts", listDistricts);
		request.setAttribute("listWards", listWards);
		RequestDispatcher rd = request.getRequestDispatcher("Views/business/bsProfile.jsp");
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
	
	
	/**
	   * Extracts file name from HTTP header content-disposition
	   */
	  private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	      if (s.trim().startsWith("filename")) {
	        return s.substring(s.indexOf("=") + 2, s.length() - 1);
	      }
	    }
	    return "";
	  }
	  public File getFolderUpload(String path) {
	    File folderUpload = new File("C:/Users/QUOCLH/Desktop/GIT/cap2.0-fastbus-/Sources/FastBus/WebContent/Views/images");
	    if (!folderUpload.exists()) {
	      folderUpload.mkdirs();
	    }
	    return folderUpload;
	  }


}

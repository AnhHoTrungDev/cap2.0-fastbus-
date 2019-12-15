/**
 * @FileName	: BusinessBO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 17, 2019			QuocLH				Create
 */


package model.bo;

import java.util.List;

import model.bean.Business;
import model.dao.BusinessDAO;

public class BusinessBO {
	
	public List<Business> getListBusinessBO() {
		return new BusinessDAO().getListBusinessDAO();
	}
	public Business getBusinessByIdBO(String idBusiness) {
		return new BusinessDAO().getBusinessByIdDAO(idBusiness);
	}
	public int checkBusinessLogin(String email, String passWord) {
		return new BusinessDAO().checkBusinessLogin(email, passWord);
	}
	public Business getBusinessByMail(String mail) {
		return new BusinessDAO().getBusinessByMail(mail);
	}
	public int insertBusinessAccount(Business business) {
		// TODO Auto-generated method stub
		return new BusinessDAO().insertBusinessAccount(business);
	}
	public Business getBusinessByEmailBO(String email) {
		return new BusinessDAO().getBusinessByEmailDAO(email);
	}
	public int updateBusinessBO(Business business) {
		return new BusinessDAO().updateBusinessDAO(business);
	}
}

/**
 * @FileName	: UserBO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Sep 8, 2019			QuocLH				Create
 */


package model.bo;

import java.util.List;

import model.bean.User;
import model.dao.UserDAO;

public class UserBO {
	
	public User CheckLoginBO(String email,String password) {
		return new UserDAO().CheckLoginDAO(email, password);
	}
	
	public int insertUserBO(User user) {
		return new UserDAO().insertUserDAO(user);
	}
	public User getAccountByNameBO(String name) {
		return new UserDAO().getAccountByNameDAO(name);
	}
}

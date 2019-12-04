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

import model.bean.User;
import model.dao.UserDAO;

public class UserBO {

	public User CheckLoginBO(String email, String password) {
		return new UserDAO().CheckLoginDAO(email, password);
	}

	public int insertUserBO(User user) {
		return new UserDAO().insertUserDAO(user);
	}

	public User getAccountByNameBO(String name) {
		return new UserDAO().getAccountByNameDAO(name);
	}

	public User getUserByNameBO(String name) {
		return new UserDAO().getUserByNameDao(name);
	}

	public int updateUserDAO(User user) {
		return new UserDAO().updateUserDAO(user);
	}

	public int updatePasswordBO(String mail, String oldPass, String newPass) {
		return new UserDAO().updatePasswordDAO(mail, oldPass, newPass);
	}
	public int insertUserBusinessBO(User user) {
		return new UserDAO().insertUserBusinessDAO(user);
	}
}

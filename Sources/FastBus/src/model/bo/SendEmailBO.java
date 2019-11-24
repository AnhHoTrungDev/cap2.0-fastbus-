/**
 * @FileName	: SendMailBO.java
 *
 * @Version		: 1.0
 *
 * @Copyright
 *
 * @Modification Logs:
 *
 * DATE				AUTHOR				DESCRIPTION
 * -------------------------------------------------
 * Nov 23, 2019			QuocLH				Create
 */


package model.bo;

import java.util.List;

import model.bean.ChuyenXe;
import model.bean.SeatBooking;
import model.bean.User;
import model.dao.SendEmaiDAO;

public class SendEmailBO {
	public void SendMailCustomerBO(ChuyenXe tripInfor, User user, List<SeatBooking> listSeat) {
		 new SendEmaiDAO().SendMailCustomerDAO( tripInfor,  user, listSeat);
	}
}

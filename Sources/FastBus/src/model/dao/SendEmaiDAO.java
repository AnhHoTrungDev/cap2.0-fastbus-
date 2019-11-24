/**
 * @FileName	: SendEmaiCustomerlDAO.java
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

package model.dao;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import model.bean.ChuyenXe;
import model.bean.MailConfig;
import model.bean.SeatBooking;
import model.bean.User;

public class SendEmaiDAO {

	public void SendMailCustomerDAO(ChuyenXe tripInfor, User user, List<SeatBooking> listSeat) {

		// 1) get the session object
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", MailConfig.HOST_NAME);
		props.put("mail.smtp.socketFactory.port", MailConfig.SSL_PORT);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.port", MailConfig.SSL_PORT);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(MailConfig.APP_EMAIL, MailConfig.APP_PASSWORD);
			}
		});
		// 2) compose message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(MailConfig.APP_EMAIL));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(user.getEmail()));

			// 3) create HTML content
			message.setSubject("[FastBus] Xác nhận thông tin vé xe ngay " + tripInfor.getStartDate() + ". ", "UTF-8");
			String htmlContent = "<p> Xin chào "+user.getName()+"</p>"+
					" <p>Thông tin các vé xe bạn đã đặt: <p>" + " <p>Nhà xe: " + tripInfor.getNameBusiness() + "</p>"
					+ " <p> Chuyến xe: " + tripInfor.getStartPlace() + " - " + tripInfor.getEndPlace() + "</p>"
					+ " <p>Ngày đi: " + tripInfor.getStartDate() + "</p>" + " <p>Giờ đi: " + tripInfor.getStartTime()
					+ "</p>" + " <p>Ngày đi: " + tripInfor.getStartDate() + "</p>";
			message.setContent(htmlContent, "text/html; charset=UTF-8");
			// 4) send message
			Transport.send(message);

			System.out.println("Message sent successfully");
		} catch (MessagingException ex) {
			ex.printStackTrace();
		}
	}

}

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
//			String htmlContent = "<p> Xin chào "+user.getName()+"</p>"+
//					" <p>Thông tin các vé xe bạn đã đặt: <p>" + " <p>Nhà xe: " + tripInfor.getNameBusiness() + "</p>"
//					+ " <p> Chuyến xe: " + tripInfor.getStartPlace() + " - " + tripInfor.getEndPlace() + "</p>"
//					+ " <p>Ngày đi: " + tripInfor.getStartDate() + "</p>" + " <p>Giờ đi: " + tripInfor.getStartTime()
//					+ "</p>" + " <p>Ngày đi: " + tripInfor.getStartDate() + "</p>";
			String htmlContent="<table width='100%' border='0' cellspacing='0' cellpadding='0'>\r\n" + 
					"  <tbody>\r\n" + 
					"    <tr>\r\n" + 
					"      <td\r\n" + 
					"      class='m_-4608350779455020207minwidth'\r\n" + 
					"      align='center'\r\n" + 
					"      style='min-width:512px;background-color:#f3f3f3'\r\n" + 
					"      >\r\n" + 
					"      <table\r\n" + 
					"      width='100%'\r\n" + 
					"      border='0'\r\n" + 
					"      align='center'\r\n" + 
					"      cellpadding='0'\r\n" + 
					"      cellspacing='0'\r\n" + 
					"      >\r\n" + 
					"      <tbody>\r\n" + 
					"        <tr>\r\n" + 
					"          <td>\r\n" + 
					"            <table\r\n" + 
					"            width='100%'\r\n" + 
					"            border='0'\r\n" + 
					"            align='center'\r\n" + 
					"            cellpadding='0'\r\n" + 
					"            cellspacing='0'\r\n" + 
					"            >\r\n" + 
					"            <tbody>\r\n" + 
					"              <tr>\r\n" + 
					"                <td align='center'>\r\n" + 
					"                  <table\r\n" + 
					"                  class='m_-4608350779455020207w100'\r\n" + 
					"                  align='center'\r\n" + 
					"                  width='512'\r\n" + 
					"                  border='0'\r\n" + 
					"                  cellspacing='0'\r\n" + 
					"                  cellpadding='0'\r\n" + 
					"                  >\r\n" + 
					"                  <tbody>\r\n" + 
					"                    <tr>\r\n" + 
					"                      <td\r\n" + 
					"                      class='m_-4608350779455020207hide'\r\n" + 
					"                      align='center'\r\n" + 
					"                      style='padding-top:10px;padding-bottom:15px'\r\n" + 
					"                      >\r\n" + 
					"                      <table\r\n" + 
					"                      width='95%'\r\n" + 
					"                      border='0'\r\n" + 
					"                      align='center'\r\n" + 
					"                      cellpadding='0'\r\n" + 
					"                      cellspacing='0'\r\n" + 
					"                      >\r\n" + 
					"                      <tbody>\r\n" + 
					"                        <tr></tr>\r\n" + 
					"                      </tbody>\r\n" + 
					"                    </table>\r\n" + 
					"                  </td>\r\n" + 
					"                </tr>\r\n" + 
					"\r\n" + 
					"                <tr>\r\n" + 
					"                  <td\r\n" + 
					"                  align='center'\r\n" + 
					"                  style='background-color:white'\r\n" + 
					"                  >\r\n" + 
					"                  <table\r\n" + 
					"                  width='100%'\r\n" + 
					"                  border='0'\r\n" + 
					"                  align='center'\r\n" + 
					"                  cellpadding='0'\r\n" + 
					"                  cellspacing='0'\r\n" + 
					"                  >\r\n" + 
					"                  <tbody>\r\n" + 
					"                    <tr>\r\n" + 
					"                      <td\r\n" + 
					"                      style='border-top:3px solid  #2493e0;border-radius:4px 4px 0 0'\r\n" + 
					"                      ></td>\r\n" + 
					"                    </tr>\r\n" + 
					"                  </tbody>\r\n" + 
					"                </table>\r\n" + 
					"              </td>\r\n" + 
					"            </tr>\r\n" + 
					"\r\n" + 
					"            <tr>\r\n" + 
					"              <td\r\n" + 
					"              class='m_-4608350779455020207padt10m m_-4608350779455020207padb10m'\r\n" + 
					"              align='center'\r\n" + 
					"              style='background-color:#fdfdfe;padding-top:15px;padding-bottom:15px'\r\n" + 
					"              >\r\n" + 
					"              <table\r\n" + 
					"              width='90%'\r\n" + 
					"              border='0'\r\n" + 
					"              align='center'\r\n" + 
					"              cellpadding='0'\r\n" + 
					"              cellspacing='0'\r\n" + 
					"              >\r\n" + 
					"              <tbody>\r\n" + 
					"                <tr>\r\n" + 
					"                  <td align='left' width='46'>\r\n" + 
					"                    <a href='' target='_blank'\r\n" + 
					"                    ><img\r\n" + 
					"                    src='https://img.icons8.com/clouds/100/000000/bus.png'\r\n" + 
					"                    width='35'\r\n" + 
					"                    height='35'\r\n" + 
					"                    alt='Fastbus'\r\n" + 
					"                    style='display:block;border:0;font-size:20px;font-weight:bold;font-family:sans-serif;color:#22222'\r\n" + 
					"                    class='CToWUd'\r\n" + 
					"                    /></a>\r\n" + 
					"                  </td>\r\n" + 
					"\r\n" + 
					"                  <td align='left'>\r\n" + 
					"                    <div\r\n" + 
					"                    style='display:block;border:0;font-size:16px;font-weight:bold;font-family:sans-serif;color:#222222'\r\n" + 
					"                    >\r\n" + 
					"                    Fastbus\r\n" + 
					"                  </div>\r\n" + 
					"                </td>\r\n" + 
					"              </tr>\r\n" + 
					"            </tbody>\r\n" + 
					"          </table>\r\n" + 
					"        </td>\r\n" + 
					"      </tr>\r\n" + 
					"\r\n" + 
					"      <tr>\r\n" + 
					"        <td\r\n" + 
					"        align='center'\r\n" + 
					"        style='background-color:#f5f5f6'\r\n" + 
					"        >\r\n" + 
					"        <table\r\n" + 
					"        width='100%'\r\n" + 
					"        border='0'\r\n" + 
					"        align='center'\r\n" + 
					"        cellpadding='0'\r\n" + 
					"        cellspacing='0'\r\n" + 
					"        >\r\n" + 
					"        <tbody>\r\n" + 
					"          <tr>\r\n" + 
					"            <td\r\n" + 
					"            style='border-top:1px solid #f5f5f6'\r\n" + 
					"            ></td>\r\n" + 
					"          </tr>\r\n" + 
					"        </tbody>\r\n" + 
					"      </table>\r\n" + 
					"    </td>\r\n" + 
					"  </tr>\r\n" + 
					"\r\n" + 
					"  <tr>\r\n" + 
					"    <td\r\n" + 
					"    align='center'\r\n" + 
					"    style='background-color:white;padding-top:25px;padding-bottom:0'\r\n" + 
					"    >\r\n" + 
					"    <table\r\n" + 
					"    width='90%'\r\n" + 
					"    border='0'\r\n" + 
					"    align='center'\r\n" + 
					"    cellpadding='0'\r\n" + 
					"    cellspacing='0'\r\n" + 
					"    >\r\n" + 
					"    <tbody>\r\n" + 
					"      <tr>\r\n" + 
					"        <td>\r\n" + 
					"          <h1\r\n" + 
					"          class='m_-4608350779455020207h1m'\r\n" + 
					"          style='font-size:22px;line-height:28px;letter-spacing:-.20px;margin:10px 0 16px 0;font-family:Helvetica Neue,Arial,sans-serif;color:#2493e0;text-align:left'\r\n" + 
					"          >\r\n" + 
					"          Xác Nhận Đặt chỗ\r\n" + 
					"        </h1>\r\n" + 
					"      </td>\r\n" + 
					"    </tr>\r\n" + 
					"\r\n" + 
					"    <tr>\r\n" + 
					"      <td>\r\n" + 
					"        <p\r\n" + 
					"        class='m_-4608350779455020207h2m'\r\n" + 
					"        style='margin:0 0 15px 0;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:24px'\r\n" + 
					"        >\r\n" + 
					"        Xin chào "+user.getName()+" ,<br />\r\n" + 
					"        Rất cảm ơn bạn đã sử dụng dịch\r\n" + 
					"        vụ của\r\n" + 
					"        <strong style='color:#2493e0'\r\n" + 
					"        >Fastbus</strong\r\n" + 
					"        >\r\n" + 
					"      </p>\r\n" + 
					"    </td>\r\n" + 
					"  </tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  align='center'\r\n" + 
					"  style='background-color:white;padding-top:15px;padding-bottom:10px'\r\n" + 
					"  >\r\n" + 
					"  <table\r\n" + 
					"  width='90%'\r\n" + 
					"  border='0'\r\n" + 
					"  align='center'\r\n" + 
					"  cellpadding='0'\r\n" + 
					"  cellspacing='0'\r\n" + 
					"  >\r\n" + 
					"  <tbody>\r\n" + 
					"    <tr>\r\n" + 
					"      <td\r\n" + 
					"      style='font-size:16px;font-family:Helvetica Neue,Arial,sans-serif;color:#969696;text-align:center'\r\n" + 
					"      >\r\n" + 
					"      Thông Tin Chuyến xe\r\n" + 
					"    </td>\r\n" + 
					"  </tr>\r\n" + 
					"\r\n" + 
					"  <tr>\r\n" + 
					"    <td\r\n" + 
					"    style='padding-top:5px;font-size:28px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:center;line-height:1.2em;font-weight:500'\r\n" + 
					"    >\r\n" 
					 + tripInfor.getStartPlace() + " - " + tripInfor.getEndPlace() + 
					"  </td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  align='center'\r\n" + 
					"  style='background-color:white;padding-top:10px;padding-bottom:10px'\r\n" + 
					"  >\r\n" + 
					"  <table\r\n" + 
					"  width='90%'\r\n" + 
					"  border='0'\r\n" + 
					"  align='center'\r\n" + 
					"  cellpadding='0'\r\n" + 
					"  cellspacing='0'\r\n" + 
					"  >\r\n" + 
					"  <tbody>\r\n" + 
					"    <tr>\r\n" + 
					"      <td\r\n" + 
					"      style='font-size:13px;font-family:Helvetica Neue,Arial,sans-serif;color:#969696;text-align:left;font-weight:bold;padding-bottom:5px'\r\n" + 
					"      >\r\n" + 
					"      CHI TIẾT VÉ XE\r\n" + 
					"    </td>\r\n" + 
					"  </tr>\r\n" + 
					"\r\n" + 
					"  <tr>\r\n" + 
					"    <td\r\n" + 
					"    align='center'\r\n" + 
					"    style='background-color:white'\r\n" + 
					"    >\r\n" + 
					"    <table\r\n" + 
					"    width='100%'\r\n" + 
					"    border='0'\r\n" + 
					"    align='center'\r\n" + 
					"    cellpadding='0'\r\n" + 
					"    cellspacing='0'\r\n" + 
					"    >\r\n" + 
					"    <tbody>\r\n" + 
					"      <tr>\r\n" + 
					"        <td\r\n" + 
					"        style='border-top:1px solid #ececec'\r\n" + 
					"        ></td>\r\n" + 
					"      </tr>\r\n" + 
					"    </tbody>\r\n" + 
					"  </table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  align='center'\r\n" + 
					"  style='background-color:white;padding-top:0;padding-bottom:20px'\r\n" + 
					"  >\r\n" + 
					"  <table\r\n" + 
					"  width='90%'\r\n" + 
					"  border='0'\r\n" + 
					"  align='center'\r\n" + 
					"  cellpadding='0'\r\n" + 
					"  cellspacing='0'\r\n" + 
					"  >\r\n" + 
					"  <tbody>\r\n" + 
					"    <tr>\r\n" + 
					"      <td\r\n" + 
					"      style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"      width='50%'\r\n" + 
					"      >\r\n" + 
					"      <div\r\n" + 
					"      style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px;padding-right:10px'\r\n" + 
					"      >\r\n" + 
					"      Người Đặt\r\n" + 
					"    </div>\r\n" + 
					"  </td>\r\n" + 
					"  <td\r\n" + 
					"  style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"  width='50%'\r\n" + 
					"  >\r\n" + 
					"  <div\r\n" + 
					"  style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px'\r\n" + 
					"  >\r\n" 
					+user.getName()+
					"</div>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"  width='50%'\r\n" + 
					"  >\r\n" + 
					"  <div\r\n" + 
					"  style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px;padding-right:10px'\r\n" + 
					"  >\r\n" + 
					"  Chuyến xe\r\n" + 
					"</div>\r\n" + 
					"</td>\r\n" + 
					"<td\r\n" + 
					"style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"width='50%'\r\n" + 
					">\r\n" + 
					"<div\r\n" + 
					"style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px'\r\n" + 
					">\r\n"
					 + tripInfor.getStartPlace() + " - " + tripInfor.getEndPlace() + 
					"</div>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"  width='50%'\r\n" + 
					"  >\r\n" + 
					"  <div\r\n" + 
					"  style='color:#3c4043;margin:0px;font-size:12px;line-height:20px;font-weight:normal;font-size:15px;padding-right:10px'\r\n" + 
					"  >\r\n" + 
					"  Nhà xe:\r\n" + 
					"</div>\r\n" + 
					"</td>\r\n" + 
					"<td\r\n" + 
					"style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"width='50%'\r\n" + 
					">\r\n" + 
					"<div\r\n" + 
					"style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px'\r\n" + 
					">\r\n" 
					+ tripInfor.getNameBusiness() +
					"</div>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"  width='50%'\r\n" + 
					"  >\r\n" + 
					"  <div\r\n" + 
					"  style='color:#3c4043;margin:0px;font-size:12px;line-height:20px;font-weight:normal;font-size:15px;padding-right:10px'\r\n" + 
					"  >\r\n" + 
					"  Ngày đi:\r\n" + 
					"</div>\r\n" + 
					"</td>\r\n" + 
					"<td\r\n" + 
					"style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"width='50%'\r\n" + 
					">\r\n" + 
					"<div\r\n" + 
					"style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px'\r\n" + 
					">\r\n" 
					+ tripInfor.getStartDate()+
					"</div>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"  width='50%'\r\n" + 
					"  >\r\n" + 
					"  <div\r\n" + 
					"  style='color:#3c4043;margin:0px;font-size:12px;line-height:20px;font-weight:normal;font-size:15px;padding-right:10px'\r\n" + 
					"  >\r\n" + 
					"  Giờ đi:\r\n" + 
					"</div>\r\n" + 
					"</td>\r\n" + 
					"<td\r\n" + 
					"style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"width='50%'\r\n" + 
					">\r\n" + 
					"<div\r\n" + 
					"style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:normal;font-size:15px'\r\n" + 
					">\r\n" 
					+ tripInfor.getStartTime()+				
					"</div>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"  width='50%'\r\n" + 
					"  >\r\n" + 
					"  <div\r\n" + 
					"  style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:bold;font-size:15px;padding-right:10px'\r\n" + 
					"  >\r\n" + 
					"  Tổng cộng giá\r\n" + 
					"</div>\r\n" + 
					"</td>\r\n" + 
					"<td\r\n" + 
					"style='padding-top:5px;padding-bottom:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"width='50%'\r\n" + 
					">\r\n" + 
					"<div\r\n" + 
					"style='color:#3c4043;margin:0px;font-size:12px;line-height:22px;font-weight:bold;font-size:15px'\r\n" + 
					"></div>\r\n" 
					+tripInfor.getPrice()+ 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  align='center'\r\n" + 
					"  style='background-color:white;padding-top:0;padding-bottom:20px'\r\n" + 
					"  >\r\n" + 
					"  <table\r\n" + 
					"  width='90%'\r\n" + 
					"  border='0'\r\n" + 
					"  align='center'\r\n" + 
					"  cellpadding='0'\r\n" + 
					"  cellspacing='0'\r\n" + 
					"  >\r\n" + 
					"  <tbody>\r\n" + 
					"    <tr>\r\n" + 
					"      <td\r\n" + 
					"      class='m_-4608350779455020207h2m'\r\n" + 
					"      style='padding-top:5px;font-size:14px;font-family:Helvetica Neue,Arial,sans-serif;color:#3c4043;text-align:left;line-height:1.55em'\r\n" + 
					"      > <small style=\"color:red;\">*Bạn Vui Lòng Thanh Toán Tiền Trước 11 Giờ Trưa Hôm Sau Để Chắc Chắc Vé Không Bị Hủy</small></td>\r\n" + 
					"    </tr>\r\n" + 
					"  </tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"\r\n" + 
					"<tr>\r\n" + 
					"  <td align='center'>\r\n" + 
					"    <table\r\n" + 
					"    class='m_-4608350779455020207w100'\r\n" + 
					"    align='center'\r\n" + 
					"    width='512'\r\n" + 
					"    border='0'\r\n" + 
					"    cellspacing='0'\r\n" + 
					"    cellpadding='0'\r\n" + 
					"    >\r\n" + 
					"    <tbody>\r\n" + 
					"      <tr>\r\n" + 
					"        <td\r\n" + 
					"        align='center'\r\n" + 
					"        style='background-color: #2493e0;padding-top:20px;padding-bottom:20px'\r\n" + 
					"        >\r\n" + 
					"        <table\r\n" + 
					"        width='90%'\r\n" + 
					"        border='0'\r\n" + 
					"        align='center'\r\n" + 
					"        cellpadding='0'\r\n" + 
					"        cellspacing='0'\r\n" + 
					"        >\r\n" + 
					"        <tbody>\r\n" + 
					"          <tr>\r\n" + 
					"            <td>\r\n" + 
					"              <table\r\n" + 
					"              width='100%'\r\n" + 
					"              border='0'\r\n" + 
					"              align='center'\r\n" + 
					"              cellpadding='0'\r\n" + 
					"              cellspacing='0'\r\n" + 
					"              ></table>\r\n" + 
					"            </td>\r\n" + 
					"          </tr>\r\n" + 
					"\r\n" + 
					"          <tr>\r\n" + 
					"            <td\r\n" + 
					"            align='center'\r\n" + 
					"            style='padding:10px 0 10px'\r\n" + 
					"            >\r\n" + 
					"            <table\r\n" + 
					"            width='100%'\r\n" + 
					"            border='0'\r\n" + 
					"            align='center'\r\n" + 
					"            cellpadding='0'\r\n" + 
					"            cellspacing='0'\r\n" + 
					"            >\r\n" + 
					"            <tbody>\r\n" + 
					"              <tr>\r\n" + 
					"                <td\r\n" + 
					"                style='border-top:1px dashed #ffffff'\r\n" + 
					"                ></td>\r\n" + 
					"              </tr>\r\n" + 
					"            </tbody>\r\n" + 
					"          </table>\r\n" + 
					"        </td>\r\n" + 
					"      </tr>\r\n" + 
					"      <tr>\r\n" + 
					"        <td>\r\n" + 
					"          <div\r\n" + 
					"          style='color:#ffffff;display:block;font-family:sans-serif;font-size:11px;font-weight:normal;text-align:center;line-height:17px;margin:0px;padding:0px'\r\n" + 
					"          >\r\n" + 
					"          Công ty Cổ phần Fastbus\r\n" + 
					"          <br />\r\n" + 
					"          Trực Tuyến (M_Service) "+user.getName()+" đang\r\n" + 
					"          được nhận email từ\r\n" + 
					"          <strong>Fastbus</strong>\r\n" + 
					"        </div>\r\n" + 
					"\r\n" + 
					"        <div\r\n" + 
					"        style='color:#ffffff;display:block;font-family:sans-serif;font-size:11px;font-weight:normal;text-align:center;line-height:17px;margin:0px;padding:0px;margin-top:0px'\r\n" + 
					"        ></div>\r\n" + 
					"      </td>\r\n" + 
					"    </tr>\r\n" + 
					"  </tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"<tr>\r\n" + 
					"  <td\r\n" + 
					"  align='center'\r\n" + 
					"  style='background-color:#f5f5f6'\r\n" + 
					"  >\r\n" + 
					"  <table\r\n" + 
					"  width='100%'\r\n" + 
					"  border='0'\r\n" + 
					"  align='center'\r\n" + 
					"  cellpadding='0'\r\n" + 
					"  cellspacing='0'\r\n" + 
					"  >\r\n" + 
					"  <tbody>\r\n" + 
					"    <tr>\r\n" + 
					"      <td\r\n" + 
					"      style='border-top:1px solid #f5f5f6'\r\n" + 
					"      ></td>\r\n" + 
					"    </tr>\r\n" + 
					"  </tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>\r\n" + 
					"</td>\r\n" + 
					"</tr>\r\n" + 
					"</tbody>\r\n" + 
					"</table>";
			message.setContent(htmlContent, "text/html; charset=UTF-8");
			// 4) send message
			Transport.send(message);

			System.out.println("Message sent successfully");
		} catch (MessagingException ex) {
			ex.printStackTrace();
		}
	}

}

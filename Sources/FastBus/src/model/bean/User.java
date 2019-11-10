/**
 * @FileName	: User.java
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


package model.bean;

public class User {
	private String passWord;
//	private int idPosition;
	private String name;
	private String phone;
	private String email;
	private String message;
	private String addess;
	
//	private int status;
//	private int approvalStatus;
//	private String approvalInfo;
	
	
	public String getMessage() {
		return message;
	}
	public String getAddess() {
		return addess;
	}
	public void setAddess(String addess) {
		this.addess = addess;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
//	public int getIdPosition() {
//		return idPosition;
//	}
//	public void setIdPosition(int idPosition) {
//		this.idPosition = idPosition;
//	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
//	public int getStatus() {
//		return status;
//	}
//	public void setStatus(int status) {
//		this.status = status;
//	}
//	public int getApprovalStatus() {
//		return approvalStatus;
//	}
//	public void setApprovalStatus(int approvalStatus) {
//		this.approvalStatus = approvalStatus;
//	}
//	public String getApprovalInfo() {
//		return approvalInfo;
//	}
//	public void setApprovalInfo(String approvalInfo) {
//		this.approvalInfo = approvalInfo;
//	}
//	
	
	public User() {
		super();
	}
	
	public User(String email, String passWord, String phone, String name,String address) {
		super();
		this.email = email;
		this.passWord = passWord;
		this.phone = phone;
		this.name = name;
		this.addess=address;
		
	}

	public User(String passWord, String email,String name,String message) {
		super();
		this.passWord = passWord;
		this.email=email;
		this.name=name;
		this.message=message;
	}
}

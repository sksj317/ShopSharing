package model;

import java.io.Serializable; 

@SuppressWarnings("serial")
public class Admin implements Serializable{
	
	private String adminId;
	private String adminPw;
	private Long adminAccount;
	
	public Admin() {}
	
	public Admin(String adminId, String adminPw, Long adminAccount) {
		super();
		this.adminId = adminId;
		this.adminPw = adminPw;
		this.adminAccount = adminAccount;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPw() {
		return adminPw;
	}

	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}

	public Long getAdminAccount() {
		return adminAccount;
	}

	public void setAdminAccount(Long adminAccount) {
		this.adminAccount = adminAccount;
	}
	
}

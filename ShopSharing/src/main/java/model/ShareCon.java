package model;

import java.io.Serializable;
import java.util.Date; 

@SuppressWarnings("serial")
public class ShareCon implements Serializable{
	
	private Long shareConNum;
	private Long shareReqNum;
	private String memberId;
	private Long shopNum;
	private String memberId2;
	private Date shareConConclusion;
	private String shareConStart;
	private String shareConExp;
	private Long shareConLentPay;
	private Long shareConDeposit;
	private String shareBankName;
	private String shopName;

	
	public ShareCon() {
		
	}
	
	public ShareCon(Long shareConNum,Long shareReqNum,String memberId,
			Long shopNum,String memberId2,Date shareConConclusion,
			String shareConStart,String shareConExp,Long shareConLentPay,
			Long shareConDeposit,String shareBankName,String shopName) {
		
		this.shareConNum = shareConNum;
		this.shareReqNum = shareReqNum;
		this.memberId = memberId;
		this.shopNum = shopNum;
		this.memberId2 = memberId2;
		this.shareConConclusion = shareConConclusion;
		this.shareConStart = shareConStart;
		this.shareConExp = shareConExp;
		this.shareConLentPay = shareConLentPay;
		this.shareConDeposit = shareConDeposit;
		this.shareBankName = shareBankName;
		this.shopName = shopName;

	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Long getShareConNum() {
		return shareConNum;
	}

	public void setShareConNum(Long shareConNum) {
		this.shareConNum = shareConNum;
	}

	public Long getShareReqNum() {
		return shareReqNum;
	}

	public void setShareReqNum(Long shareReqNum) {
		this.shareReqNum = shareReqNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Long getShopNum() {
		return shopNum;
	}

	public void setShopNum(Long shopNum) {
		this.shopNum = shopNum;
	}

	public String getMemberId2() {
		return memberId2;
	}

	public void setMemberId2(String memberId2) {
		this.memberId2 = memberId2;
	}

	public Date getShareConConclusion() {
		return shareConConclusion;
	}

	public void setShareConConclusion(Date shareConConclusion) {
		this.shareConConclusion = shareConConclusion;
	}

	public String getShareConStart() {
		return shareConStart;
	}

	public void setShareConStart(String shareConStart) {
		this.shareConStart = shareConStart;
	}

	public String getShareConExp() {
		return shareConExp;
	}

	public void setShareConExp(String shareConExp) {
		this.shareConExp = shareConExp;
	}

	public Long getShareConLentPay() {
		return shareConLentPay;
	}

	public void setShareConLentPay(Long shareConLentPay) {
		this.shareConLentPay = shareConLentPay;
	}

	public Long getShareConDeposit() {
		return shareConDeposit;
	}

	public void setShareConDeposit(Long shareConDeposit) {
		this.shareConDeposit = shareConDeposit;
	}

	public String getShareBankName() {
		return shareBankName;
	}

	public void setShareBankName(String shareBankName) {
		this.shareBankName = shareBankName;
	}
	

}

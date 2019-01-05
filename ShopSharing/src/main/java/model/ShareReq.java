package model;

import java.io.Serializable;
import java.util.Date; 

@SuppressWarnings("serial")
public class ShareReq implements Serializable{
	
	private Long shareReqNum;
	private String memberId;
	private Long shopNum;
	private String memberId2;
	private Date shareReqApplyDay;
	private String shareReqContent;
	private String shareReqStartPeriod;
	private String shareReqEndPeriod;
	private Long shareReqStartTime;
	private Long shareReqEndTime;
	private String shopName;
	private Long shopDeposit;
	private Long shopLentPay;
	private String shareReqPermission;
	
	public ShareReq() {} 

	public ShareReq(Long shareReqNum,String memberId,Long shopNum,String memberId2,
			Date shareReqApplyDay,String shareReqContent,String shareReqStartPeriod,
			String shareReqEndPeriod,Long shareReqStartTime,Long shareReqEndTime,String shopName) {
		this.shareReqNum = shareReqNum;
		this.memberId = memberId;
		this.shopNum = shopNum;
		this.memberId2 = memberId2;
		this.shareReqApplyDay = shareReqApplyDay;
		this.shareReqContent = shareReqContent;
		this.shareReqStartPeriod = shareReqStartPeriod;
		this.shareReqEndPeriod = shareReqEndPeriod;
		this.shareReqStartTime = shareReqStartTime;
		this.shareReqEndTime = shareReqEndTime;
		this.shopName = shopName;
		
	}
	
	
	
	


	public String getShareReqPermission() {
		return shareReqPermission;
	}

	public void setShareReqPermission(String shareReqPermission) {
		this.shareReqPermission = shareReqPermission;
	}

	public Long getShopDeposit() {
		return shopDeposit;
	}

	public void setShopDeposit(Long shopDeposit) {
		this.shopDeposit = shopDeposit;
	}

	public Long getShopLentPay() {
		return shopLentPay;
	}

	public void setShopLentPay(Long shopLentPay) {
		this.shopLentPay = shopLentPay;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
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

	public String setMemberId(String memberId) {
		return this.memberId = memberId;
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

	public Date getShareReqApplyDay() {
		return shareReqApplyDay;
	}

	public void setShareReqApplyDay(Date shareReqApplyDay) {
		this.shareReqApplyDay = shareReqApplyDay;
	}

	public String getShareReqContent() {
		return shareReqContent;
	}

	public void setShareReqContent(String shareReqContent) {
		this.shareReqContent = shareReqContent;
	}

	public String getShareReqStartPeriod() {
		return shareReqStartPeriod;
	}

	public void setShareReqStartPeriod(String shareReqStartPeriod) {
		this.shareReqStartPeriod = shareReqStartPeriod;
	}

	public String getShareReqEndPeriod() {
		return shareReqEndPeriod;
	}

	public void setShareReqEndPeriod(String shareReqEndPeriod) {
		this.shareReqEndPeriod = shareReqEndPeriod;
	}

	public Long getShareReqStartTime() {
		return shareReqStartTime;
	}

	public void setShareReqStartTime(Long shareReqStartTime) {
		this.shareReqStartTime = shareReqStartTime;
	}

	public Long getShareReqEndTime() {
		return shareReqEndTime;
	}

	public void setShareReqEndTime(Long shareReqEndTime) {
		this.shareReqEndTime = shareReqEndTime;
	}
	
	

	

}

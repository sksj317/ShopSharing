package model;

import java.io.Serializable; 

@SuppressWarnings("serial")
public class ShareResult implements Serializable{
	
	private Long shareResultNum;
	private Long shareResultDeposit;
	private Long shareResultAssure;
	private Long shareResultRepay;
	
	public ShareResult () {}

	public ShareResult(Long shareResultNum, Long shareResultDeposit, Long shareResultAssure, Long shareResultRepay) {
		super();
		this.shareResultNum = shareResultNum;
		this.shareResultDeposit = shareResultDeposit;
		this.shareResultAssure = shareResultAssure;
		this.shareResultRepay = shareResultRepay;
	}

	public Long getShareResultNum() {
		return shareResultNum;
	}

	public void setShareResultNum(Long shareResultNum) {
		this.shareResultNum = shareResultNum;
	}

	public Long getShareResultDeposit() {
		return shareResultDeposit;
	}

	public void setShareResultDeposit(Long shareResultDeposit) {
		this.shareResultDeposit = shareResultDeposit;
	}

	public Long getShareResultAssure() {
		return shareResultAssure;
	}

	public void setShareResultAssure(Long shareResultAssure) {
		this.shareResultAssure = shareResultAssure;
	}

	public Long getShareResultRepay() {
		return shareResultRepay;
	}

	public void setShareResultRepay(Long shareResultRepay) {
		this.shareResultRepay = shareResultRepay;
	}

}

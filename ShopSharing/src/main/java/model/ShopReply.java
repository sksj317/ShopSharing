package model;

import java.io.Serializable;
import java.util.Date;
@SuppressWarnings("serial")
public class ShopReply implements Serializable {
	private int shopReplyNum;        // 점포 댓글 번호
	private int shopNum;             // 점포 번호
	private String shopMemberId;	 // 점포 제공자 아이디
	private String shopReplyId;      // 점포 댓글 작성자 아이디
	private Date shopReplyDate;      // 점포 댓글 등록일
	private String shopReplyContent; // 점포 댓글 내용
	
	public ShopReply() {}
	public ShopReply(int shopReplyNum,int shopNum, String shopMemberId, String shopReplyId, Date shopReplyDate, String shopReplyContent) {
		this.shopReplyNum = shopReplyNum;
		this.shopNum = shopNum;
		this.shopMemberId = shopMemberId;
		this.shopReplyId = shopReplyId;
		this.shopReplyDate = shopReplyDate;
		this.shopReplyContent = shopReplyContent;
	}
	public String getShopMemberId() {
		return shopMemberId;
	}
	public void setShopMemberId(String shopMemberId) {
		this.shopMemberId = shopMemberId;
	}
	public int getShopReplyNum() {
		return shopReplyNum;
	}
	public void setShopReplyNum(int shopReplyNum) {
		this.shopReplyNum = shopReplyNum;
	}
	public int getShopNum() {
		return shopNum;
	}
	public void setShopNum(int shopNum) {
		this.shopNum = shopNum;
	}
	public String getShopReplyId() {
		return shopReplyId;
	}
	public void setShopReplyId(String shopReplyId) {
		this.shopReplyId = shopReplyId;
	}
	public Date getShopReplyDate() {
		return shopReplyDate;
	}
	public void setShopReplyDate(Date shopReplyDate) {
		this.shopReplyDate = shopReplyDate;
	}
	public String getShopReplyContent() {
		return shopReplyContent;
	}
	public void setShopReplyContent(String shopReplyContent) {
		this.shopReplyContent = shopReplyContent;
	}
}
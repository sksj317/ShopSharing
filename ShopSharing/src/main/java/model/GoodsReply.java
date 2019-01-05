package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class GoodsReply implements Serializable{
	private int goodsReplyNum;        // 상품 댓글 번호
	private int goodsNum;             // 상품 번호
	private String goodsMemberId;	  // 상품 제공자 아이디
	private String goodsReplyId;      // 상품 댓글 작성자 아이디
	private Date goodsReplyDate;  	  // 상품 댓글 등록일
	private String goodsReplyContent; // 상품 댓글 내용
	public int getGoodsReplyNum() {
		return goodsReplyNum;
	}
	public void setGoodsReplyNum(int goodsReplyNum) {
		this.goodsReplyNum = goodsReplyNum;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	public String getGoodsMemberId() {
		return goodsMemberId;
	}
	public void setGoodsMemberId(String goodsMemberId) {
		this.goodsMemberId = goodsMemberId;
	}
	public String getGoodsReplyId() {
		return goodsReplyId;
	}
	public void setGoodsReplyId(String goodsReplyId) {
		this.goodsReplyId = goodsReplyId;
	}
	public Date getGoodsReplyDate() {
		return goodsReplyDate;
	}
	public void setGoodsReplyDate(Date goodsReplyDate) {
		this.goodsReplyDate = goodsReplyDate;
	}
	public String getGoodsReplyContent() {
		return goodsReplyContent;
	}
	public void setGoodsReplyContent(String goodsReplyContent) {
		this.goodsReplyContent = goodsReplyContent;
	}
	
}

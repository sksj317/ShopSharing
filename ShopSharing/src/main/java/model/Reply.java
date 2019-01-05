package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Reply implements Serializable{
	private Long replyNo;		//댓글번호
	private Long commentNo;		//게시글번호
	private String userId;		//아이디
	private String replyContent;//댓글내용
	private Date regDate;		//등록일
	
	public Reply() {}
	public Reply(Long replyNo, Long commentNo, String userId, String replyContent, Date regDate) {
		this.replyNo = replyNo;
		this.commentNo = commentNo;
		this.userId = userId;
		this.replyContent = replyContent;
		this.regDate = regDate;
	}
	
	public Long getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(Long replyNo) {
		this.replyNo = replyNo;
	}
	public Long getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(Long commentNo) {
		this.commentNo = commentNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
}

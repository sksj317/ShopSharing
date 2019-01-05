package model;

import java.io.Serializable; 
import java.util.Date;

@SuppressWarnings("serial")
public class Notice implements Serializable{
	
	private Long noticeNum;
	private Date noticeReg;
	private String noticeSub;
	private String noticeContent;
	private String noticeImg;
	private Long noticeReadCount;
	
	public Notice() {}

	public Notice(Long noticeNum, Date noticeReg, String noticeSub, String noticeContent, String noticeImg,
			Long noticeReadCount) {
		super();
		this.noticeNum = noticeNum;
		this.noticeReg = noticeReg;
		this.noticeSub = noticeSub;
		this.noticeContent = noticeContent;
		this.noticeImg = noticeImg;
		this.noticeReadCount = noticeReadCount;
	}

	public Long getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(Long noticeNum) {
		this.noticeNum = noticeNum;
	}

	public Date getNoticeReg() {
		return noticeReg;
	}

	public void setNoticeReg(Date noticeReg) {
		this.noticeReg = noticeReg;
	}

	public String getNoticeSub() {
		return noticeSub;
	}

	public void setNoticeSub(String noticeSub) {
		this.noticeSub = noticeSub;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeImg() {
		return noticeImg;
	}

	public void setNoticeImg(String noticeImg) {
		this.noticeImg = noticeImg;
	}

	public Long getNoticeReadCount() {
		return noticeReadCount;
	}

	public void setNoticeReadCount(Long noticeReadCount) {
		this.noticeReadCount = noticeReadCount;
	}

}

package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class SQna implements Serializable{
	
	private String memberId;
	private Long sQnaNum;
	private Date sQnaReg;
	private String sQnaSub;
	private String sQnaDetail;
	
	public SQna () {}

	public SQna(String memberId, Long sQnaNum, Date sQnaReg, String sQnaSub, String sQnaDetail) {
		super();
		this.memberId = memberId;
		this.sQnaNum = sQnaNum;
		this.sQnaReg = sQnaReg;
		this.sQnaSub = sQnaSub;
		this.sQnaDetail = sQnaDetail;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Long getsQnaNum() {
		return sQnaNum;
	}

	public void setsQnaNum(Long sQnaNum) {
		this.sQnaNum = sQnaNum;
	}

	public Date getsQnaReg() {
		return sQnaReg;
	}

	public void setsQnaReg(Date sQnaReg) {
		this.sQnaReg = sQnaReg;
	}

	public String getsQnaSub() {
		return sQnaSub;
	}

	public void setsQnaSub(String sQnaSub) {
		this.sQnaSub = sQnaSub;
	}

	public String getsQnaDetail() {
		return sQnaDetail;
	}

	public void setsQnaDetail(String sQnaDetail) {
		this.sQnaDetail = sQnaDetail;
	}

	
}

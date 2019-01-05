package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class TQna implements Serializable{

	private Long tQnaNum;
	private Date tQnaReg;
	private String tQnaSub;
	private String tQnaDetail;
	private String tQnaImg;
	private String tQnaType;
	
	public TQna() {}

	public TQna(Long tQnaNum, Date tQnaReg, String tQnaSub, String tQnaDetail, String tQnaImg, String tQnaType) {
		super();
		this.tQnaNum = tQnaNum;
		this.tQnaReg = tQnaReg;
		this.tQnaSub = tQnaSub;
		this.tQnaDetail = tQnaDetail;
		this.tQnaImg = tQnaImg;
		this.tQnaType = tQnaType;
	}

	public Long gettQnaNum() {
		return tQnaNum;
	}

	public void settQnaNum(Long tQnaNum) {
		this.tQnaNum = tQnaNum;
	}

	public Date gettQnaReg() {
		return tQnaReg;
	}

	public void settQnaReg(Date tQnaReg) {
		this.tQnaReg = tQnaReg;
	}

	public String gettQnaSub() {
		return tQnaSub;
	}

	public void settQnaSub(String tQnaSub) {
		this.tQnaSub = tQnaSub;
	}

	public String gettQnaDetail() {
		return tQnaDetail;
	}

	public void settQnaDetail(String tQnaDetail) {
		this.tQnaDetail = tQnaDetail;
	}

	public String gettQnaImg() {
		return tQnaImg;
	}

	public void settQnaImg(String tQnaImg) {
		this.tQnaImg = tQnaImg;
	}

	public String gettQnaType() {
		return tQnaType;
	}

	public void settQnaType(String tQnaType) {
		this.tQnaType = tQnaType;
	}
	
}

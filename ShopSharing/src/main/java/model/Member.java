package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Member implements Serializable {

	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPh;
	private Long memberPost;
	private String memberAddr1;
	private String memberAddr2;
	private Date memberReg;
	private String memberGrade;
	private String memberType;
	private Long memberCeo;
	private Double memberPoint;
	private int memberPointCount;
	private Double memberPointAver;

	public Member() {}
	public Member(String memberId, String memberPw, String memberName, String memberPh, Long memberPost,
			String memberAddr1, String memberAddr2, Date memberReg, String memberGrade, String memberType,
			Long memberCeo, Double memberPoint, int memberPointCount, Double memberPointAver) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberPh = memberPh;
		this.memberPost = memberPost;
		this.memberAddr1 = memberAddr1;
		this.memberAddr2 = memberAddr2;
		this.memberReg = memberReg;
		this.memberGrade = memberGrade;
		this.memberType = memberType;
		this.memberCeo = memberCeo;
		this.memberPoint = memberPoint;
		this.memberPointCount = memberPointCount;
		this.memberPointAver = memberPointAver;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPh() {
		return memberPh;
	}

	public void setMemberPh(String memberPh) {
		this.memberPh = memberPh;
	}

	public Long getMemberPost() {
		return memberPost;
	}

	public void setMemberPost(Long memberPost) {
		this.memberPost = memberPost;
	}

	public String getMemberAddr1() {
		return memberAddr1;
	}

	public void setMemberAddr1(String memberAddr1) {
		this.memberAddr1 = memberAddr1;
	}

	public String getMemberAddr2() {
		return memberAddr2;
	}

	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}

	public Date getMemberReg() {
		return memberReg;
	}

	public void setMemberReg(Date memberReg) {
		this.memberReg = memberReg;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public Long getMemberCeo() {
		return memberCeo;
	}

	public void setMemberCeo(Long memberCeo) {
		this.memberCeo = memberCeo;
	}

	public Double getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(Double memberPoint) {
		this.memberPoint = memberPoint;
	}

	public int getMemberPointCount() {
		return memberPointCount;
	}

	public void setMemberPointCount(int memberPointCount) {
		this.memberPointCount = memberPointCount;
	}

	public Double getMemberPointAver() {
		return memberPointAver;
	}

	public void setMemberPointAver(Double memberPointAver) {
		this.memberPointAver = memberPointAver;
	}
	
}
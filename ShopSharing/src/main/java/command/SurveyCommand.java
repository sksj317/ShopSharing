package command;

import java.util.Date;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SurveyCommand  implements Serializable{
	
	private Long surveyNum;
	private String memberId;
	private String shopName;
	private Double serviceStar;
	private Double mutualStar;
	private Double facilitiesStar;
	private String surveyRecharter;
	private Date surveyDate;
	private String surveyComment;
	private String memberType;
	private String serviceComplaint;
	
	public SurveyCommand() {}
	
	public SurveyCommand(Long surveyNum, String memberId, String shopName, Double serviceStar, Double mutualStar,
			Double facilitiesStar, String surveyRecharter, Date surveyDate, String surveyComment, String memberType,
			String serviceComplaint) {
		super();
		this.surveyNum = surveyNum;
		this.memberId = memberId;
		this.shopName = shopName;
		this.serviceStar = serviceStar;
		this.mutualStar = mutualStar;
		this.facilitiesStar = facilitiesStar;
		this.surveyRecharter = surveyRecharter;
		this.surveyDate = surveyDate;
		this.surveyComment = surveyComment;
		this.memberType = memberType;
		this.serviceComplaint = serviceComplaint;
	}

	public Long getSurveyNum() {
		return surveyNum;
	}

	public void setSurveyNum(Long surveyNum) {
		this.surveyNum = surveyNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Double getServiceStar() {
		return serviceStar;
	}

	public void setServiceStar(Double serviceStar) {
		this.serviceStar = serviceStar;
	}

	public Double getMutualStar() {
		return mutualStar;
	}

	public void setMutualStar(Double mutualStar) {
		this.mutualStar = mutualStar;
	}

	public Double getFacilitiesStar() {
		return facilitiesStar;
	}

	public void setFacilitiesStar(Double facilitiesStar) {
		this.facilitiesStar = facilitiesStar;
	}

	public String getSurveyRecharter() {
		return surveyRecharter;
	}

	public void setSurveyRecharter(String surveyRecharter) {
		this.surveyRecharter = surveyRecharter;
	}

	public Date getSurveyDate() {
		return surveyDate;
	}

	public void setSurveyDate(Date surveyDate) {
		this.surveyDate = surveyDate;
	}

	public String getSurveyComment() {
		return surveyComment;
	}

	public void setSurveyComment(String surveyComment) {
		this.surveyComment = surveyComment;
	}

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getServiceComplaint() {
		return serviceComplaint;
	}

	public void setServiceComplaint(String serviceComplaint) {
		this.serviceComplaint = serviceComplaint;
	}
	
}

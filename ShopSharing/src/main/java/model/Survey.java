package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Survey implements Serializable{
	
	private Long surveyNum;
	private Double serviceStar;
	private Double mutualStar;
	private Double facilitiesStar;
	private String surveyRecharter;
	private Date surveyDate;
	private String surveyComment;
	private String memberType;
	
	
	public Survey() {}
	
	public Survey(
			Long surveyNum,
			Double serviceStar,
			Double mutualStar,
			Double facilitiesStar,
			String surveyRecharter,
			Date surveyDate,
			String surveyComment,
			String memberType
			) {
		this.surveyNum = surveyNum;
		this.serviceStar = serviceStar;
		this.mutualStar = mutualStar;
		this.facilitiesStar = facilitiesStar;
		this.surveyRecharter = surveyRecharter;
		this.surveyDate = surveyDate;
		this.surveyComment = surveyComment;
		this.memberType = memberType;
	}
	
	
	
	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getSurveyComment() {
		return surveyComment;
	}

	public void setSurveyComment(String surveyComment) {
		this.surveyComment = surveyComment;
	}

	public Long getSurveyNum() {
		return surveyNum;
	}
	public void setSurveyNum(Long surveyNum) {
		this.surveyNum = surveyNum;
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
	
	
	
	
}

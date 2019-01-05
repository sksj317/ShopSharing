package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class CustomerSurvey implements Serializable {
	private Long csurveyNum;
	private Double satiStar;
	private Double quanStar;
	private Double priceStar;
	private Double tasteStar;
	private Double visitStar;
	private Date customDate;
	private String customConment;
	
	public CustomerSurvey() {}
	
	public CustomerSurvey(
			Long csurveyNum,
			Double satiStar,
			Double quanStar,
			Double priceStar,
			Double tasteStar,
			Double visitStar,
			Date customDate,
			String customConment) {
		this.csurveyNum = csurveyNum;
		this.satiStar = satiStar;
		this.quanStar = quanStar;
		this.priceStar = priceStar;
		this.tasteStar = tasteStar;
		this.visitStar = visitStar;
		this.customDate = customDate;
		this.customConment = customConment;
	}

	public Long getCsurveyNum() {
		return csurveyNum;
	}

	public void setCsurveyNum(Long csurveyNum) {
		this.csurveyNum = csurveyNum;
	}

	public Double getSatiStar() {
		return satiStar;
	}

	public void setSatiStar(Double satiStar) {
		this.satiStar = satiStar;
	}

	public Double getQuanStar() {
		return quanStar;
	}

	public void setQuanStar(Double quanStar) {
		this.quanStar = quanStar;
	}

	public Double getPriceStar() {
		return priceStar;
	}

	public void setPriceStar(Double priceStar) {
		this.priceStar = priceStar;
	}

	public Double getTasteStar() {
		return tasteStar;
	}

	public void setTasteStar(Double tasteStar) {
		this.tasteStar = tasteStar;
	}

	public Double getVisitStar() {
		return visitStar;
	}

	public void setVisitStar(Double visitStar) {
		this.visitStar = visitStar;
	}

	public Date getCustomDate() {
		return customDate;
	}

	public void setCustomDate(Date customDate) {
		this.customDate = customDate;
	}

	public String getCustomConment() {
		return customConment;
	}

	public void setCustomConment(String customConment) {
		this.customConment = customConment;
	}
	

	
	
}

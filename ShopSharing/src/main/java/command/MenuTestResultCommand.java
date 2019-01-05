package command;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class MenuTestResultCommand implements Serializable{
	
	private String memberId;
	private Double satiStarAver;
	private Double quanStarAver;
	private Double priceStarAver;
	private Double tasteStarAver;
	private Double visitStarAver;
	private Date customDate;
	private String[] customCommentList;
	
	public MenuTestResultCommand() {
		super();
	}

	public MenuTestResultCommand(String memberId, Double satiStarAver, Double quanStarAver, Double priceStarAver,
			Double tasteStarAver, Double visitStarAver, Date customDate, String[] customCommentList) {
		super();
		this.memberId = memberId;
		this.satiStarAver = satiStarAver;
		this.quanStarAver = quanStarAver;
		this.priceStarAver = priceStarAver;
		this.tasteStarAver = tasteStarAver;
		this.visitStarAver = visitStarAver;
		this.customDate = customDate;
		this.customCommentList = customCommentList;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Double getSatiStarAver() {
		return satiStarAver;
	}

	public void setSatiStarAver(Double satiStarAver) {
		this.satiStarAver = satiStarAver;
	}

	public Double getQuanStarAver() {
		return quanStarAver;
	}

	public void setQuanStarAver(Double quanStarAver) {
		this.quanStarAver = quanStarAver;
	}

	public Double getPriceStarAver() {
		return priceStarAver;
	}

	public void setPriceStarAver(Double priceStarAver) {
		this.priceStarAver = priceStarAver;
	}

	public Double getTasteStarAver() {
		return tasteStarAver;
	}

	public void setTasteStarAver(Double tasteStarAver) {
		this.tasteStarAver = tasteStarAver;
	}

	public Double getVisitStarAver() {
		return visitStarAver;
	}

	public void setVisitStarAver(Double visitStarAver) {
		this.visitStarAver = visitStarAver;
	}

	public Date getCustomDate() {
		return customDate;
	}

	public void setCustomDate(Date customDate) {
		this.customDate = customDate;
	}

	public String[] getCustomCommentList() {
		return customCommentList;
	}

	public void setCustomCommentList(String[] customCommentList) {
		this.customCommentList = customCommentList;
	}
	
}

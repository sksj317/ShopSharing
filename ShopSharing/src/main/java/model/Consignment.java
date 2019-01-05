package model;

import java.io.Serializable;  
import java.util.Date;

@SuppressWarnings("serial")
public class Consignment implements Serializable{

	private Long consignmentNum;
	private Long goodsNum;
	private String goodsName;
	private String memberId;
	private String memberId2;
	private Long shopNum;
	private String shopName;
	private String consignmentStartPeriod;
	private String consignmentEndPeriod;
	private Date consignmentApplyDay;
	private Long consignmentQuantity;
	private Long consignmentAmount;
	private String consignmentContent;
	private String consignmentPermission;
	
	public Consignment() {}

	public Consignment(Long consignmentNum, Long goodsNum, String goodsName, String memberId, String memberId2,
			Long shopNum, String shopName, String consignmentStartPeriod, String consignmentEndPeriod,
			Date consignmentApplyDay, Long consignmentQuantity, Long consignmentAmount, String consignmentContent) {
		super();
		this.consignmentNum = consignmentNum;
		this.goodsNum = goodsNum;
		this.goodsName = goodsName;
		this.memberId = memberId;
		this.memberId2 = memberId2;
		this.shopNum = shopNum;
		this.shopName = shopName;
		this.consignmentStartPeriod = consignmentStartPeriod;
		this.consignmentEndPeriod = consignmentEndPeriod;
		this.consignmentApplyDay = consignmentApplyDay;
		this.consignmentQuantity = consignmentQuantity;
		this.consignmentAmount = consignmentAmount;
		this.consignmentContent = consignmentContent;
	}

	public String getConsignmentPermission() {
		return consignmentPermission;
	}

	public void setConsignmentPermission(String consignmentPermission) {
		this.consignmentPermission = consignmentPermission;
	}

	public Long getConsignmentNum() {
		return consignmentNum;
	}

	public void setConsignmentNum(Long consignmentNum) {
		this.consignmentNum = consignmentNum;
	}

	public Long getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(Long goodsNum) {
		this.goodsNum = goodsNum;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberId2() {
		return memberId2;
	}

	public void setMemberId2(String memberId2) {
		this.memberId2 = memberId2;
	}

	public Long getShopNum() {
		return shopNum;
	}

	public void setShopNum(Long shopNum) {
		this.shopNum = shopNum;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getConsignmentStartPeriod() {
		return consignmentStartPeriod;
	}

	public void setConsignmentStartPeriod(String consignmentStartPeriod) {
		this.consignmentStartPeriod = consignmentStartPeriod;
	}

	public String getConsignmentEndPeriod() {
		return consignmentEndPeriod;
	}

	public void setConsignmentEndPeriod(String consignmentEndPeriod) {
		this.consignmentEndPeriod = consignmentEndPeriod;
	}

	public Date getConsignmentApplyDay() {
		return consignmentApplyDay;
	}

	public void setConsignmentApplyDay(Date consignmentApplyDay) {
		this.consignmentApplyDay = consignmentApplyDay;
	}

	public Long getConsignmentQuantity() {
		return consignmentQuantity;
	}

	public void setConsignmentQuantity(Long consignmentQuantity) {
		this.consignmentQuantity = consignmentQuantity;
	}

	public Long getConsignmentAmount() {
		return consignmentAmount;
	}

	public void setConsignmentAmount(Long consignmentAmount) {
		this.consignmentAmount = consignmentAmount;
	}

	public String getConsignmentContent() {
		return consignmentContent;
	}

	public void setConsignmentContent(String consignmentContent) {
		this.consignmentContent = consignmentContent;
	}

}

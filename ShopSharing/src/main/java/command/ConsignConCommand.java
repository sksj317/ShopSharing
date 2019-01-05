package command;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class ConsignConCommand implements Serializable {
	private Long consignConNum;
	private Long consignmentNum;
	private Long goodsNum;
	private Long shopNum;
	private String memberId;
	private String memberId2;
	private String goodsName;
	private String consignmentStartPeriod;
	private String consignmentEndPeriod;
	private Long consignmentQuantity;
	private Long consignmentAmount;
	private String consignBankName;
	private Date consignConConclusion;
	private String shopName;
	
	public ConsignConCommand() {}
	
	public ConsignConCommand(Long consignConNum, Long consignmentNum, Long goodsNum, Long shopNum,String memberId, String memberId2, 
			String goodsName, String consignmentStartPeriod, String consignmentEndPeriod, 
			Long consignmentQuantity, Long consignmentAmount, String consignBankName, Date consignConConclusion,String shopName) {
		this.consignConNum = consignConNum;
		this.consignmentNum = consignmentNum;
		this.goodsNum = goodsNum;
		this.shopNum = shopNum;
		this.memberId = memberId;
		this.memberId2 = memberId2;
		this.goodsName = goodsName;
		this.consignmentStartPeriod = consignmentStartPeriod;
		this.consignmentEndPeriod = consignmentEndPeriod;
		this.consignmentQuantity = consignmentQuantity;
		this.consignmentAmount = consignmentAmount;
		this.consignBankName = consignBankName;
		this.consignConConclusion = consignConConclusion;
		this.shopName = shopName;
		
	}

	
	
	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Long getShopNum() {
		return shopNum;
	}

	public void setShopNum(Long shopNum) {
		this.shopNum = shopNum;
	}

	public Long getConsignConNum() {
		return consignConNum;
	}

	public void setConsignConNum(Long consignConNum) {
		this.consignConNum = consignConNum;
	}

	public Date getConsignConConclusion() {
		return consignConConclusion;
	}

	public void setConsignConConclusion(Date consignConConclusion) {
		this.consignConConclusion = consignConConclusion;
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

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
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

	public String getConsignBankName() {
		return consignBankName;
	}

	public void setConsignBankName(String consignBankName) {
		this.consignBankName = consignBankName;
	}
	
}

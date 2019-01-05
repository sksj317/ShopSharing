package command;

import java.io.Serializable; 
import java.util.Date;

@SuppressWarnings("serial")
public class ConsignReqCommand implements Serializable {
	
	private Long consignmentNum;
	private String memberId;
	private String memberId2;
	private Long goodsNum;
	private Long shopNum;
	private Date consignmentApplyDay;
	private Date consignmentStartPeriod;
	private Date consignmentEndPeriod;
	private Long consignmentQuantity;
	private Long consignmentAmount;
	private String shopName;
	private String consignmentContent;
	private String goodsPermissionResult;
	
	public ConsignReqCommand() {}
	
	public ConsignReqCommand(Long consignmentNum, String memberId, String memberId2, Long goodsNum, Long shopNum,
			Date consignmentApplyDay, Date consignmentStartPeriod, Date consignmentEndPeriod, Long consignmentQuantity,
			Long consignmentAmount, String shopName, String consignmentContent) {
		super();
		this.consignmentNum = consignmentNum;
		this.memberId = memberId;
		this.memberId2 = memberId2;
		this.goodsNum = goodsNum;
		this.shopNum = shopNum;
		this.consignmentApplyDay = consignmentApplyDay;
		this.consignmentStartPeriod = consignmentStartPeriod;
		this.consignmentEndPeriod = consignmentEndPeriod;
		this.consignmentQuantity = consignmentQuantity;
		this.consignmentAmount = consignmentAmount;
		this.shopName = shopName;
		this.consignmentContent = consignmentContent;
	}


	public String getGoodsPermissionResult() {
		return goodsPermissionResult;
	}

	public void setGoodsPermissionResult(String goodsPermissionResult) {
		this.goodsPermissionResult = goodsPermissionResult;
	}

	public Long getConsignmentNum() {
		return consignmentNum;
	}

	public void setConsignmentNum(Long consignmentNum) {
		this.consignmentNum = consignmentNum;
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

	public Long getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(Long goodsNum) {
		this.goodsNum = goodsNum;
	}

	public Long getShopNum() {
		return shopNum;
	}

	public void setShopNum(Long shopNum) {
		this.shopNum = shopNum;
	}

	public Date getConsignmentApplyDay() {
		return consignmentApplyDay;
	}

	public void setConsignmentApplyDay(Date consignmentApplyDay) {
		this.consignmentApplyDay = consignmentApplyDay;
	}

	public Date getConsignmentStartPeriod() {
		return consignmentStartPeriod;
	}

	public void setConsignmentStartPeriod(Date consignmentStartPeriod) {
		this.consignmentStartPeriod = consignmentStartPeriod;
	}

	public Date getConsignmentEndPeriod() {
		return consignmentEndPeriod;
	}

	public void setConsignmentEndPeriod(Date consignmentEndPeriod) {
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

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getConsignmentContent() {
		return consignmentContent;
	}

	public void setConsignmentContent(String consignmentContent) {
		this.consignmentContent = consignmentContent;
	}

}

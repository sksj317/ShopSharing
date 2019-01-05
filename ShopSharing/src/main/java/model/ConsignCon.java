package model;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class ConsignCon implements Serializable{

	private Long consignConNum;
	private String consignConTerm;
	private Date consignConConclusion;
	private Date consignConStart;
	private Date consignConExp;
	private Long consignConPay;
	private Long consignConQuantity;
	private String consignBankName;
	private String consignCheck;
	private String shopName;
	
	public ConsignCon() {}

	public ConsignCon(Long consignConNum, String consignConTerm, Date consignConConclusion, Date consignConExp,
			Long consignConPay, Long consignConQuantity, String consignBankName, String consignCheck,String shopName) {
		super();
		this.consignConNum = consignConNum;
		this.consignConTerm = consignConTerm;
		this.consignConConclusion = consignConConclusion;
		this.consignConExp = consignConExp;
		this.consignConPay = consignConPay;
		this.consignConQuantity = consignConQuantity;
		this.consignBankName = consignBankName;
		this.consignCheck = consignCheck;
		this.shopName = shopName;
	}

	
	
	
	public Date getConsignConStart() {
		return consignConStart;
	}

	public void setConsignConStart(Date consignConStart) {
		this.consignConStart = consignConStart;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Long getConsignConNum() {
		return consignConNum;
	}

	public void setConsignConNum(Long consignConNum) {
		this.consignConNum = consignConNum;
	}

	public String getConsignConTerm() {
		return consignConTerm;
	}

	public void setConsignConTerm(String consignConTerm) {
		this.consignConTerm = consignConTerm;
	}

	public Date getConsignConConclusion() {
		return consignConConclusion;
	}

	public void setConsignConConclusion(Date consignConConclusion) {
		this.consignConConclusion = consignConConclusion;
	}

	public Date getConsignConExp() {
		return consignConExp;
	}

	public void setConsignConExp(Date consignConExp) {
		this.consignConExp = consignConExp;
	}

	public Long getConsignConPay() {
		return consignConPay;
	}

	public void setConsignConPay(Long consignConPay) {
		this.consignConPay = consignConPay;
	}

	public Long getConsignConQuantity() {
		return consignConQuantity;
	}

	public void setConsignConQuantity(Long consignConQuantity) {
		this.consignConQuantity = consignConQuantity;
	}

	public String getConsignBankName() {
		return consignBankName;
	}

	public void setConsignBankName(String consignBankName) {
		this.consignBankName = consignBankName;
	}

	public String getConsignCheck() {
		return consignCheck;
	}

	public void setConsignCheck(String consignCheck) {
		this.consignCheck = consignCheck;
	}
	
}

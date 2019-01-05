package model;

import java.io.Serializable; 
import java.util.Date;

@SuppressWarnings("serial")
public class Goods implements Serializable{

	private Long goodsNum;
	private String memberId;
	private String goodsName;
	private Long goodsAmount;
	private Long goodsPrice;
	private String goodsDetail;
	private Long goodsReadCount;
	private Date goodsReg;
	private String goodsPermission;
	private String goodsOriginalFile;
	private String goodsStoredFileName;
	
	
	public Goods() {}

	public Goods(Long goodsNum, String memberId, String goodsName, Long goodsAmount, Long goodsPrice, String goodsDetail,
			Long goodsReadCount,Date goodsReg,String goodsPermission,String goodsOriginalFile,String goodsStoredFileName) {
		super();
		this.goodsNum = goodsNum;
		this.memberId = memberId;
		this.goodsName = goodsName;
		this.goodsAmount = goodsAmount;
		this.goodsPrice = goodsPrice;
		this.goodsDetail = goodsDetail;
		this.goodsReadCount = goodsReadCount;
		this.goodsReg = goodsReg;
		this.goodsOriginalFile = goodsOriginalFile;
		this.goodsStoredFileName = goodsStoredFileName;
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

	public Long getGoodsAmount() {
		return goodsAmount;
	}

	public void setGoodsAmount(Long goodsAmount) {
		this.goodsAmount = goodsAmount;
	}

	public Long getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(Long goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsDetail() {
		return goodsDetail;
	}

	public void setGoodsDetail(String goodsDetail) {
		this.goodsDetail = goodsDetail;
	}

	public Long getGoodsReadCount() {
		return goodsReadCount;
	}

	public void setGoodsReadCount(Long goodsReadCount) {
		this.goodsReadCount = goodsReadCount;
	}

	public Date getGoodsReg() {
		return goodsReg;
	}

	public void setGoodsReg(Date goodsReg) {
		this.goodsReg = goodsReg;
	}
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getGoodsPermission() {
		return goodsPermission;
	}

	public void setGoodsPermission(String goodsPermission) {
		this.goodsPermission = goodsPermission;
	}

	public String getGoodsOriginalFile() {
		return goodsOriginalFile;
	}

	public void setGoodsOriginalFile(String goodsOriginalFile) {
		this.goodsOriginalFile = goodsOriginalFile;
	}

	public String getGoodsStoredFileName() {
		return goodsStoredFileName;
	}

	public void setGoodsStoredFileName(String goodsStoredFileName) {
		this.goodsStoredFileName = goodsStoredFileName;
	}
	
}

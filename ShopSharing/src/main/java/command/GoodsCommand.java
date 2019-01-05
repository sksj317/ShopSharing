package command;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class GoodsCommand implements Serializable {

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
	private String goodsOriginalFileExtension;
	private MultipartFile goodsImg;

	public GoodsCommand() {
	}

	public GoodsCommand(Long goodsNum,String memberId,String goodsName,
			Long goodsAmount,Long goodsPrice,String goodsDetail,
			Long goodsReadCount,Date goodsReg,String goodsPermission,
			String goodsOriginalFile,String goodsStoredFileName,
			String goodsOriginalFileExtension,MultipartFile goodsImg
			) {

		this.goodsNum = goodsNum;
		this.goodsName = goodsName;
		this.goodsAmount = goodsAmount;
		this.goodsPrice = goodsPrice;
		this.goodsDetail = goodsDetail;
		this.goodsImg = goodsImg;
		this.goodsReadCount = goodsReadCount;
		this.goodsReg = goodsReg;
		this.goodsPermission = goodsPermission;
		this.goodsOriginalFile = goodsOriginalFile;
		this.goodsStoredFileName = goodsStoredFileName;
		this.goodsOriginalFileExtension = goodsOriginalFileExtension;
		this.goodsImg = goodsImg;
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

	public String setMemberId(String memberId) {
		return this.memberId = memberId;
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

	public String getGoodsOriginalFileExtension() {
		return goodsOriginalFileExtension;
	}

	public void setGoodsOriginalFileExtension(String goodsOriginalFileExtension) {
		this.goodsOriginalFileExtension = goodsOriginalFileExtension;
	}

	public MultipartFile getGoodsImg() {
		return goodsImg;
	}

	public void setGoodsImg(MultipartFile goodsImg) {
		this.goodsImg = goodsImg;
	}


}

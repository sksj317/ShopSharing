package command;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
public class ShopCommand implements Serializable{
	
	private Long shopNum;
	private String shopName;
	private String shopType;
	private String shopPost;
	private String shopAddr;
	private String shopAddr2;
	private Long shopMonth;
	private Long shopStartTime;
	private Long shopEndTime;
	private String shopLentType;
	private MultipartFile shopImg;
	private String shopDetail;
	private Long shopDeposit;
	private Long shopLentPay;
	private Long shopReadCount;
	private Date shopReg;
	private String shopPermission;
	private String memberId;
	private String shopOriginalFile;
	private String shopOriginalFileExtension;
	private String shopStoredFileName;
	
	public ShopCommand() {}
	
	public ShopCommand(
			Long shopNum,String shopName,String shopType,
			String shopPost,String shopAddr,String shopAddr2,
			Long shopMonth,Long shopStartTime,Long shopEndTime,
			String shopLentType,String shopDetail,Long shopDeposit,
			Long shopLentPay,Long shopReadCount,Date shopReg,
			String shopPermission,String memberId,String shopOriginalFile,
			String shopStoredFileName) {
		
		this.shopNum = shopNum;
		this.memberId = memberId;
		this.shopName = shopName;
		this.shopType = shopType;
		this.shopPost = shopPost;
		this.shopAddr = shopAddr;
		this.shopAddr2 = shopAddr2;
		this.shopMonth = shopMonth;
		this.shopStartTime = shopStartTime;
		this.shopEndTime = shopEndTime;
		this.shopLentType = shopLentType;
		this.shopDetail = shopDetail;
		this.shopDeposit = shopDeposit;
		this.shopLentPay = shopLentPay;
		this.shopReadCount = shopReadCount;
		this.shopReg = shopReg;
		this.shopPermission = shopPermission;
		this.shopOriginalFile = shopOriginalFile;
		this.shopStoredFileName = shopStoredFileName;
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
	public String getShopType() {
		return shopType;
	}
	public void setShopType(String shopType) {
		this.shopType = shopType;
	}
	public String getShopPost() {
		return shopPost;
	}
	public void setShopPost(String shopPost) {
		this.shopPost = shopPost;
	}
	public String getShopAddr() {
		return shopAddr;
	}
	public void setShopAddr(String shopAddr) {
		this.shopAddr = shopAddr;
	}
	public String getShopAddr2() {
		return shopAddr2;
	}
	public void setShopAddr2(String shopAddr2) {
		this.shopAddr2 = shopAddr2;
	}
	public Long getShopMonth() {
		return shopMonth;
	}
	public void setShopMonth(Long shopMonth) {
		this.shopMonth = shopMonth;
	}
	public Long getShopStartTime() {
		return shopStartTime;
	}
	public void setShopStartTime(Long shopStartTime) {
		this.shopStartTime = shopStartTime;
	}
	public Long getShopEndTime() {
		return shopEndTime;
	}
	public void setShopEndTime(Long shopEndTime) {
		this.shopEndTime = shopEndTime;
	}
	public String getShopLentType() {
		return shopLentType;
	}
	public void setShopLentType(String shopLentType) {
		this.shopLentType = shopLentType;
	}
	public MultipartFile getShopImg() {
		return shopImg;
	}
	public void setShopImg(MultipartFile shopImg) {
		this.shopImg = shopImg;
	}
	public String getShopDetail() {
		return shopDetail;
	}
	public void setShopDetail(String shopDetail) {
		this.shopDetail = shopDetail;
	}
	public Long getShopDeposit() {
		return shopDeposit;
	}
	public void setShopDeposit(Long shopDeposit) {
		this.shopDeposit = shopDeposit;
	}
	public Long getShopLentPay() {
		return shopLentPay;
	}
	public void setShopLentPay(Long shopLentPay) {
		this.shopLentPay = shopLentPay;
	}
	public Long getShopReadCount() {
		return shopReadCount;
	}
	public void setShopReadCount(Long shopReadCount) {
		this.shopReadCount = shopReadCount;
	}
	public Date getShopReg() {
		return shopReg;
	}
	public void setShopReg(Date shopReg) {
		this.shopReg = shopReg;
	}
	public String getShopPermission() {
		return shopPermission;
	}
	public void setShopPermission(String shopPermission) {
		this.shopPermission = shopPermission;
	}
	public String getMemberId() {
		return memberId;
	}
	public String setMemberId(String memberId) {
		return this.memberId = memberId;
	}
	public String getShopOriginalFile() {
		return shopOriginalFile;
	}
	public void setShopOriginalFile(String shopOriginalFile) {
		this.shopOriginalFile = shopOriginalFile;
	}
	public String getShopOriginalFileExtension() {
		return shopOriginalFileExtension;
	}
	public void setShopOriginalFileExtension(String shopOriginalFileExtension) {
		this.shopOriginalFileExtension = shopOriginalFileExtension;
	}
	public String getShopStoredFileName() {
		return shopStoredFileName;
	}
	public void setShopStoredFileName(String shopStoredFileName) {
		this.shopStoredFileName = shopStoredFileName;
	}
		
/*	public ShopCommand() {}
	
	public ShopCommand(
			Long shopNum, String memberId, String shopName, 
			String shopType,
			String shopPost, String shopAddr, String shopAddr2,
			Long shopMonth, 
			Long shopStartTime, Long shopEndTime, String shopLentType, 
			MultipartFile shopImg,String shopDetail, Long shopDeposit, 
			Long shopLentPay, Long shopReadCount,Date shopReg,
			String shopPermission,String shopOriginalFile,
			String shopOriginalFileExtension,String shopStoredFileName) {
		
		this.shopNum = shopNum;
		this.memberId = memberId;
		this.shopName = shopName;
		this.shopType = shopType;
		this.shopPost = shopPost;
		this.shopAddr = shopAddr;
		this.shopAddr2 = shopAddr2;
		this.shopMonth = shopMonth;
		this.shopStartTime = shopStartTime;
		this.shopEndTime = shopEndTime;
		this.shopLentType = shopLentType;
		this.shopImg = shopImg;
		this.shopDetail = shopDetail;
		this.shopDeposit = shopDeposit;
		this.shopLentPay = shopLentPay;
		this.shopReadCount = shopReadCount;
		this.shopReg = shopReg;
		this.shopPermission = shopPermission;
		this.shopOriginalFile = shopOriginalFile;
		this.shopOriginalFileExtension = shopOriginalFileExtension;
		this.shopStoredFileName = shopStoredFileName;
	}*/

	


	
	
}

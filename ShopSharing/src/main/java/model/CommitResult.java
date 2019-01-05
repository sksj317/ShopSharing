package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CommitResult implements Serializable {
	
	private Long commitResultNum;
	private Long commitResultDeposit;
	private Long commitResultTotalStock;
	private Long commitResultAssure;
	private Long commitResultShopRepay;
	private Long commitResultGoodsRepay;
	
	public CommitResult () {}

	public CommitResult(Long commitResultNum, Long commitResultDeposit, Long commitResultTotalStock,
			Long commitResultAssure, Long commitResultShopRepay, Long commitResultGoodsRepay) {
		super();
		this.commitResultNum = commitResultNum;
		this.commitResultDeposit = commitResultDeposit;
		this.commitResultTotalStock = commitResultTotalStock;
		this.commitResultAssure = commitResultAssure;
		this.commitResultShopRepay = commitResultShopRepay;
		this.commitResultGoodsRepay = commitResultGoodsRepay;
	}

	public Long getCommitResultNum() {
		return commitResultNum;
	}

	public void setCommitResultNum(Long commitResultNum) {
		this.commitResultNum = commitResultNum;
	}

	public Long getCommitResultDeposit() {
		return commitResultDeposit;
	}

	public void setCommitResultDeposit(Long commitResultDeposit) {
		this.commitResultDeposit = commitResultDeposit;
	}

	public Long getCommitResultTotalStock() {
		return commitResultTotalStock;
	}

	public void setCommitResultTotalStock(Long commitResultTotalStock) {
		this.commitResultTotalStock = commitResultTotalStock;
	}

	public Long getCommitResultAssure() {
		return commitResultAssure;
	}

	public void setCommitResultAssure(Long commitResultAssure) {
		this.commitResultAssure = commitResultAssure;
	}

	public Long getCommitResultShopRepay() {
		return commitResultShopRepay;
	}

	public void setCommitResultShopRepay(Long commitResultShopRepay) {
		this.commitResultShopRepay = commitResultShopRepay;
	}

	public Long getCommitResultGoodsRepay() {
		return commitResultGoodsRepay;
	}

	public void setCommitResultGoodsRepay(Long commitResultGoodsRepay) {
		this.commitResultGoodsRepay = commitResultGoodsRepay;
	}
	
}

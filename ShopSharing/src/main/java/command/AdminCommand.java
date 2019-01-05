package command;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@SuppressWarnings("serial")
public class AdminCommand implements Serializable {
	private List<AdminCommand> adminCommand;
	private List<Long> postPmNum;
	private List<String> postType;
	private List<Integer> listIndex;
	private String postResult;

	private String memberId;
	
	private int postNum;	
	private String postName;	
	private Date postReg;	
	private String postDistinct;
	
	public List<AdminCommand> getAdminCommand() {
		return adminCommand;
	}
	public void setAdminCommand(List<AdminCommand> adminCommand) {
		this.adminCommand = adminCommand;
	}
	public List<Long> getPostPmNum() {
		return postPmNum;
	}
	public void setPostPmNum(List<Long> postPmNum) {
		this.postPmNum = postPmNum;
	}
	public String getPostResult() {
		return postResult;
	}
	public void setPostResult(String postResult) {
		this.postResult = postResult;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getPostNum() {
		return postNum;
	}
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
	}
	public Date getPostReg() {
		return postReg;
	}
	public void setPostReg(Date postReg) {
		this.postReg = postReg;
	}
	public String getPostDistinct() {
		return postDistinct;
	}
	public void setPostDistinct(String postDistinct) {
		this.postDistinct = postDistinct;
	}
	public List<String> getPostType() {
		return postType;
	}
	public void setPostType(List<String> postType) {
		this.postType = postType;
	}
	public List<Integer> getListIndex() {
		return listIndex;
	}
	public void setListIndex(List<Integer> listIndex) {
		this.listIndex = listIndex;
	}
	

}

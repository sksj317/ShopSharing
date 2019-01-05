package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Bcat implements Serializable{
	private int bnum;
	private int anum;
	private String bname;
	
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
}

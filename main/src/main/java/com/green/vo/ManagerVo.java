package com.green.vo;

import java.sql.Timestamp;

public class ManagerVo {
	private int MgNum; 
	private String MgName; 
	private String title; 
	private String content; 
	private int readCount; 
	private Timestamp wirteDate;
	
	public ManagerVo() {}
	
	
	
	public ManagerVo(int mgNum, String mgName, String title, String content, int readCount, Timestamp wirteDate) {
		MgNum = mgNum;
		MgName = mgName;
		this.title = title;
		this.content = content;
		this.readCount = readCount;
		this.wirteDate = wirteDate;
	}



	public int getMgNum() {
		return MgNum;
	}

	public void setMgNum(int mgNum) {
		MgNum = mgNum;
	}

	public String getMgName() {
		return MgName;
	}

	public void setMgName(String mgName) {
		MgName = mgName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public Timestamp getWirteDate() {
		return wirteDate;
	}

	public void setWirteDate(Timestamp wirteDate) {
		this.wirteDate = wirteDate;
	}

	
	
}

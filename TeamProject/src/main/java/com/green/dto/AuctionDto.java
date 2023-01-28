package com.green.dto;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AuctionDto {
	private int num;
	private String title;
	private String productPic;
	private int strPrice;
	private int dirPrice;
	private int bidUnit;
	private String content;
	private Timestamp regdate;
	private int bidCount;
	private int readCount;
	private Timestamp writeDate;
	private String category;
	
	public AuctionDto() {
		
	}
	
	public AuctionDto(int num, String title, String productPic, int strPrice, int dirPrice, int bidUnit, String content,
			Timestamp regdate, int bidCount, int readCount, Timestamp writeDate, String category) {
		this.num = num;
		this.title = title;
		this.productPic = productPic;
		this.strPrice = strPrice;
		this.dirPrice = dirPrice;
		this.bidUnit = bidUnit;
		this.content = content;
		this.regdate = regdate;
		this.bidCount = bidCount;
		this.readCount = readCount;
		this.writeDate = writeDate;
		this.category = category;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getProductPic() {
		return productPic;
	}
	public void setProductPic(String productPic) {
		this.productPic = productPic;
	}
	public int getStrPrice() {
		return strPrice;
	}
	public void setStrPrice(int strPrice) {
		this.strPrice = strPrice;
	}
	public int getDirPrice() {
		return dirPrice;
	}
	public void setDirPrice(int dirPrice) {
		this.dirPrice = dirPrice;
	}
	public int getBidUnit() {
		return bidUnit;
	}
	public void setBidUnit(int bidUnit) {
		this.bidUnit = bidUnit;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		String date = regdate.replace("T", " ");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date d = null;
		
		try {
			d = sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Timestamp t = new Timestamp(d.getTime());
		this.regdate = t;
	}
	public int getBidCount() {
		return bidCount;
	}
	public void setBidCount(int bidCount) {
		this.bidCount = bidCount;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public Timestamp getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
}

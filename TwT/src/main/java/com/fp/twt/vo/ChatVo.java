package com.fp.twt.vo;

import java.util.Date;

public class ChatVo {
    private String mCode;		//회원번호
    private String chCode;		//채팅방 번호
    private String chMessage; 	//채팅 메세지
    private Date chTime; 		//채팅 시간
    private String cityCode; 	//도시 번호
    private String chTitle; 	//채팅방 제목
    
	public ChatVo() {
		super();
	}

	public ChatVo(String mCode, String chCode, String chMessage, Date chTime, String cityCode, String chTitle) {
		super();
		this.mCode = mCode;
		this.chCode = chCode;
		this.chMessage = chMessage;
		this.chTime = chTime;
		this.cityCode = cityCode;
		this.chTitle = chTitle;
	}

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String getChCode() {
		return chCode;
	}

	public void setChCode(String chCode) {
		this.chCode = chCode;
	}

	public String getChMessage() {
		return chMessage;
	}

	public void setChMessage(String chMessage) {
		this.chMessage = chMessage;
	}

	public Date getChTime() {
		return chTime;
	}

	public void setChTime(Date chTime) {
		this.chTime = chTime;
	}

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getChTitle() {
		return chTitle;
	}

	public void setChTitle(String chTitle) {
		this.chTitle = chTitle;
	}
    
}

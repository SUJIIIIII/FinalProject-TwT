package com.fp.twt.vo;

import java.util.Date;

public class AnswerVo {

    private String sraCode; 	//댓글 번호
    private String srCode; 		//일정리뷰 번호
    private String sba_code; 	//일정일정 번호
    private String mName; 		//댓글 작성자
    private String sraContent; 	//댓글 내용
    private Date sraDate; 		//댓글 작성일

    public AnswerVo() {
		super();
	}
    
	public AnswerVo(String sraCode, String srCode, String sba_code, String mName, String sraContent, Date sraDate) {
		super();
		this.sraCode = sraCode;
		this.srCode = srCode;
		this.sba_code = sba_code;
		this.mName = mName;
		this.sraContent = sraContent;
		this.sraDate = sraDate;
	}

	public String getSraCode() {
        return sraCode;
    }

    public void setSraCode(String sraCode) {
        this.sraCode = sraCode;
    }

    public String getSrCode() {
        return srCode;
    }

    public void setSrCode(String srCode) {
        this.srCode = srCode;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getSraContent() {
        return sraContent;
    }

    public void setSraContent(String sraContent) {
        this.sraContent = sraContent;
    }

    public Date getSraDate() {
        return sraDate;
    }

    public void setSraDate(Date sraDate) {
        this.sraDate = sraDate;
    }

	public String getSba_code() {
		return sba_code;
	}

	public void setSba_code(String sba_code) {
		this.sba_code = sba_code;
	}
    
}

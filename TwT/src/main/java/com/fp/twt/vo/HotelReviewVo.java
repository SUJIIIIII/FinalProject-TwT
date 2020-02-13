package com.fp.twt.vo;

import java.util.Date;

public class HotelReviewVo {

    private String hrvCode; 	//숙소후기 번호
    private String hrCode; 		//방 코드
    private String hbCode; 		//예약 번호
    private String mCode; 		//회원 번호
    private String hrvContent; 	//숙소후기 내용
    private Date hrvDate; 		//숙소후기 작성일
    private int hrvStarn; 		//숙소후기 평점
    
    public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public HotelReviewVo() {
		super();
	}

	public HotelReviewVo(String hrvCode, String hrCode, String hbCode, String mCode, String hrvContent, Date hrvDate,
			int hrvStarn) {
		super();
		this.hrvCode = hrvCode;
		this.hrCode = hrCode;
		this.hbCode = hbCode;
		this.mCode = mCode;
		this.hrvContent = hrvContent;
		this.hrvDate = hrvDate;
		this.hrvStarn = hrvStarn;
	}

	public String getHrvCode() {
        return hrvCode;
    }

    public void setHrvCode(String hrvCode) {
        this.hrvCode = hrvCode;
    }

    public String getHrCode() {
        return hrCode;
    }

    public void setHrCode(String hrCode) {
        this.hrCode = hrCode;
    }

    public String getHbCode() {
        return hbCode;
    }

    public void setHbCode(String hbCode) {
        this.hbCode = hbCode;
    }

    public String getMCode() {
        return mCode;
    }

    public void setMCode(String mCode) {
        this.mCode = mCode;
    }

    public String getHrvContent() {
        return hrvContent;
    }

    public void setHrvContent(String hrvContent) {
        this.hrvContent = hrvContent;
    }

    public Date getHrvDate() {
        return hrvDate;
    }

    public void setHrvDate(Date hrvDate) {
        this.hrvDate = hrvDate;
    }

    public int getHrvStarn() {
        return hrvStarn;
    }

    public void setHrvStarn(int hrvStarn) {
        this.hrvStarn = hrvStarn;
    }

}
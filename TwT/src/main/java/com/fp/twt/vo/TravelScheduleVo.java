package com.fp.twt.vo;

import java.util.Date;

public class TravelScheduleVo {

    private String tsCode; 		//여행일정 번호
    private String mCode; 		//회원 번호
    private String tpCode; 		//여행지 번호
    private String tsTitle; 	//일정 제목
    private Date tsSday; 		//일정 출발일
    private String tsTheme; 	//일정 테마
    private String tsPeople; 	//일정 인원
    private String tsThum; 		//일정 썸네일
    private int tsPeriod; 		//일정 기간
    private String tsView; 		//일정 조회수

    public TravelScheduleVo() {
		super();
	}

	public TravelScheduleVo(String tsCode, String mCode, String tpCode, String tsTitle, Date tsSday, String tsTheme,
			String tsPeople, String tsThum, int tsPeriod, String tsView) {
		super();
		this.tsCode = tsCode;
		this.mCode = mCode;
		this.tpCode = tpCode;
		this.tsTitle = tsTitle;
		this.tsSday = tsSday;
		this.tsTheme = tsTheme;
		this.tsPeople = tsPeople;
		this.tsThum = tsThum;
		this.tsPeriod = tsPeriod;
		this.tsView = tsView;
	}
	
	// 조회수 사용
	public TravelScheduleVo(String tsCode, String tsView) {
		super();
		this.tsCode = tsCode;
		this.tsView = tsView;
	}

	public String getTsCode() {
        return tsCode;
    }

    public void setTsCode(String tsCode) {
        this.tsCode = tsCode;
    }

    public String getMCode() {
        return mCode;
    }

    public void setMCode(String mCode) {
        this.mCode = mCode;
    }

    public String getTpCode() {
        return tpCode;
    }

    public void setTpCode(String tpCode) {
        this.tpCode = tpCode;
    }

    public String getTsTitle() {
        return tsTitle;
    }

    public void setTsTitle(String tsTitle) {
        this.tsTitle = tsTitle;
    }

    public Date getTsSday() {
        return tsSday;
    }

    public void setTsSday(Date tsSday) {
        this.tsSday = tsSday;
    }

    public String getTsTheme() {
        return tsTheme;
    }

    public void setTsTheme(String tsTheme) {
        this.tsTheme = tsTheme;
    }

    public String getTsPeople() {
        return tsPeople;
    }

    public void setTsPeople(String tsPeople) {
        this.tsPeople = tsPeople;
    }

    public String getTsThum() {
        return tsThum;
    }

    public void setTsThum(String tsThum) {
        this.tsThum = tsThum;
    }

    public int getTsPeriod() {
        return tsPeriod;
    }

    public void setTsPeriod(int tsPeriod) {
        this.tsPeriod = tsPeriod;
    }

    public String getTsView() {
        return tsView;
    }

    public void setTsView(String tsView) {
        this.tsView = tsView;
    }

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}
    
}

package com.fp.twt.vo;

public class TravelScheduleDayVo {

    private String tsDay; 	//여행 일정 날짜
    private String tsCode; 	//일정 번호
    private String tpCode; 	//여행지 번호
    private String tsMemo; 	//일정 메모
    private int tsMoney; 	//일정 예산
    
    public TravelScheduleDayVo() {
		super();
	}

	public TravelScheduleDayVo(String tsDay, String tsCode, String tpCode, String tsMemo, int tsMoney) {
		super();
		this.tsDay = tsDay;
		this.tsCode = tsCode;
		this.tpCode = tpCode;
		this.tsMemo = tsMemo;
		this.tsMoney = tsMoney;
	}

	public String getTsDay() {
        return tsDay;
    }

    public void setTsDay(String tsDay) {
        this.tsDay = tsDay;
    }

    public String getTsCode() {
        return tsCode;
    }

    public void setTsCode(String tsCode) {
        this.tsCode = tsCode;
    }

    public String getTpCode() {
        return tpCode;
    }

    public void setTpCode(String tpCode) {
        this.tpCode = tpCode;
    }

    public String getTsMemo() {
        return tsMemo;
    }

    public void setTsMemo(String tsMemo) {
        this.tsMemo = tsMemo;
    }

    public int getTsMoney() {
        return tsMoney;
    }

    public void setTsMoney(int tsMoney) {
        this.tsMoney = tsMoney;
    }
    
}

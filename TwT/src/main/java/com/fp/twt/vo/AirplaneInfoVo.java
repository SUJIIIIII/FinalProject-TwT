package com.fp.twt.vo;

import java.util.Date;

public class AirplaneInfoVo {

    private String mCode; 		//회원 번호
    private String depLoca1; 	//출국_출발지명
    private String depLoca2; 	//출국_도착지명
    private Date depDate1; 		//출국_출국날짜
    private Date depDate2; 		//출국_도착날짜
    private String depTime1; 	//출국_출발시간
    private String depTime2; 	//출국_도착시간
    private String reLoca1; 	//귀국_출발지명
    private String reLoca2; 	//귀국_도착지명
    private Date reDate1; 		//귀국_출발날짜 
    private Date reDate2; 		//귀국_도착날짜
    private String reTime1; 	//귀국_출발시간
    private String reTime2; 	//귀국_도착시간
    
    public AirplaneInfoVo() {
		super();
	}

	public AirplaneInfoVo(String mCode, String depLoca1, String depLoca2, Date depDate1, Date depDate2, String depTime1,
			String depTime2, String reLoca1, String reLoca2, Date reDate1, Date reDate2, String reTime1,
			String reTime2) {
		super();
		this.mCode = mCode;
		this.depLoca1 = depLoca1;
		this.depLoca2 = depLoca2;
		this.depDate1 = depDate1;
		this.depDate2 = depDate2;
		this.depTime1 = depTime1;
		this.depTime2 = depTime2;
		this.reLoca1 = reLoca1;
		this.reLoca2 = reLoca2;
		this.reDate1 = reDate1;
		this.reDate2 = reDate2;
		this.reTime1 = reTime1;
		this.reTime2 = reTime2;
	}

	public String getMCode() {
        return mCode;
    }

    public void setMCode(String mCode) {
        this.mCode = mCode;
    }

    public String getDepLoca1() {
        return depLoca1;
    }

    public void setDepLoca1(String depLoca1) {
        this.depLoca1 = depLoca1;
    }

    public String getDepLoca2() {
        return depLoca2;
    }

    public void setDepLoca2(String depLoca2) {
        this.depLoca2 = depLoca2;
    }

    public Date getDepDate1() {
        return depDate1;
    }

    public void setDepDate1(Date depDate1) {
        this.depDate1 = depDate1;
    }

    public Date getDepDate2() {
        return depDate2;
    }

    public void setDepDate2(Date depDate2) {
        this.depDate2 = depDate2;
    }

    public String getDepTime1() {
        return depTime1;
    }

    public void setDepTime1(String depTime1) {
        this.depTime1 = depTime1;
    }

    public String getDepTime2() {
        return depTime2;
    }

    public void setDepTime2(String depTime2) {
        this.depTime2 = depTime2;
    }

    public String getReLoca1() {
        return reLoca1;
    }

    public void setReLoca1(String reLoca1) {
        this.reLoca1 = reLoca1;
    }

    public String getReLoca2() {
        return reLoca2;
    }

    public void setReLoca2(String reLoca2) {
        this.reLoca2 = reLoca2;
    }

    public Date getReDate1() {
        return reDate1;
    }

    public void setReDate1(Date reDate1) {
        this.reDate1 = reDate1;
    }

    public Date getReDate2() {
        return reDate2;
    }

    public void setReDate2(Date reDate2) {
        this.reDate2 = reDate2;
    }

    public String getReTime1() {
        return reTime1;
    }

    public void setReTime1(String reTime1) {
        this.reTime1 = reTime1;
    }

    public String getReTime2() {
        return reTime2;
    }

    public void setReTime2(String reTime2) {
        this.reTime2 = reTime2;
    }

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}
    
}
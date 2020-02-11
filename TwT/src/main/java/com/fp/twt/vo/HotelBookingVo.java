package com.fp.twt.vo;

import java.util.Date;

public class HotelBookingVo {

    private String hbCode; 		//예약번호
    private String mCode; 		//회원번호
    private String hrCode; 		//방코드
    private String hCode; 		//숙소번호
    private Date hbSdate; 		//예약날짜 입실
    private Date hbEdate; 		//예약날짜 퇴실
    private String hbCheck; 	//결제여부
    private int hbPeople; 		//예약 인원
    private String hbName; 		//예약 예약자
    private String cityCode; 	//도시 번호
    private String cityName; 	//도시 이름

    public HotelBookingVo() {
		super();
	}

	public HotelBookingVo(String hbCode, String mCode, String hrCode, String hCode, Date hbSdate, Date hbEdate,
			String hbCheck, int hbPeople, String hbName, String cityCode, String cityName) {
		super();
		this.hbCode = hbCode;
		this.mCode = mCode;
		this.hrCode = hrCode;
		this.hCode = hCode;
		this.hbSdate = hbSdate;
		this.hbEdate = hbEdate;
		this.hbCheck = hbCheck;
		this.hbPeople = hbPeople;
		this.hbName = hbName;
		this.cityCode = cityCode;
		this.cityName = cityName;
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

    public String getHrCode() {
        return hrCode;
    }

    public void setHrCode(String hrCode) {
        this.hrCode = hrCode;
    }

    public String getHCode() {
        return hCode;
    }

    public void setHCode(String hCode) {
        this.hCode = hCode;
    }

    public Date getHbSdate() {
        return hbSdate;
    }

    public void setHbSdate(Date hbSdate) {
        this.hbSdate = hbSdate;
    }

    public Date getHbEdate() {
        return hbEdate;
    }

    public void setHbEdate(Date hbEdate) {
        this.hbEdate = hbEdate;
    }

    public String getHbCheck() {
        return hbCheck;
    }

    public void setHbCheck(String hbCheck) {
        this.hbCheck = hbCheck;
    }

    public int getHbPeople() {
        return hbPeople;
    }

    public void setHbPeople(int hbPeople) {
        this.hbPeople = hbPeople;
    }

    public String getHbName() {
        return hbName;
    }

    public void setHbName(String hbName) {
        this.hbName = hbName;
    }

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String gethCode() {
		return hCode;
	}

	public void sethCode(String hCode) {
		this.hCode = hCode;
	}

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
    
}

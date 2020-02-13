package com.fp.twt.vo;

import java.util.Date;

public class HotelBookingVo {

    private String hb_Code; 		//예약번호
    private String m_Code; 		//회원번호
    private String hr_Code; 		//방코드
    private String h_Code; 		//숙소번호
    private Date hb_Sdate; 		//예약날짜 입실
    private Date hb_Edate; 		//예약날짜 퇴실
    private String hb_Check; 	//결제여부
    private int hb_People; 		//예약 인원
    private String hb_Name; 		//예약 예약자
    private String city_Code; 	//도시 번호
    private String city_Name; 	//도시 이름

    public HotelBookingVo() {
		super();
	}

	public HotelBookingVo(String hb_Code, String m_Code, String hr_Code, String h_Code, Date hb_Sdate, Date hb_Edate,
			String hb_Check, int hb_People, String hb_Name, String city_Code, String city_Name) {
		super();
		this.hb_Code = hb_Code;
		this.m_Code = m_Code;
		this.hr_Code = hr_Code;
		this.h_Code = h_Code;
		this.hb_Sdate = hb_Sdate;
		this.hb_Edate = hb_Edate;
		this.hb_Check = hb_Check;
		this.hb_People = hb_People;
		this.hb_Name = hb_Name;
		this.city_Code = city_Code;
		this.city_Name = city_Name;
	}

	public String gethb_Code() {
        return hb_Code;
    }

    public void sethb_Code(String hb_Code) {
        this.hb_Code = hb_Code;
    }

    public String getm_Code() {
        return m_Code;
    }

    public void setm_Code(String m_Code) {
        this.m_Code = m_Code;
    }

    public String gethr_Code() {
        return hr_Code;
    }

    public void sethr_Code(String hr_Code) {
        this.hr_Code = hr_Code;
    }

    public String geth_Code() {
        return h_Code;
    }

    public void seth_Code(String h_Code) {
        this.h_Code = h_Code;
    }

    public Date gethb_Sdate() {
        return hb_Sdate;
    }

    public void sethb_Sdate(Date hb_Sdate) {
        this.hb_Sdate = hb_Sdate;
    }

    public Date gethb_Edate() {
        return hb_Edate;
    }

    public void sethb_Edate(Date hb_Edate) {
        this.hb_Edate = hb_Edate;
    }

    public String gethb_Check() {
        return hb_Check;
    }

    public void sethb_Check(String hb_Check) {
        this.hb_Check = hb_Check;
    }

    public int gethb_People() {
        return hb_People;
    }

    public void sethb_People(int hb_People) {
        this.hb_People = hb_People;
    }

    public String gethb_Name() {
        return hb_Name;
    }

    public void sethb_Name(String hb_Name) {
        this.hb_Name = hb_Name;
    }

	public String getcity_Code() {
		return city_Code;
	}

	public void setcity_Code(String city_Code) {
		this.city_Code = city_Code;
	}

	public String getcity_Name() {
		return city_Name;
	}

	public void setcity_Name(String city_Name) {
		this.city_Name = city_Name;
	}
    
}

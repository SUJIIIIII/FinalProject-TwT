package com.fp.twt.vo;

import java.util.Date;

public class HotelReviewVo {

    private String hrv_Code; 	//숙소후기 번호
    private String hr_Code; 		//방 코드
    private String hb_Code; 		//예약 번호
    private String m_Code; 		//회원 번호
    private String hrv_Content; 	//숙소후기 내용
    private Date hrv_Date; 		//숙소후기 작성일
    private int hrv_Starn; 		//숙소후기 평점

	public HotelReviewVo() {
		super();
	}

	public HotelReviewVo(String hrv_Code, String hr_Code, String hb_Code, String m_Code, String hrv_Content, Date hrv_Date,
			int hrv_Starn) {
		super();
		this.hrv_Code = hrv_Code;
		this.hr_Code = hr_Code;
		this.hb_Code = hb_Code;
		this.m_Code = m_Code;
		this.hrv_Content = hrv_Content;
		this.hrv_Date = hrv_Date;
		this.hrv_Starn = hrv_Starn;
	}

	public String gethrv_Code() {
        return hrv_Code;
    }

    public void sethrv_Code(String hrv_Code) {
        this.hrv_Code = hrv_Code;
    }

    public String gethr_Code() {
        return hr_Code;
    }

    public void sethr_Code(String hr_Code) {
        this.hr_Code = hr_Code;
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

    public String gethrv_Content() {
        return hrv_Content;
    }

    public void sethrv_Content(String hrv_Content) {
        this.hrv_Content = hrv_Content;
    }

    public Date gethrv_Date() {
        return hrv_Date;
    }

    public void sethrv_Date(Date hrv_Date) {
        this.hrv_Date = hrv_Date;
    }

    public int gethrv_Starn() {
        return hrv_Starn;
    }

    public void sethrv_Starn(int hrv_Starn) {
        this.hrv_Starn = hrv_Starn;
    }

}
package com.fp.twt.vo;

import java.util.Date;

public class TravelScheduleVo {

    private String ts_Code; 		//여행일정 번호
    private String m_Code; 		//회원 번호
    private String tp_Code; 		//여행지 번호
    private String ts_Title; 	//일정 제목
    private Date ts_Sday; 		//일정 출발일
    private String ts_Theme; 	//일정 테마
    private String ts_People; 	//일정 인원
    private String ts_Thum; 		//일정 썸네일
    private int ts_Period; 		//일정 기간
    private String ts_View; 		//일정 조회수

    public TravelScheduleVo() {
		super();
	}

	public TravelScheduleVo(String ts_Code, String m_Code, String tp_Code, String ts_Title, Date ts_Sday,
			String ts_Theme, String ts_People, String ts_Thum, int ts_Period, String ts_View) {
		super();
		this.ts_Code = ts_Code;
		this.m_Code = m_Code;
		this.tp_Code = tp_Code;
		this.ts_Title = ts_Title;
		this.ts_Sday = ts_Sday;
		this.ts_Theme = ts_Theme;
		this.ts_People = ts_People;
		this.ts_Thum = ts_Thum;
		this.ts_Period = ts_Period;
		this.ts_View = ts_View;
	}

	public String getTs_Code() {
		return ts_Code;
	}

	public void setTs_Code(String ts_Code) {
		this.ts_Code = ts_Code;
	}

	public String getM_Code() {
		return m_Code;
	}

	public void setM_Code(String m_Code) {
		this.m_Code = m_Code;
	}

	public String getTp_Code() {
		return tp_Code;
	}

	public void setTp_Code(String tp_Code) {
		this.tp_Code = tp_Code;
	}

	public String getTs_Title() {
		return ts_Title;
	}

	public void setTs_Title(String ts_Title) {
		this.ts_Title = ts_Title;
	}

	public Date getTs_Sday() {
		return ts_Sday;
	}

	public void setTs_Sday(Date ts_Sday) {
		this.ts_Sday = ts_Sday;
	}

	public String getTs_Theme() {
		return ts_Theme;
	}

	public void setTs_Theme(String ts_Theme) {
		this.ts_Theme = ts_Theme;
	}

	public String getTs_People() {
		return ts_People;
	}

	public void setTs_People(String ts_People) {
		this.ts_People = ts_People;
	}

	public String getTs_Thum() {
		return ts_Thum;
	}

	public void setTs_Thum(String ts_Thum) {
		this.ts_Thum = ts_Thum;
	}

	public int getTs_Period() {
		return ts_Period;
	}

	public void setTs_Period(int ts_Period) {
		this.ts_Period = ts_Period;
	}

	public String getTs_View() {
		return ts_View;
	}

	public void setTs_View(String ts_View) {
		this.ts_View = ts_View;
	}
    
    

    
}

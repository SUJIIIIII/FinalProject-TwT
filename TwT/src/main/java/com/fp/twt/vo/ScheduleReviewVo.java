package com.fp.twt.vo;

public class ScheduleReviewVo {

    private String sr_Code; 	//일정리뷰 번호
    private String m_Name; 	//일정리뷰 작성자
    private String ts_Code; 	//여행일정 번호
    private String sr_Title; //일정리뷰 제목
    
    public ScheduleReviewVo() {
		super();
	}
    
	public ScheduleReviewVo(String sr_Code, String m_Name, String ts_Code, String sr_Title) {
		super();
		this.sr_Code = sr_Code;
		this.m_Name = m_Name;
		this.ts_Code = ts_Code;
		this.sr_Title = sr_Title;
	}

	public String getsr_Code() {
        return sr_Code;
    }

    public void setsr_Code(String sr_Code) {
        this.sr_Code = sr_Code;
    }

    public String getm_Name() {
        return m_Name;
    }

    public void setm_Name(String m_Name) {
        this.m_Name = m_Name;
    }

    public String getts_Code() {
        return ts_Code;
    }

    public void setts_Code(String ts_Code) {
        this.ts_Code = ts_Code;
    }

    public String getsr_Title() {
        return sr_Title;
    }

    public void setsr_Title(String sr_Title) {
        this.sr_Title = sr_Title;
    }

}

package com.fp.twt.vo;

import java.util.Date;

public class AnswerVo {

    private String sra_Code; 	//댓글 번호
    private String sr_Code; 		//일정리뷰 번호
    private String sba_code; 	//일정일정 번호
    private String m_Name; 		//댓글 작성자
    private String sra_Content; 	//댓글 내용
    private Date sra_Date; 		//댓글 작성일

    public AnswerVo() {
		super();
	}
    
	public AnswerVo(String sra_Code, String sr_Code, String sba_code, String m_Name, String sra_Content, Date sra_Date) {
		super();
		this.sra_Code = sra_Code;
		this.sr_Code = sr_Code;
		this.sba_code = sba_code;
		this.m_Name = m_Name;
		this.sra_Content = sra_Content;
		this.sra_Date = sra_Date;
	}

	public String getsra_Code() {
        return sra_Code;
    }

    public void setsra_Code(String sra_Code) {
        this.sra_Code = sra_Code;
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

    public String getsra_Content() {
        return sra_Content;
    }

    public void setsra_Content(String sra_Content) {
        this.sra_Content = sra_Content;
    }

    public Date getsra_Date() {
        return sra_Date;
    }

    public void setsra_Date(Date sra_Date) {
        this.sra_Date = sra_Date;
    }

	public String getSba_code() {
		return sba_code;
	}

	public void setSba_code(String sba_code) {
		this.sba_code = sba_code;
	}
    
}

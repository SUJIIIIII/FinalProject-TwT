package com.fp.twt.vo;

public class MemberVo {

    private String m_Code; 	//회원번호
    private String m_Id; 	//아이디
    private String m_Pass;	//비밀번호
    private String m_Name;	//이름
    private String m_Email;	//이메일
    private String m_Api;	//api로그인
    private String field;	//관리자여부
    
    public MemberVo() {
    	super();
    }
    
    public MemberVo(String m_Code, String m_Id, String m_Pass, String m_Name, String m_Email, String m_Api, String field) {
    	super();
    	this.m_Code = m_Code;
    	this.m_Id = m_Id;
    	this.m_Pass = m_Pass;
    	this.m_Name = m_Name;
    	this.m_Email = m_Email;
    	this.m_Api = m_Api;
    	this.field = field;
    }
    
    public String getm_Code() {
		return m_Code;
	}

	public void setm_Code(String m_Code) {
		this.m_Code = m_Code;
	}

	public String getm_Id() {
		return m_Id;
	}

	public void setm_Id(String m_Id) {
		this.m_Id = m_Id;
	}

	public String getm_Pass() {
		return m_Pass;
	}

	public void setm_Pass(String m_Pass) {
		this.m_Pass = m_Pass;
	}

	public String getm_Name() {
		return m_Name;
	}

	public void setm_Name(String m_Name) {
		this.m_Name = m_Name;
	}

	public String getm_Email() {
		return m_Email;
	}

	public void setm_Email(String m_Email) {
		this.m_Email = m_Email;
	}

	public String getm_Api() {
		return m_Api;
	}

	public void setm_Api(String m_Api) {
		this.m_Api = m_Api;
	}

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

}
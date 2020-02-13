package com.fp.twt.vo;

import java.util.Date;

public class AirplaneInfoVo {

    private String m_Code; 		//회원 번호
    private String dep_Loca1; 	//출국_출발지명
    private String dep_Loca2; 	//출국_도착지명
    private Date dep_Date1; 		//출국_출국날짜
    private Date dep_Date2; 		//출국_도착날짜
    private String dep_Time1; 	//출국_출발시간
    private String dep_Time2; 	//출국_도착시간
    private String re_Loca1; 	//귀국_출발지명
    private String re_Loca2; 	//귀국_도착지명
    private Date re_Date1; 		//귀국_출발날짜 
    private Date re_Date2; 		//귀국_도착날짜
    private String re_Time1; 	//귀국_출발시간
    private String re_Time2; 	//귀국_도착시간
    
    public AirplaneInfoVo() {
		super();
	}

	public AirplaneInfoVo(String m_Code, String dep_Loca1, String dep_Loca2, Date dep_Date1, Date dep_Date2, String dep_Time1,
			String dep_Time2, String re_Loca1, String re_Loca2, Date re_Date1, Date re_Date2, String re_Time1,
			String re_Time2) {
		super();
		this.m_Code = m_Code;
		this.dep_Loca1 = dep_Loca1;
		this.dep_Loca2 = dep_Loca2;
		this.dep_Date1 = dep_Date1;
		this.dep_Date2 = dep_Date2;
		this.dep_Time1 = dep_Time1;
		this.dep_Time2 = dep_Time2;
		this.re_Loca1 = re_Loca1;
		this.re_Loca2 = re_Loca2;
		this.re_Date1 = re_Date1;
		this.re_Date2 = re_Date2;
		this.re_Time1 = re_Time1;
		this.re_Time2 = re_Time2;
	}

	public String getm_Code() {
        return m_Code;
    }

    public void setm_Code(String m_Code) {
        this.m_Code = m_Code;
    }

    public String getdep_Loca1() {
        return dep_Loca1;
    }

    public void setdep_Loca1(String dep_Loca1) {
        this.dep_Loca1 = dep_Loca1;
    }

    public String getdep_Loca2() {
        return dep_Loca2;
    }

    public void setdep_Loca2(String dep_Loca2) {
        this.dep_Loca2 = dep_Loca2;
    }

    public Date getdep_Date1() {
        return dep_Date1;
    }

    public void setdep_Date1(Date dep_Date1) {
        this.dep_Date1 = dep_Date1;
    }

    public Date getdep_Date2() {
        return dep_Date2;
    }

    public void setdep_Date2(Date dep_Date2) {
        this.dep_Date2 = dep_Date2;
    }

    public String getdep_Time1() {
        return dep_Time1;
    }

    public void setdep_Time1(String dep_Time1) {
        this.dep_Time1 = dep_Time1;
    }

    public String getdep_Time2() {
        return dep_Time2;
    }

    public void setdep_Time2(String dep_Time2) {
        this.dep_Time2 = dep_Time2;
    }

    public String getre_Loca1() {
        return re_Loca1;
    }

    public void setre_Loca1(String re_Loca1) {
        this.re_Loca1 = re_Loca1;
    }

    public String getre_Loca2() {
        return re_Loca2;
    }

    public void setre_Loca2(String re_Loca2) {
        this.re_Loca2 = re_Loca2;
    }

    public Date getre_Date1() {
        return re_Date1;
    }

    public void setre_Date1(Date re_Date1) {
        this.re_Date1 = re_Date1;
    }

    public Date getre_Date2() {
        return re_Date2;
    }

    public void setre_Date2(Date re_Date2) {
        this.re_Date2 = re_Date2;
    }

    public String getre_Time1() {
        return re_Time1;
    }

    public void setre_Time1(String re_Time1) {
        this.re_Time1 = re_Time1;
    }

    public String getre_Time2() {
        return re_Time2;
    }

    public void setre_Time2(String re_Time2) {
        this.re_Time2 = re_Time2;
    }
    
}
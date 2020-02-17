package com.fp.twt.vo;

public class AirplaneInfoVo {

	private String m_code; // 회원 번호
	private String dep_Loca1; // 출국_출발지명
	private String dep_Loca2; // 출국_도착지명
	private String dep_Date1; // 출국_출국날짜
	private String dep_Date2; // 출국_도착날짜
	private String dep_Time1; // 출국_출발시간
	private String dep_Time2; // 출국_도착시간
	private String re_Loca1; // 귀국_출발지명
	private String re_Loca2; // 귀국_도착지명
	private String re_Date1; // 귀국_출발날짜
	private String re_Date2; // 귀국_도착날짜
	private String re_Time1; // 귀국_출발시간
	private String re_Time2; // 귀국_도착시간

	public AirplaneInfoVo() {
		super();
	}

	public AirplaneInfoVo(String m_code, String dep_Loca1, String dep_Loca2, String dep_Date1, String dep_Date2,
			String dep_Time1, String dep_Time2, String re_Loca1, String re_Loca2, String re_Date1, String re_Date2,
			String re_Time1, String re_Time2) {
		super();
		this.m_code = m_code;
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

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public String getDep_Loca1() {
		return dep_Loca1;
	}

	public void setDep_Loca1(String dep_Loca1) {
		this.dep_Loca1 = dep_Loca1;
	}

	public String getDep_Loca2() {
		return dep_Loca2;
	}

	public void setDep_Loca2(String dep_Loca2) {
		this.dep_Loca2 = dep_Loca2;
	}

	public String getDep_Date1() {
		return dep_Date1;
	}

	public void setDep_Date1(String dep_Date1) {
		this.dep_Date1 = dep_Date1;
	}

	public String getDep_Date2() {
		return dep_Date2;
	}

	public void setDep_Date2(String dep_Date2) {
		this.dep_Date2 = dep_Date2;
	}

	public String getDep_Time1() {
		return dep_Time1;
	}

	public void setDep_Time1(String dep_Time1) {
		this.dep_Time1 = dep_Time1;
	}

	public String getDep_Time2() {
		return dep_Time2;
	}

	public void setDep_Time2(String dep_Time2) {
		this.dep_Time2 = dep_Time2;
	}

	public String getRe_Loca1() {
		return re_Loca1;
	}

	public void setRe_Loca1(String re_Loca1) {
		this.re_Loca1 = re_Loca1;
	}

	public String getRe_Loca2() {
		return re_Loca2;
	}

	public void setRe_Loca2(String re_Loca2) {
		this.re_Loca2 = re_Loca2;
	}

	public String getRe_Date1() {
		return re_Date1;
	}

	public void setRe_Date1(String re_Date1) {
		this.re_Date1 = re_Date1;
	}

	public String getRe_Date2() {
		return re_Date2;
	}

	public void setRe_Date2(String re_Date2) {
		this.re_Date2 = re_Date2;
	}

	public String getRe_Time1() {
		return re_Time1;
	}

	public void setRe_Time1(String re_Time1) {
		this.re_Time1 = re_Time1;
	}

	public String getRe_Time2() {
		return re_Time2;
	}

	public void setRe_Time2(String re_Time2) {
		this.re_Time2 = re_Time2;
	}
}
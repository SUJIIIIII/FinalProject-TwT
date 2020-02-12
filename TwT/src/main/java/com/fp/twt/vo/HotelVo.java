package com.fp.twt.vo;

public class HotelVo {

    private String hCode; 			//숙소 번호
    private String cityCode; 		//도시 번호
    private String hName; 			//숙소명
    private int hLati; 				//숙소 위도
    private int hLong; 				//숙소 경도
    private String h_phone; 		//숙소 전화번호
    private String hBasicaddr; 		//숙소 간략주소
    private String hAddr; 			//숙소 주소
    private String hImg; 			//숙소 사진
    private String hContent; 		//숙소 설명
    private int hStarn; 			//숙소 별점
    private String hBasiccontent; 	//숙소 간략 설명
    private String cityName; 		//도시 이름
    
    public HotelVo() {
		super();
	}

	public HotelVo(String hCode, String cityCode, String hName, int hLati, int hLong, String h_phone, String hBasicaddr,
			String hAddr, String hImg, String hContent, int hStarn, String hBasiccontent, String cityName) {
		super();
		this.hCode = hCode;
		this.cityCode = cityCode;
		this.hName = hName;
		this.hLati = hLati;
		this.hLong = hLong;
		this.h_phone = h_phone;
		this.hBasicaddr = hBasicaddr;
		this.hAddr = hAddr;
		this.hImg = hImg;
		this.hContent = hContent;
		this.hStarn = hStarn;
		this.hBasiccontent = hBasiccontent;
		this.cityName = cityName;
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

	public String gethName() {
		return hName;
	}

	public void sethName(String hName) {
		this.hName = hName;
	}

	public int gethLati() {
		return hLati;
	}

	public void sethLati(int hLati) {
		this.hLati = hLati;
	}

	public int gethLong() {
		return hLong;
	}

	public void sethLong(int hLong) {
		this.hLong = hLong;
	}

	public String getH_phone() {
		return h_phone;
	}

	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}

	public String gethBasicaddr() {
		return hBasicaddr;
	}

	public void sethBasicaddr(String hBasicaddr) {
		this.hBasicaddr = hBasicaddr;
	}

	public String gethAddr() {
		return hAddr;
	}

	public void sethAddr(String hAddr) {
		this.hAddr = hAddr;
	}

	public String gethImg() {
		return hImg;
	}

	public void sethImg(String hImg) {
		this.hImg = hImg;
	}

	public String gethContent() {
		return hContent;
	}

	public void sethContent(String hContent) {
		this.hContent = hContent;
	}

	public int gethStarn() {
		return hStarn;
	}

	public void sethStarn(int hStarn) {
		this.hStarn = hStarn;
	}

	public String gethBasiccontent() {
		return hBasiccontent;
	}

	public void sethBasiccontent(String hBasiccontent) {
		this.hBasiccontent = hBasiccontent;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
}
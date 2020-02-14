package com.fp.twt.vo;

public class HotelVo {

    private String h_Code; 			//숙소 번호
    private String city_Code; 		//도시 번호
    private String h_Name; 			//숙소명
    private int h_Lati; 				//숙소 위도
    private int h_Long; 				//숙소 경도
    private String h_phone; 		//숙소 전화번호
    private String h_Basicaddr; 		//숙소 간략주소
    private String h_Addr; 			//숙소 주소
    private String h_Img; 			//숙소 사진
    private String h_Content; 		//숙소 설명
    private int h_Starn; 			//숙소 별점
    private String h_Basiccontent; 	//숙소 간략 설명
    private String city_Name; 		//도시 이름
    
    public HotelVo() {
		super();
	}

	public HotelVo(String h_Code, String city_Code, String h_Name, int h_Lati, int h_Long, String h_phone, String h_Basicaddr,
			String h_Addr, String h_Img, String h_Content, int h_Starn, String h_Basiccontent, String city_Name) {
		super();
		this.h_Code = h_Code;
		this.city_Code = city_Code;
		this.h_Name = h_Name;
		this.h_Lati = h_Lati;
		this.h_Long = h_Long;
		this.h_phone = h_phone;
		this.h_Basicaddr = h_Basicaddr;
		this.h_Addr = h_Addr;
		this.h_Img = h_Img;
		this.h_Content = h_Content;
		this.h_Starn = h_Starn;
		this.h_Basiccontent = h_Basiccontent;
		this.city_Name = city_Name;
	}

	public String geth_Code() {
		return h_Code;
	}

	public void seth_Code(String h_Code) {
		this.h_Code = h_Code;
	}

	public String getcity_Code() {
		return city_Code;
	}

	public void setcity_Code(String city_Code) {
		this.city_Code = city_Code;
	}

	public String geth_Name() {
		return h_Name;
	}

	public void seth_Name(String h_Name) {
		this.h_Name = h_Name;
	}

	public int geth_Lati() {
		return h_Lati;
	}

	public void seth_Lati(int h_Lati) {
		this.h_Lati = h_Lati;
	}

	public int geth_Long() {
		return h_Long;
	}

	public void seth_Long(int h_Long) {
		this.h_Long = h_Long;
	}

	public String getH_phone() {
		return h_phone;
	}

	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}

	public String geth_Basicaddr() {
		return h_Basicaddr;
	}

	public void seth_Basicaddr(String h_Basicaddr) {
		this.h_Basicaddr = h_Basicaddr;
	}

	public String geth_Addr() {
		return h_Addr;
	}

	public void seth_Addr(String h_Addr) {
		this.h_Addr = h_Addr;
	}

	public String geth_Img() {
		return h_Img;
	}

	public void seth_Img(String h_Img) {
		this.h_Img = h_Img;
	}

	public String geth_Content() {
		return h_Content;
	}

	public void seth_Content(String h_Content) {
		this.h_Content = h_Content;
	}

	public int geth_Starn() {
		return h_Starn;
	}

	public void seth_Starn(int h_Starn) {
		this.h_Starn = h_Starn;
	}

	public String geth_Basiccontent() {
		return h_Basiccontent;
	}

	public void seth_Basiccontent(String h_Basiccontent) {
		this.h_Basiccontent = h_Basiccontent;
	}

	public String getcity_Name() {
		return city_Name;
	}

	public void setcity_Name(String city_Name) {
		this.city_Name = city_Name;
	}
	
}
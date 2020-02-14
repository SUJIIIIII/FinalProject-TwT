package com.fp.twt.vo;

public class TravelPointVo {

    private String tp_Code; 		//여행지 번호
    private String city_Code; 	//도시 번호
    private String tp_Name; 		//여행지 이름
    private int tp_Lati; 		//여행지 위도
    private int tp_Long; 		//여행지 경도
    private String tp_Type; 		//여행지 타입
    private String tp_Content; 	//여행지 설명
    private String tp_Img; 		//여행지 이미지
    private String tp_Addr; 		//여행지 주소
    private String city_Name; 	//도시 이름
    private int city_Lati; 		//도시 위도
    private int city_Long; 		//도시 경도
    private String city_Img; 	//도시 이미지
    private String city_Eng;		//도시 영문명
    
    public TravelPointVo() {
		super();
	}
    
	public TravelPointVo(String tp_Code, String city_Code, String tp_Name, int tp_Lati, int tp_Long, String tp_Type,
			String tp_Content, String tp_Img, String tp_Addr, String city_Name, int city_Lati, int city_Long, String city_Img,
			String city_Eng) {
		super();
		this.tp_Code = tp_Code;
		this.city_Code = city_Code;
		this.tp_Name = tp_Name;
		this.tp_Lati = tp_Lati;
		this.tp_Long = tp_Long;
		this.tp_Type = tp_Type;
		this.tp_Content = tp_Content;
		this.tp_Img = tp_Img;
		this.tp_Addr = tp_Addr;
		this.city_Name = city_Name;
		this.city_Lati = city_Lati;
		this.city_Long = city_Long;
		this.city_Img = city_Img;
		this.city_Eng = city_Eng;
	}

	public String gettp_Code() {
        return tp_Code;
    }

    public void settp_Code(String tp_Code) {
        this.tp_Code = tp_Code;
    }

    public String getcity_Code() {
        return city_Code;
    }

    public void setcity_Code(String city_Code) {
        this.city_Code = city_Code;
    }

    public String gettp_Name() {
        return tp_Name;
    }

    public void settp_Name(String tp_Name) {
        this.tp_Name = tp_Name;
    }

    public int gettp_Lati() {
        return tp_Lati;
    }

    public void settp_Lati(int tp_Lati) {
        this.tp_Lati = tp_Lati;
    }

    public int gettp_Long() {
        return tp_Long;
    }

    public void settp_Long(int tp_Long) {
        this.tp_Long = tp_Long;
    }

    public String gettp_Type() {
        return tp_Type;
    }

    public void settp_Type(String tp_Type) {
        this.tp_Type = tp_Type;
    }

    public String gettp_Content() {
        return tp_Content;
    }

    public void settp_Content(String tp_Content) {
        this.tp_Content = tp_Content;
    }

    public String gettp_Img() {
        return tp_Img;
    }

    public void settp_Img(String tp_Img) {
        this.tp_Img = tp_Img;
    }

    public String gettp_Addr() {
        return tp_Addr;
    }

    public void settp_Addr(String tp_Addr) {
        this.tp_Addr = tp_Addr;
    }

	public String getcity_Name() {
		return city_Name;
	}

	public void setcity_Name(String city_Name) {
		this.city_Name = city_Name;
	}

	public int getcity_Lati() {
		return city_Lati;
	}

	public void setcity_Lati(int city_Lati) {
		this.city_Lati = city_Lati;
	}

	public int getcity_Long() {
		return city_Long;
	}

	public void setcity_Long(int city_Long) {
		this.city_Long = city_Long;
	}

	public String getcity_Img() {
		return city_Img;
	}

	public void setcity_Img(String city_Img) {
		this.city_Img = city_Img;
	}

	public String getcity_Eng() {
		return city_Eng;
	}

	public void setcity_Eng(String city_Eng) {
		this.city_Eng = city_Eng;
	}

}
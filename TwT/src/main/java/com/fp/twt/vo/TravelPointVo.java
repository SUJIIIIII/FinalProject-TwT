package com.fp.twt.vo;

public class TravelPointVo {

    private String tpCode; 		//여행지 번호
    private String cityCode; 	//도시 번호
    private String tpName; 		//여행지 이름
    private int tpLati; 		//여행지 위도
    private int tpLong; 		//여행지 경도
    private String tpType; 		//여행지 타입
    private String tpContent; 	//여행지 설명
    private String tpImg; 		//여행지 이미지
    private String tpAddr; 		//여행지 주소
    private String cityName; 	//도시 이름
    private int cityLati; 		//도시 위도
    private int cityLong; 		//도시 경도
    private String ciryImg; 	//도시 이미지
    
    public TravelPointVo() {
		super();
	}
    
	public TravelPointVo(String tpCode, String cityCode, String tpName, int tpLati, int tpLong, String tpType,
			String tpContent, String tpImg, String tpAddr, String cityName, int cityLati, int cityLong,
			String ciryImg) {
		super();
		this.tpCode = tpCode;
		this.cityCode = cityCode;
		this.tpName = tpName;
		this.tpLati = tpLati;
		this.tpLong = tpLong;
		this.tpType = tpType;
		this.tpContent = tpContent;
		this.tpImg = tpImg;
		this.tpAddr = tpAddr;
		this.cityName = cityName;
		this.cityLati = cityLati;
		this.cityLong = cityLong;
		this.ciryImg = ciryImg;
	}

	public String getTpCode() {
        return tpCode;
    }

    public void setTpCode(String tpCode) {
        this.tpCode = tpCode;
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public String getTpName() {
        return tpName;
    }

    public void setTpName(String tpName) {
        this.tpName = tpName;
    }

    public int getTpLati() {
        return tpLati;
    }

    public void setTpLati(int tpLati) {
        this.tpLati = tpLati;
    }

    public int getTpLong() {
        return tpLong;
    }

    public void setTpLong(int tpLong) {
        this.tpLong = tpLong;
    }

    public String getTpType() {
        return tpType;
    }

    public void setTpType(String tpType) {
        this.tpType = tpType;
    }

    public String getTpContent() {
        return tpContent;
    }

    public void setTpContent(String tpContent) {
        this.tpContent = tpContent;
    }

    public String getTpImg() {
        return tpImg;
    }

    public void setTpImg(String tpImg) {
        this.tpImg = tpImg;
    }

    public String getTpAddr() {
        return tpAddr;
    }

    public void setTpAddr(String tpAddr) {
        this.tpAddr = tpAddr;
    }

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public int getCityLati() {
		return cityLati;
	}

	public void setCityLati(int cityLati) {
		this.cityLati = cityLati;
	}

	public int getCityLong() {
		return cityLong;
	}

	public void setCityLong(int cityLong) {
		this.cityLong = cityLong;
	}

	public String getCiryImg() {
		return ciryImg;
	}

	public void setCiryImg(String ciryImg) {
		this.ciryImg = ciryImg;
	}
    
}
package com.fp.twt.vo;

import java.util.Date;

public class HotelroomVo {

    private String hrCode; 		//방 코드
    private String hCode; 		//숙소 번호
    private int hrStandard; 	//기준인원
    private int hrMax; 			//최대인원
    private int hrPrice; 		//판매가격
    private int hrValid; 		//이용가능수
    private String hrRank; 		//등급
    private String hrImg; 		//사진
    private String hrWifi; 		//와이파이
    private String hrSmoking; 	//흡연
    private String hrBreakfast; //조식
    private String hr_bed; 		//침대수
    private Date hrDate; 		//날짜

    public String gethCode() {
		return hCode;
	}

	public void sethCode(String hCode) {
		this.hCode = hCode;
	}

	public String getHr_bed() {
		return hr_bed;
	}

	public void setHr_bed(String hr_bed) {
		this.hr_bed = hr_bed;
	}

	public String getHrCode() {
        return hrCode;
    }

    public void setHrCode(String hrCode) {
        this.hrCode = hrCode;
    }

    public String getHCode() {
        return hCode;
    }

    public void setHCode(String hCode) {
        this.hCode = hCode;
    }

    public int getHrStandard() {
        return hrStandard;
    }

    public void setHrStandard(int hrStandard) {
        this.hrStandard = hrStandard;
    }

    public int getHrMax() {
        return hrMax;
    }

    public void setHrMax(int hrMax) {
        this.hrMax = hrMax;
    }

    public int getHrPrice() {
        return hrPrice;
    }

    public void setHrPrice(int hrPrice) {
        this.hrPrice = hrPrice;
    }

    public int getHrValid() {
        return hrValid;
    }

    public void setHrValid(int hrValid) {
        this.hrValid = hrValid;
    }

    public String getHrRank() {
        return hrRank;
    }

    public void setHrRank(String hrRank) {
        this.hrRank = hrRank;
    }

    public String getHrImg() {
        return hrImg;
    }

    public void setHrImg(String hrImg) {
        this.hrImg = hrImg;
    }

    public String getHrWifi() {
        return hrWifi;
    }

    public void setHrWifi(String hrWifi) {
        this.hrWifi = hrWifi;
    }

    public String getHrSmoking() {
        return hrSmoking;
    }

    public void setHrSmoking(String hrSmoking) {
        this.hrSmoking = hrSmoking;
    }

    public String getHrBreakfast() {
        return hrBreakfast;
    }

    public void setHrBreakfast(String hrBreakfast) {
        this.hrBreakfast = hrBreakfast;
    }

    public String gethr_bed() {
        return hr_bed;
    }

    public void sethr_bed(String hr_bed) {
        this.hr_bed = hr_bed;
    }

    public Date getHrDate() {
        return hrDate;
    }

    public void setHrDate(Date hrDate) {
        this.hrDate = hrDate;
    }

}

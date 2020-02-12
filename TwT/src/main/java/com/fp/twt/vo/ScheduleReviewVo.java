package com.fp.twt.vo;

public class ScheduleReviewVo {

    private String srCode; 	//일정리뷰 번호
    private String mName; 	//일정리뷰 작성자
    private String tsCode; 	//여행일정 번호
    private String srTitle; //일정리뷰 제목
    
    public ScheduleReviewVo() {
		super();
	}
    
	public ScheduleReviewVo(String srCode, String mName, String tsCode, String srTitle) {
		super();
		this.srCode = srCode;
		this.mName = mName;
		this.tsCode = tsCode;
		this.srTitle = srTitle;
	}

	public String getSrCode() {
        return srCode;
    }

    public void setSrCode(String srCode) {
        this.srCode = srCode;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getTsCode() {
        return tsCode;
    }

    public void setTsCode(String tsCode) {
        this.tsCode = tsCode;
    }

    public String getSrTitle() {
        return srTitle;
    }

    public void setSrTitle(String srTitle) {
        this.srTitle = srTitle;
    }

}

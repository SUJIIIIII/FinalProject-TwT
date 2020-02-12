package com.fp.twt.vo;

public class MemberVo {

    private String mCode; 	//회원번호
    private String mId; 	//아이디
    private String mPass;	//비밀번호
    private String mName;	//이름
    private String mEmail;	//이메일
    private String mApi;	//api로그인
    private String field;	//관리자여부
    
    public MemberVo() {
    	super();
    }
    
    public MemberVo(String mCode, String mId, String mPass, String mName, String mEmail, String mApi, String field) {
    	super();
    	this.mCode = mCode;
    	this.mId = mId;
    	this.mPass = mPass;
    	this.mName = mName;
    	this.mEmail = mEmail;
    	this.mApi = mApi;
    	this.field = field;
    }
    
    public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPass() {
		return mPass;
	}

	public void setmPass(String mPass) {
		this.mPass = mPass;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmApi() {
		return mApi;
	}

	public void setmApi(String mApi) {
		this.mApi = mApi;
	}


	public String getMCode() {
        return mCode;
    }

    public void setMCode(String mCode) {
        this.mCode = mCode;
    }

    public String getMId() {
        return mId;
    }

    public void setMId(String mId) {
        this.mId = mId;
    }

    public String getMPass() {
        return mPass;
    }

    public void setMPass(String mPass) {
        this.mPass = mPass;
    }

    public String getMName() {
        return mName;
    }

    public void setMName(String mName) {
        this.mName = mName;
    }

    public String getMEmail() {
        return mEmail;
    }

    public void setMEmail(String mEmail) {
        this.mEmail = mEmail;
    }

    public String getMApi() {
        return mApi;
    }

    public void setMApi(String mApi) {
        this.mApi = mApi;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

}
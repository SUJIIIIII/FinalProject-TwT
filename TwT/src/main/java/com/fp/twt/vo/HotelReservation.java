package com.fp.twt.vo;

public class HotelReservation {
	private String reservation_hotelname;//호텔이름
	private String reservation_hotelroom;//호텔 방이름
	private String reservation_price;//호텔가격
	private String reservation_name;//예약자이름
	private String reservation_email;//예야작 이메일
	private String checkin_date;// 예약자 체크인
	private String checkout_date;// 예약자 체이아웃
	private int reservation_guest;//예약자 인원(성인)
	private int reservation_children;//예약자 인원(어린이)
	private int reservation_con;//예약 카운트 올리기위한 변수
	
	
	public HotelReservation() {
		super();
		// TODO Auto-generated constructor stub
	}


	


	public HotelReservation(String reservation_hotelname, String reservation_hotelroom, String reservation_price,
			String reservation_name, String reservation_email, String checkin_date, String checkout_date,
			int reservation_guest, int reservation_children, int reservation_con) {
		super();
		this.reservation_hotelname = reservation_hotelname;
		this.reservation_hotelroom = reservation_hotelroom;
		this.reservation_price = reservation_price;
		this.reservation_name = reservation_name;
		this.reservation_email = reservation_email;
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.reservation_guest = reservation_guest;
		this.reservation_children = reservation_children;
		this.reservation_con = reservation_con;
	}





	public String getReservation_hotelname() {
		return reservation_hotelname;
	}


	public void setReservation_hotelname(String reservation_hotelname) {
		this.reservation_hotelname = reservation_hotelname;
	}


	public String getReservation_hotelroom() {
		return reservation_hotelroom;
	}


	public void setReservation_hotelroom(String reservation_hotelroom) {
		this.reservation_hotelroom = reservation_hotelroom;
	}


	public String getReservation_price() {
		return reservation_price;
	}


	public void setReservation_price(String reservation_price) {
		this.reservation_price = reservation_price;
	}


	public String getReservation_name() {
		return reservation_name;
	}


	public void setReservation_name(String reservation_name) {
		this.reservation_name = reservation_name;
	}


	public String getReservation_email() {
		return reservation_email;
	}


	public void setReservation_email(String reservation_email) {
		this.reservation_email = reservation_email;
	}


	public String getCheckin_date() {
		return checkin_date;
	}


	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}


	public int getReservation_guest() {
		return reservation_guest;
	}


	public void setReservation_guest(int reservation_guest) {
		this.reservation_guest = reservation_guest;
	}


	public int getReservation_children() {
		return reservation_children;
	}


	public void setReservation_children(int reservation_children) {
		this.reservation_children = reservation_children;
	}


	public int getReservation_con() {
		return reservation_con;
	}


	public void setReservation_con(int reservation_con) {
		this.reservation_con = reservation_con;
	}

	
	public String getCheckout_date() {
		return checkout_date;
	}

	
	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}





	@Override
	public String toString() {
		return "HotelReservation [reservation_hotelname=" + reservation_hotelname + ", reservation_hotelroom="
				+ reservation_hotelroom + ", reservation_price=" + reservation_price + ", reservation_name="
				+ reservation_name + ", reservation_email=" + reservation_email + ", checkin_date=" + checkin_date
				+ ", checkout_date=" + checkout_date + ", reservation_guest=" + reservation_guest
				+ ", reservation_children=" + reservation_children + ", reservation_con=" + reservation_con + "]";
	}
	
	
	
	
	
}



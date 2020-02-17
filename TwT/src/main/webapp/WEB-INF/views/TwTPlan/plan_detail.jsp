<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" >
	
	<style>.gm-style .gm-style-mtc label,.gm-style .gm-style-mtc div{font-weight:400}</style>
	<style>.gm-control-active>img{box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1){display:none}.gm-control-active:hover>img:nth-child(2),.gm-control-active:active>img:nth-child(3){display:block}</style>
	<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans">
	<style>.gm-ui-hover-effect{opacity:.6}.gm-ui-hover-effect:hover{opacity:1}</style>
	<style>.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px;box-sizing:border-box}</style>
	<style>@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style><style>.gm-style-pbc{transition:opacity ease-in-out;background-color:rgba(0,0,0,0.45);text-align:center}.gm-style-pbt{font-size:22px;color:white;font-family:Roboto,Arial,sans-serif;position:relative;margin:0;top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%)}</style>
	<style>.gm-style img{max-width: none;}.gm-style {font: 400 11px Roboto, Arial, sans-serif; text-decoration: none;}</style>

	<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="google-site-verification" content="ipMgUnVX-SfjeuEkrb4h9kVsm7aKqjCDyEaCwb3EtlU">
	<title>TwT - 일정만들기</title>
			
	<link rel="shortcut icon" href="/res/earthtory.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/default_ko.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/default.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/gnb.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/tipsy.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/workspace.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/date_picker.css">
	<script async="" src="//www.google-analytics.com/analytics.js"></script>

	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<meta name="google-site-verification" content="MwgpAlNbsXRZEln-QQP8Jra-Aj8cTKcCtDd3L_StvTc">
	<meta name="naver-site-verification" content="48a2af847268bfd79153f73690ad01b35cb1593a">
<!-- 	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/common.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/util.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/marker.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/map.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/stats.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/onion.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/geometry.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/poly.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/controls.js"></script> -->


<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
/* map script */

//전역 변수 선언
var marker; // 마커
var myIcon; // 마커 아이콘
var content = new Array(); // 도시명
var locations = new Array(); // 도시 위도/경도
var markers = new Array(); // 마커 배열
var citycodes = new Array(); //도시 코드

	// map 추가
	function initMap() {
		//방콕위치 위도/경도
		var bangkok = {lat: 13.755161, lng: 100.502371}; 
		
		// 방콕을 센터로 맵 생성
		var map = new google.maps.Map( //지도 객체 생성
			document.getElementById('map'), {zoom: 12, center: bangkok}); //기본 줌,시작 센터 설정
		
       	// DB 불러와서 위치 위도/경도, 도시코드 담기
       	/* for(var i=0;i<4;i++){
			locations[i] = {"position" : new google.maps.LatLng($("#city_"+i).attr("data-lat"), $("#city_"+i).attr("data-lng"))};
			citycodes[i] = $("#city_"+i).attr("data-no");
       	} */
       	
		// 마커 아이콘 생성
		myIcon = new google.maps.MarkerImage("${pageContext.request.contextPath}/resources/images/marker.png",null,null,null,new google.maps.Size(50,45));
		
		// 도시 마커찍기
		/* for (var i=0;i<locations.length;i++) {
        	marker = new google.maps.Marker({
            	position: locations[i].position,
            	map: map,
            	icon: myIcon,
            	title: content[i]
       		});
        	
        	//생성된 마커를 마커배열에 추가
        	markers.push(marker);
		} */
    	
		// 마커를 클릭했을 때의 말풍선 이벤트
		/*  infoWindow.setOptions({
		   	content: contentString,
		     position: locations[i].position
		 }); */
          	
       	/* 클릭시 줌되는 것 */
		/* var infowindow = new google.maps.InfoWindow();
       	google.maps.event.addListener(marker, 'click', (function(marker, i) {
           	return function() {
           		infowindow.setContent(locations[i][0]);
               	infowindow.open(map, marker);
            }
       	})(marker, i));
           
       	if(marker){
           	marker.addListener('click', function() {
          		map.setZoom(15);
           		map.setCenter(this.getPosition());
        	});
        } */

        
       /* var infowindow = new google.maps.InfoWindow({content: content[count]});
       	google.maps.event.addListener(marker, "click", function() {
			infowindow.open(map,marker);
        	count++;
       	}); */
		
	} /* init end */
	
	
	/* script */
	$(document).ready(function(){
		// 로딩 시 map의 크기
		$("#map").css("width","746px");
		
		// 스팟 box 닫기
		$("#on_city_close_btn").click(function(){
			$("#city_list").hide();
			$("#map").css("width","1111px"); // map크기 조정
		});
		
		//스팟 box 열기
		$("#on_city_open_btn").click(function(){
			$("#city_list").show();
			$("#map").css("width","746px");
		});
		
		// 도시변경 box
		$(".list_title_option_menu").click(function(){
			if($(".city_change_box").css("display") == "none"){
				$(".city_change_box").slideDown();
				$(".list_box_overlay").css("display","block");
				$(".list_title_option_menu").html("&nbsp;&nbsp;닫기&nbsp;<i class='fas fa-caret-up'></i>");
			}else{
				$(".city_change_box").slideUp();
				$(".list_box_overlay").css("display","none");
				$(".list_title_option_menu").html("&nbsp;도시 변경<i class='fas fa-caret-down'></i>");
			}
		});
	});
	
	google.maps.event.addDomListener(window, 'load', initialize);

</script>
<!-- 구글맵 API KEY -->
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiDE5HBue4mflsdkcsGvSZrUeEooX8gWQ&callback=initMap&language=ko&region=KR">
</script>

<style type="text/css">
.list_box_overlay {
	width:365px;
	height:100%;
	position:absolute;
	z-index:8;
	background: url('${pageContext.request.contextPath}/resources/images/plan/bgb_70.png') repeat;
	display:none;
}
.city_item{
    padding-top: 5px;
    height: 70px !important;
}
</style>
</head>
<body style="">

	<!-- @@헤더@@ -->
	<div id="header">
		<div style="width:100%;">
			<h1 class="logo fl" alt="로고@@">
				<a href="http://localhost:8090/twt/index.jsp"><span style="color:purple;">&nbsp;&nbsp;<i class="fas fa-plane fa-3x"></i></span></a>
			</h1>
			<div class="fl" style="width:363px;border-right:solid #ebebeb 1px;height:62px">
				<!-- 제목부분 호버 style걸어서 수정할수있게@@ -->
				<div class="fl" id="plan_title" data-url="http://www.earthtory.com/mypage/et_0630673001418979048?type=plan_sub&amp;gdb_srl=304061" style="background-color: rgb(255, 255, 255);">
				제목 부분@@<%=request.getParameter("title") %>
				</div>
				<div class="clear"></div>
			</div>
			<div class="fl" style="width:365px;height:62px;line-height:62px;border-right:solid #ebebeb 1px;text-align:center;color: #555555;font-size:16px;font-weight:bold;" id="plan_total_budget">KRW 0</div>
				<!-- <a href="/ko/mypage/et_0630673001418979048?type=plan_sub&amp;gdb_srl=304061" class="fl" style="width:181px;height:62px;line-height:62px;border-right:solid #ebebeb 1px;text-align:center;color: #555555;font-size:16px;font-weight:bold;" id="plan_preview_link" target="_blank">
				<i class="fas fa-search"></i> 미리보기</a> -->
				<div class="fl" id="gnb_ci_name"></div>
				<div class="fr gnb_box">
					<div class="fr" style="margin-top:9px;margin-right:20px;">
						<!-- <div class="fl" id="plan_member_list_box">
							<a href="/mypage/et_0630673001418979048" target="_blank" class="fl" style="margin-right:5px;background:#e5e5e5;border-radius: 20px;width:40px;height:40px;" original-title="박수지">
								<img src="http://www.earthtory.com/res/img/common/mobile/img_profile.png" style="width:40px;height:40px;border-radius:20px;" onerror="this.src='/res/img/common/mobile/img_profile.png';">
							</a>
						</div>
						<div class="fl" style="margin-right:10px;margin-top:3px;cursor:pointer;" onclick="ws_invite();" id="ws_invite_btn" original-title="친구 초대">
							<img src="/res/img/workspace/new/ws_invite_btn.png">
						</div> -->
						<a href="${pageContext.request.contextPath}/index.jsp">
						<div class="fl" id="plan_out_btn" style="display: block;background: #fc3c3c;border: solid 1px #fc3c3c;">저장&amp;닫기</div>
						</a>
						<div class="fl" id="plan_complete_btn" onclick="plan_complete()" style="display: block;background: #ffba00;border: solid 1px #ffba00;">완료</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
		</div>
		<div class="clear"></div>
	</div> <!-- @@header end@@ -->
	
	
	<!-- 튜토리얼 -->
	<!-- <div class="et_modal_layer_80" id="tutorial_intro" style="display: none;">
		<div style="position:absolute;left:0px;top:0px;"><img src="/res/img/workspace/tutorial/intro_left_top.png"></div>
		<div style="position:absolute;left:310px;top:100px;" class="intro_text"><span>출발날짜</span>와 <span>제목</span>을 수정할 수 있습니다.</div>
	
		<div style="position:absolute;left:184px;top:370px;"><img src="/res/img/workspace/tutorial/intro_left_middle.png"></div>
		<div style="position:absolute;left:699px;top:310px;text-align:right;line-height:30px" class="intro_text"><span>DRAG &amp; DROP</span>또는 <span>PLUS</span>버튼으로<br>일정을 추가 할 수 있습니다.</div>
	
		<div style="position:absolute;left:170px;bottom:0px;"><img src="/res/img/workspace/tutorial/intro_left_bottom.png"></div>
		<div style="position:absolute;left:345px;bottom:106px;text-align:right;line-height:30px" class="intro_text"><span>새로운 장소</span>뿐만 아니라<br><span>교통</span>도 추가 시킬수 있습니다.</div>
	
		<div style="position:absolute;right:215px;top:0px;"><img src="/res/img/workspace/tutorial/intro_right_top.png"></div>
		<div style="position:absolute;right:319px;top:110px;" class="intro_text">함께 여행할 <span>친구</span>들을 추가하세요.</div>
	
		<div style="position:absolute;right:30px;top:30px;cursor:pointer;" onclick="tuto_intro_close();"><img src="/res/img/workspace/tutorial/intro_close_btn.png"></div>
	</div> -->
	
	<!-- 날짜 수정 모달 -->
	<div id="overlay_day_edit">
		<div class="ov_day_edit_full">
			<div style="width:100%;height:50px;border:solid #374854 1px;padding-top:7px;">
				<!--//<div class="fl" style="width:45px;height:30px;background:#555555;border:solid #3b3b3b 1px;color:#fff;font-size:12px;line-height:30px;text-align:center;margin-left:10px;cursor:pointer;" onclick="day_edit_cancel()">취소</div>
				<div class="fr" style="width:45px;height:30px;background:#ff9320;border:solid #f7870f 1px;color:#fff;font-size:12px;line-height:30px;text-align:center;margin-right:10px;cursor:pointer;" onclick="day_edit_confirm()">저장</div>-->
				<div class="fr" style="width:45px;height:30px;background:#ff9320;border:solid #f7870f 1px;color:#fff;font-size:12px;line-height:30px;text-align:center;margin-right:10px;cursor:pointer;" onclick="day_edit_com()">완료</div>
				<div class="clear"></div>
			</div>
			<div style="width:100%;height:50px;border:solid #374854 1px;font-size:13px;color:#fff;line-height:50px;text-align:center;cursor:pointer;" id="date_pick_btn">
				<span class="start_date">2020-01-31</span>
				<img src="/res/img/workspace/new/pn_cal_edit_btn2.png" style="vertical-align:middle;margin-left:10px;">
				<div id="date_pick" class="hasDatepicker">
					<div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;">
						<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
							<a class="ui-datepicker-prev ui-corner-all" data-handler="prev" data-event="click" title="">
								<span class="ui-icon ui-icon-circle-triangle-w"></span>
							</a>
							<a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="">
								<span class="ui-icon ui-icon-circle-triangle-e"></span>
							</a>
							<div class="ui-datepicker-title">
								<span class="ui-datepicker-month">2월</span>&nbsp;<span class="ui-datepicker-year">2020</span>
							</div>
						</div>
						<table class="ui-datepicker-calendar">
							<thead>
								<tr>
									<th class="ui-datepicker-week-end"><span title="SUN">SUN</span></th>
									<th><span title="MON">MON</span></th><th><span title="TUE">TUE</span></th>
									<th><span title="WED">WED</span></th><th><span title="THU">THU</span></th>
									<th><span title="FRI">FRI</span></th><th class="ui-datepicker-week-end"><span title="SAT">SAT</span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-week-end ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today" data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default ui-state-highlight ui-state-active ui-state-hover" href="#">1</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">2</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">3</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">4</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">5</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">6</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">7</a></td>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">8</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">9</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">10</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">11</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">12</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">13</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">14</a></td>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">15</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">16</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">17</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">18</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">19</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">20</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">21</a></td>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">22</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">23</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">24</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">25</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">26</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">27</a></td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">28</a></td>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="1" data-year="2020">
										<a class="ui-state-default" href="#">29</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div> <!-- datePicker end -->
			
			<ul id="cat_menu_edit_box" class="ui-sortable" style="height: 598px;">
				<li data="1" data-date="01.31" data-day_week="5">
					<div class="cat_edit_move fl"></div>
					<div class="fl cat_date_left_box">
						<div class="cat_left_day">DAY1</div>
						<div class="cat_left_date">01.31</div>
					</div>
					<div class="fl cat_date_right_box">
						<div class="cat_right_weekday">금요일</div>
						<div class="cat_right_city">치앙마이</div>
					</div>
					<div class="fr cat_edit_del" onclick="del_plan_day(1)"></div>
					<div class="clear"></div>
				</li>
				<li data="2" data-date="02.01" data-day_week="6">
					<div class="cat_edit_move fl"></div>
					<div class="fl cat_date_left_box">
						<div class="cat_left_day">DAY2</div>
						<div class="cat_left_date">02.01</div>
					</div>
					<div class="fl cat_date_right_box">
						<div class="cat_right_weekday">토요일</div>
						<div class="cat_right_city">치앙마이</div>
					</div>
					<div class="fr cat_edit_del" onclick="del_plan_day(2)"></div>
					<div class="clear"></div>
				</li>
			</ul>
		</div>
	</div> <!-- 날짜 수정 모달 end -->
	
	
	<!-- 경로 최적화 -->
	<!-- <div id="in_modal_full_frame">
    	<div id="in_modal_opti_a">
        	<div class="in_modal_title_box">
	          	경로 최적화   <img src="/res/img/modal/common/modal_close_btn.gif" class="in_modal_btn_close" alt="" onclick="in_modal_close();">
         	</div>
         	<div class="in_modal_content">
            	<div class="fl in_modal_item_title">첫번째 장소</div>
            	<div class="fl" style="position:relative">
                	<div id="opti_start_point" data-is_open="0"></div>
                  	<div id="opti_start_point_box" class="et_slide" style="display: none;"></div>
                  	<input type="hidden" id="opti_start_id">
              	</div>
              	<div class="clear" style="padding-top:10px;"></div>
	            <div class="fl in_modal_item_title">마지막 장소</div>
	            <div class="fl" style="position:relative">
                	<div id="opti_end_point" data-is_open="0"></div>
                  	<div id="opti_end_point_box" class="et_slide" style="display: none;"></div>
                  	<input type="hidden" id="opti_end_id">
              	</div>
              	<div class="clear" style="padding-top:20px;"></div>
         	</div>
         	<div class="in_modal_footer">
            	<div class="in_modal_ok_btn" onclick="optimize_route_go()">완료   </div>
          	</div>
      	</div>
	
      	<div id="in_modal_opti_b">
        	<div id="opti_route_loading"><img src="/res/img/common/w_ic_loading2.gif"><br>경로를 최적화 중입니다.</div>
          	<div class="in_modal_title_box">경로 최적화
          		<img src="/res/img/modal/common/modal_close_btn.gif" class="in_modal_btn_close" alt="" onclick="in_modal_close();">
         	</div>
         	<div class="in_modal_content" style="background:#f3f3f3;">
           		<div id="opti_before_box" class="fl">
                	<div><img src="" id="opti_before_box_img"></div>
                    <div style="padding:10px;">
                    	<div style="font-size:14px;font-weight:bold;padding-bottom:10px;">최적화 전</div>
                      	<div id="opti_before_info_text"></div>
                    </div>
              	</div>
              	<div class="fl" style="padding:10px;padding-top:150px;"><img src="/res/img/workspace/opti_before_after_arrow.png"></div>
              	<div id="opti_after_box" class="fl">
                	<div><img src="" id="opti_after_box_img"></div>
                    <div style="padding:10px;">
                    	<div style="font-size:14px;font-weight:bold;padding-bottom:10px;">최적화 후</div>
                      	<div id="opti_after_info_text"></div>
                    </div>
              	</div>
              	<div class="clear" style="padding-top:20px;"></div>
       		</div>
         	<div class="in_modal_footer">
            	<div class="in_modal_ok_btn" onclick="optimize_route_req()">완료</div>
         	</div>
		</div>
	</div> -->


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
	
	<!-- @@ 바디 @@ -->
	<div id="full_wrap" style="width: 100%; height: 648px;">
		<div class="fl left_full_box">
			<div class="fl">
				<ul id="pn_title_box" data="304061" data-member_srl="1213145">
					<li data="pn_date">
						<div class="full_date_info fl">02.2~02.3</div>
						<div class="fl day_edit_start_btn" style="padding-left:8px;" onclick="day_edit_start()"><i class="fas fa-cog"></i>&nbsp;EDIT</div>
						<div class="clear"></div>
					</li>
				</ul>
				<ul id="cat_menu" data="87" data-member_srl="1213145" data-year="2020" style="max-height: 478px;">
					<li id="show_all_day" data="show_all_day" original-title="">전체 일정 보기</li>
					<li data="1" data-date="01.31" data-day_week="5" data-f_ci="87" data-f_lat="18.79906428" data-f_lng="98.99514161" class="on" original-title="치앙마이" style="background:#fc3c3c;border-bottom:solid 1px #fc3c3c;">
						<div class="fl cat_date_left_box">
							<div class="cat_left_day">DAY1</div>
							<div class="cat_left_date">01.31</div>
						</div>
						<div class="fl cat_date_right_box">
							<div class="cat_right_weekday">금요일</div>
							<div class="cat_right_city">치앙마이</div>
						</div>
						<div class="clear"></div>
					</li>
					<li data="2" data-date="02.01" data-day_week="6" data-f_ci="87" data-f_lat="18.79906428" data-f_lng="98.99514161" original-title="치앙마이">
						<div class="fl cat_date_left_box">
							<div class="cat_left_day">DAY2</div>
							<div class="cat_left_date">02.01</div>
						</div>
						<div class="fl cat_date_right_box">
							<div class="cat_right_weekday">토요일</div>
							<div class="cat_right_city">치앙마이</div>
						</div>
						<div class="clear"></div>
					</li>
				</ul>
				<ul id="cat_add_box" style="width: 160px; background: rgb(32, 51, 65); color: rgb(255, 255, 255); height: 100vh;">
					<li style="padding-top:15px;">
						<div style="width:124px;height:32px;line-height:32px;border:solid 1px #fff;text-align:center;margin:0 auto;cursor:pointer;" onclick="add_plan_day()"> DAY 추가</div>
					</li>
				</ul>
				<!-- <ul id="pn_date_controll_box" style="height:100vh;" data="" data-member_srl="1213145">
					<li data="con_date">		
						<div style="text-align:center;border-top:solid #fff 1px;margin-top:10px;padding-top:15px;width:100%;">
							<div style="margin:0 auto;text-align:center;font-size:15px;" onclick="$('#guide_overlay').show();">
								<i class="far fa-bookmark"></i>&nbsp;이용방법</div>
						</div>
					</li>
				</ul> -->
			</div>
		    <div class="fl" id="schedule_full_box" style="width:265px" data="0">
	        	<div class="title_box" style="background: #393E46;">
	          		<div id="schedule_detail_title" data-date="01-31" style="display: block;">
                  		<div class="fl schedule_detail_title_text" style="width:245px;padding-left:10px;font-size:15px;">
                  			<div class="fl">DAY1 <span style="color:white">|</span> 01.31(금요일) </div>
                  			<%-- <div class="fl day_reset_btn" style="background:url('<%=request.getContextPath()%>/Plan/images/_day_reset_icon.png') no-repeat;" onclick="del_plan_inspot_day_all()"></div> --%>
                  			<span>&nbsp;<i class="fas fa-redo-alt"></i></span>
                  			<div class="fr day_next_btn" style="background:url('${pageContext.request.contextPath}/resources/images/plan/_next_icon.png') no-repeat 6px 6px;" onclick="plan_day_next()"></div>
                  			<div class="fr day_prev_btn" style="background:url('${pageContext.request.contextPath}/resources/images/plan/_prev_icon.png') no-repeat 6px 6px;" onclick="plan_day_prev()"></div>
                  			<div class="clear"></div>
                  		</div>
		                <div class="clear"></div>
		          	</div>
	        	</div>
		
				<!-- <div id="day_controll_btn_box">
				    <div id="day_reset_btn" class="fl" onclick="del_plan_inspot_day_all()">일정초기화</div>
			   		<div id="day_optimize_btn" class="fl" onclick="optimize_route()">경로최적화</div>
				    <div class="clear"></div>
				</div> -->
		
		        <!--//(s)스케쥴 디테일 리스트-->
		        <!-- @@@수정 호버 시 아이콘 나오게@@@ -->
		        <div id="schedule_detail_box" class="connectedSortable ui-sortable" style="height: 548px; display: block;">
		        	<div class="day_spot_item" data="1" data-set_day="1" data-rel_srl="4740" data-pl_type="0" data-no="0" data-pl_cat="301" data-latlng="18.80455200,98.92134900" data-ci="87">
		        		<div class="item_ctrl_box">
		        			<div class="fl item_copy_plan" title="장소복사"><img src="${pageContext.request.contextPath}/resources/images/plan/item_more_icon_a.png"></div>
		        			<div class="fl item_set_plan" title="메모&amp;예산"><img src="${pageContext.request.contextPath}/resources/images/plan/item_set_icon_a.png"></div>
		        			<div class="fl btn_del" title="삭제"><img src="${pageContext.request.contextPath}/resources/images/plan/item_del_icon_a.png"></div>
		        			<div class="clear"></div>
		        		</div>
		        		<div class="img_box fl">
		        			<div class="spot_order_box">1</div>
		        			<img src="http://img.earthtory.com/img/place_img/87/4740_0_et.jpg">
		        			<div style="position:absolute;top:35px;left:40px;width:22px;height:20px;">
		        				<img src="${pageContext.request.contextPath}/resources/images/plan/list_memo_btn_off.png" class="memo_indi" style="width:22px;height:20px;">
		        				<!-- <i class="fas fa-pencil-alt"></i> -->
		        			</div>
		        		</div>
		        		<div class="fl info_box">
		        			<div class="title">왓 프라탓 도이 쑤텝</div>
		        			<div class="sub">랜드마크, 절/신사/사원</div>
		        			<div class="sub inspot_day_info_box" style="color:#1a7ad9"></div>
		        		</div>
		        		<div class="clear"></div>
		        	</div>
		        	<div class="day_spot_item" data="2" data-set_day="1" data-rel_srl="117" data-pl_type="0" data-no="1" data-pl_cat="301" data-latlng="13.74998400,100.49200400" data-ci="86">
		        		<div class="item_ctrl_box" style="display: none;">
		        			<div class="fl item_copy_plan" title="장소복사"><img src="/res/img/workspace/new/item_more_icon_a.png"></div>
		        			<div class="fl item_set_plan" title="메모&amp;예산"><img src="/res/img/workspace/new/item_set_icon_a.png"></div>
		        			<div class="fl btn_del" title="삭제"><img src="/res/img/workspace/new/item_del_icon_a.png"></div>
		        			<div class="clear"></div>
		        		</div>
		        		<div class="spot_distance_box" onclick="et_modal('620px','700px','1','0','/ko/modal/directions?from_latlng=13.70485500,100.50295300&amp;from_name=아시아티크&amp;to_latlng=13.74998400,100.49200400&amp;to_name=왕궁','2','1')">5.15Km 추천경로</div>
						<div class="img_box fl">
							<div class="spot_order_box">2</div>
							<img src="http://img.earthtory.com/img/place_img/86/117_0_et.jpg">
							<div style="position:absolute;top:35px;left:40px;width:22px;height:20px;">
								<img src="${pageContext.request.contextPath}/resources/images/plan/list_memo_btn_off.png" class="memo_indi" style="width:22px;height:20px;">
							</div>
						</div>
						<div class="fl info_box">
							<div class="title">왕궁</div>
							<div class="sub">랜드마크, 성/궁궐</div>
							<div class="sub inspot_day_info_box" style="color:#1a7ad9"></div>
						</div>
						<div class="clear"></div>
		        	</div>
		        </div>
		        <!--//(e)스케쥴 디테일 리스트-->
				<div class="inspot_add_box" style="height:100vh;">
					<div class="inspot_set_box">
						<div class="fl add_inspot_spot_btn" onclick="my_spot_inspot()">+ My 장소</div>
						<div class="fl add_inspot_trans_btn" onclick="my_transportation_inspot()" style="background: #ffba00; border: solid #ffba00 1px;">+ 교통</div>
						<div class="clear"></div>
					</div>
				</div>
	    	</div>
			
			<div class="clear"></div>
		</div>
	
		<div id="right_full_box" class="fl" style="position: absolute; left: 425px; top: 66px; width: 1111px;">
			<div id="on_city_open_btn" style="background:url('${pageContext.request.contextPath}/resources/images/plan/city_open_btn.png');"></div>
           	
           	<!-- 스팟 리스트 box-->
           	<div id="city_list" data="87" style="display: block; bottom:2px;">
            	<div class="list_title" style="background: #fc3c3c;"><span>치앙마이</span>
            		<div class="list_title_option_menu" data-is_open="off">&nbsp;도시 변경<i class="fas fa-caret-down"></i></div>
            	</div>
                <div id="on_city_close_btn" style="background:url('${pageContext.request.contextPath}/resources/images/plan/city_close_btn.png');"></div>
                <div class="clear"></div>
                <div class="city_change_box">
                	<!-- <div class="city_text_search_box"><input type="text" class="city_text_search_input" id="city_search_key"></div>
				  	<div class="city_search" style="display: none;"></div> -->
				  	<!-- 도시 변경  -->
                  	<div class="city_items" data="87" style="height:100%;">
                  		<!-- @@ 넘어오는 값 받아서 수정 @@ -->
                  		<div class="city_item" data="87" data-ci_name="치앙마이" data-lat="18.79906428" data-lng="98.99514161" data-ss_id="undefined">
                  			<div class="fl ci_img"><img src="http://img.earthtory.com/img/city_images/87/chiang-mai_1425528980.jpg"></div>
                  			<div class="fl">치앙마이,&nbsp;<span>태국</span></div>
                  			<div class="clear"></div>
                  		</div>
                  		<div class="clear"></div>
                  		<div style="width:100%;height:0px;border-bottom:solid 1px #cacaca;"></div>
                  		<div class="city_item_title">태국 내 다른 도시</div>
                  		<c:forEach items="${allCity}" var="city">
                  			<c:if test="${city.city_Code ne 'CT2'}"> <!-- 임시@@ 조건 수정해야 함 -->
		                  		<div class="clear"></div>
		                  		<div class="city_item" data="${city.city_Code}" data-ci_name="${city.city_Name}" data-lat="${city.city_Lati}" data-lng="${city.city_Long}" data-ss_id="null">
			                  		<div class="fl ci_img"><img src="${pageContext.request.contextPath}/resources/images/plan/city/${city.city_Img}"></div>
			                  		<div class="fl">${city.city_Name},&nbsp;<span>태국</span></div>
			                  		<div class="clear"></div>
		                  		</div>
                  			</c:if>
                  		</c:forEach>
                  	</div> 
                  	<!-- 도시 변경 end -->
	            </div>
                <div class="list_search_full_box">
                	<div class="list_search_box">
						<input type="text" id="input_search" placeholder="장소 검색">
						<div style="margin-left:20px;margin-top:5px;">
							<span type="radio" class="radio on" data-val="city" data-on="on" data-name="search_type" style="color:#808080">
							<span class="et-radio">&nbsp;<!-- 수정@@ --><i class="far fa-check-circle"></i></span>
							<span class="et-radio_txt">도시내 검색&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
							<span type="radio" class="radio" data-val="total" data-name="search_type" style="color:#808080" data-on="off">
							<span class="et-radio">&nbsp;<!-- 수정@@ --><i class="far fa-circle"></i></span><span class="et-radio_txt">전체검색</span></span>
							<input type="hidden" name="search_type" id="search_type" class="news" value="city">
						</div>
					</div>
                    <div class="list_category_box" style="border-bottom: solid #dadada 1px;">
                    	<div class="list_cat_item fl on" data="3"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_300_c.png"></div>
                        <div class="list_cat_item fl" data="2"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_200_a.png"></div>
                        <div class="list_cat_item fl" data="4"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_400_a.png"></div>
						<div class="list_cat_item fl" data="1"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_100_a.png"></div>
						<div class="list_cat_item fl" data="5"><img src="${pageContext.request.contextPath}/resources/images/plan/ic_000_a.png"></div>
                        <div class="clear"></div>             
                    </div>
               	</div>
                <div class="list_box_overlay"></div>
                <div class="list_box connectedSortable" style="height: 441px;">
                	<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="4740" data-pl_type="0" data-no="0" data-pl_cat="301" data-ci="87">
                		<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/4740_0_et.jpg"></div>
                		<div class="fl info_box">
                			<div class="title">왓 프라탓 도이 쑤텝</div>
                			<div class="sub">랜드마크, 절/신사/사원</div>
                			<div class="sub">
                				<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>252</div>
                				<div class="clear"></div>
                			</div>
                			<div class="sub include_pn_day" style="color:#fc3c3c">DAY1</div>
                		</div>
                		<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
                		<div class="clear"></div>
                	</div>
                	<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="4741" data-pl_type="0" data-no="1" data-pl_cat="400" data-ci="87">
                		<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/4741_0_et.jpg"></div>
                		<div class="fl info_box">
                			<div class="title">나이트 바자</div>
                			<div class="sub">시장/쇼핑거리, 나이트스팟</div>
                			<div class="sub">
                				<div class="tooltip_clip_cnt fl"style="padding-left:0px;"><i class="fas fa-paperclip"></i>244</div>
      							<div class="tooltip_cnt_line fl"></div>
      							<div class="tooltip_review_rate fl" style="padding-left:0px;"><i class="far fa-thumbs-up"></i>10.0</div>
      							<div class="clear"></div>
      						</div>
      						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
      					</div>
      					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
      					<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="451" data-pl_type="0" data-no="2" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/451_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 프라씽</div>
							<div class="sub">랜드마크, 절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>223</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="452" data-pl_type="0" data-no="3" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/452_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 쩨디 루앙</div>
							<div class="sub">랜드마크, 절/신사/사원</div>
							<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>198</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="450" data-pl_type="0" data-no="4" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/450_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 치앙만</div>
							<div class="sub">절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>191</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="4737" data-pl_type="0" data-no="5" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/4737_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">빠뚜타패</div>
							<div class="sub">랜드마크</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>170</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="954" data-pl_type="0" data-no="6" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/954_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">위앙 꿈깜</div>
							<div class="sub">유적/역사적인 장소</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>166</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="4573" data-pl_type="0" data-no="7" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/4573_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">치앙마이 국제공항</div>
							<div class="sub">공항</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>164</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="454" data-pl_type="0" data-no="8" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/454_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 쑤언독</div>
							<div class="sub">절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>160</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="975" data-pl_type="0" data-no="9" data-pl_cat="200" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/975_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">굿 뷰</div>
							<div class="sub">태국식, 나이트스팟</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>130</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="4738" data-pl_type="0" data-no="10" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/4738_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 쩻욧</div>
							<div class="sub">랜드마크, 절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>129</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="453" data-pl_type="0" data-no="11" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/453_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 판따오</div>
							<div class="sub">절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>126</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="977" data-pl_type="0" data-no="12" data-pl_cat="303" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/977_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">멍키 클럽</div>
							<div class="sub">클럽</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>122</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="8659" data-pl_type="0" data-no="13" data-pl_cat="302" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/8659_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">파타라 코끼리 농장</div>
							<div class="sub">체험/액티비티</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>116</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="455" data-pl_type="0" data-no="14" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/455_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 우몽</div>
							<div class="sub">절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>110</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="972" data-pl_type="0" data-no="15" data-pl_cat="302" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/972_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">아티스트 스파</div>
							<div class="sub">웰니스/스파</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>109</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="971" data-pl_type="0" data-no="16" data-pl_cat="302" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/971_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">아시아 허브 어소시에이션</div>
							<div class="sub">웰니스/스파</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>104</div>
								<div class="clear"></div>
							</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="4739" data-pl_type="0" data-no="17" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/4739_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">치앙마이 국립박물관</div>
							<div class="sub">박물관</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>100</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="974" data-pl_type="0" data-no="18" data-pl_cat="303" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/974_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">리버사이드 바 &amp; 레스토랑</div>
							<div class="sub">클럽</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>97</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="976" data-pl_type="0" data-no="19" data-pl_cat="303" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/976_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">웜업 카페</div>
							<div class="sub">클럽</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>90</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="973" data-pl_type="0" data-no="20" data-pl_cat="302" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/973_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">라린찐다 웰니스 스파</div>
							<div class="sub">웰니스/스파</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>79</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="951" data-pl_type="0" data-no="21" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/951_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">산악 민족 박물관</div>
							<div class="sub">박물관</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>65</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18320" data-pl_type="0" data-no="22" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18320_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">도이 수텝 국립공원</div>
							<div class="sub">공원/정원, 산/숲</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>56</div>
								<div class="clear"></div>
							</div>
							<div class="sub include_pn_day" style="color:#1a7ad9"></div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18329" data-pl_type="0" data-no="23" data-pl_cat="301" data-ci="87">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18329_0_et.jpg"></div>
						<div class="fl info_box">
							<div class="title">왓 쎈팡</div>
							<div class="sub">절/신사/사원</div>
							<div class="sub">
								<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>46</div>
								<div class="clear"></div>
							</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18325" data-pl_type="0" data-no="24" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18325_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">왓 켓 크람</div>
						<div class="sub">절/신사/사원</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>43</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18315" data-pl_type="0" data-no="25" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18315_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">왓 록 몰리</div>
						<div class="sub">절/신사/사원</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>39</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18327" data-pl_type="0" data-no="26" data-pl_cat="302" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18327_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">치앙마이 동물원</div>
						<div class="sub">테마파크</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>35</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="21277" data-pl_type="0" data-no="27" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/21277_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">치앙마이 기차역</div>
						<div class="sub">역/터미널</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>23</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18328" data-pl_type="0" data-no="28" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18328_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">왓 쩨따완</div>
						<div class="sub">절/신사/사원</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>23</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18317" data-pl_type="0" data-no="29" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18317_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">왓 스리 수판</div>
						<div class="sub">절/신사/사원</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>21</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18319" data-pl_type="0" data-no="30" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18319_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">매사 폭포</div>
						<div class="sub">산/숲, 자연절경</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>19</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18342" data-pl_type="0" data-no="31" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18342_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">왓 람 포엥</div>
						<div class="sub">절/신사/사원</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>17</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div><div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18345" data-pl_type="0" data-no="32" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18345_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">3왕 동상</div>
						<div class="sub">기념비/동상</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>17</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18344" data-pl_type="0" data-no="33" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18344_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">왓 오우 사이 캄</div>
						<div class="sub">절/신사/사원</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>16</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18318" data-pl_type="0" data-no="34" data-pl_cat="302" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18318_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">매사 코끼리 캠프</div>
						<div class="sub">테마파크</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>9</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18348" data-pl_type="0" data-no="35" data-pl_cat="302" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18348_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">치앙마이 동물원 수족관</div>
						<div class="sub">아쿠아리움</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>9</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18358" data-pl_type="0" data-no="36" data-pl_cat="303" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18358_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">보이 블루스 바</div>
						<div class="sub">바</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>8</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18503" data-pl_type="0" data-no="37" data-pl_cat="303" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18503_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">레드 라이온</div>
						<div class="sub">태국식, 펍/선술집</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>6</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18346" data-pl_type="0" data-no="38" data-pl_cat="301" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18346_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">란나 건축센터</div>
						<div class="sub">박물관</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>6</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18359" data-pl_type="0" data-no="39" data-pl_cat="303" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18359_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">플레이서 뮤직 바</div>
						<div class="sub">바</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>5</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18492" data-pl_type="0" data-no="40" data-pl_cat="303" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18492_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">유앤 아이리쉬 펍</div>
						<div class="sub">펍/선술집</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>4</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
				<div class="day_spot_item ui-draggable" data="0" data-set_day="0" data-rel_srl="18362" data-pl_type="0" data-no="41" data-pl_cat="303" data-ci="87">
					<div class="img_box fl"><img src="http://img.earthtory.com/img/place_img/87/18362_0_et.jpg"></div>
					<div class="fl info_box">
						<div class="title">로스트 헛</div>
						<div class="sub">클럽</div>
						<div class="sub">
							<div class="tooltip_clip_cnt fl" style="padding-left:0px;"><i class="fas fa-paperclip"></i>4</div>
							<div class="clear"></div>
						</div>
						<div class="sub include_pn_day" style="color:#1a7ad9"></div>
					</div>
					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
					<div class="clear"></div>
				</div>
			</div>
	    </div><!-- 스팟 리스트 end -->
		
			<!-- @@수정@@@ 맵에서 스팟 선택시 보여지는 상세 박스@@ -->
			<!-- <div class=" _ibani_256" style="position: absolute; z-index: 100; top: -158.095px; left: -243.2px;">
				<div style="position: relative; padding-right: 1px; padding-left: 1px; top: 1px; width: 0px;"></div>
				<button class="iinfo_close" style="right: 3px; top: 3px;">close</button>
				<div style="overflow: hidden; cursor: default; clear: both; position: relative; padding: 0px; background: rgb(255, 255, 255); border-radius: 0px; border-width: 1px; border-color: rgb(221, 221, 221); border-style: solid; width: 345px; height: 155px;">
				<div><div class="tooltip_full_box">
					<div class="tooltip_img fl"><img src="http://img.earthtory.com/img/place_img/86/419_0_et.jpg"></div>
					<div class="tooltip_info fl">
						<div class="tooltip_title">리키 커피숍</div>
						<div class="tooltip_tag">서양식/미국식, 카페/디저트...</div>
						<div class="tooltip_cnt_info_box">
							<div class="tooltip_clip_cnt fl">94</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="tooltip_detail_bottom_box">
						<div class="fl tooltip_detail_btn" onclick="detail_view_spot('419', '200','87','0','n','0','0','0')">자세히 보기</div>
						<div class="fr tooltip_add_inspot_btn" onclick="marker_to_inspot(419,86,0)">+ 일정에 추가</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div></div>
				</div>
				<div style="position: relative; margin-top: -1px;">
				<div style="position: absolute; left: 50%; height: 0px; width: 0px; margin-left: -10px; border-width: 10px 10px 0px; border-color: rgb(221, 221, 221) transparent transparent; border-style: solid;"></div>
				<div style="position: absolute; left: 50%; height: 0px; width: 0px; border-color: rgb(255, 255, 255) transparent transparent; border-top-width: 9px; border-left-width: 9px; border-right-width: 9px; margin-left: -9px; border-style: solid;"></div>
				</div>
			</div> -->
			
			
			<!-- map -->
			<div id="map" class="fr" style="height: 657px; position: relative; width: 1111px; overflow: hidden; bottom:2px;"></div>
			
			
           	<!-- @@@수정@@@스팟 상세정보@@@@@ -->
           	<!-- <div id="select_detail_view_spot" data="4740" data-no="0" data-cat="301" data-only_clip="0" data-clip_yn="n" class="visible" style="left: 0px; display: block;">
           		<div class="detail_view_full_box">
           			<div id="detail_spot_to_inspot" data-ci="87" data-rel_srl="4740" data-pl_type="0" style="background: #ffba00;border: solid 1px #ffba00">+일정에 추가</div>
           			<div id="detail_close_btn"></div>
           			<a class="spot_title" href="/ko/city/chiang-mai_87/attraction/wat-phra-that-doi-suthep_4740" target="_blank">왓 프라탓 도이 쑤텝...</a>
           			<div class="spot_img">
           				<div class="detail_img_overlay"></div>
           				<img src="http://img.earthtory.com/img/place_img/87/4740_0_et.jpg">
           				<div class="spot_cnt_box"></div>
           			</div>
           			<div id="detail_content" style="height: 416px;">
           				<div class="info_first">
           					<div class="in_full_box">
           						<div class="info_memo" style="display: none;">
           							<div style="font-size:15px;color:#363636;font-weight:bold;text-align:left;padding-bottom:10px;padding-left:8px;">예산</div>
           							<div style="padding-left:10px;padding-bottom:15px;">
           							<div id="budget_currency_select_list">
           								<div data="KRW">KRW</div>
           								<div data="JPY">JPY</div>
           							</div>
           							<div id="budget_currency" data="KRW" class="fl">KRW</div>
           							<div class="fl"><input type="text" class="budget_input" placeholder="0" onkeyup="return isNumberKey(event)"></div>
           							<div class="clear"></div>
           							</div>
           							<div style="font-size:15px;color:#363636;font-weight:bold;text-align:left;padding-bottom:10px;padding-left:8px;">메모</div>
           							<textarea id="memo_input" data-type="" data-set_day="0" data-set_order="0" data-pl_type="0"></textarea>
           							<div id="memo_save">저장</div>
           						</div>
           					</div>
           					<div class="in_full_box">
           					<div style="line-height:22px;font-size:11px;color:#808080;padding-bottom:20px;font-size:13px;">
           						<img src="/res/img/workspace/new/tip_desc_icon.png" style="vertical-align:top;"> 해발 1,056m의 산 꼭대기에 자리잡은 왓 프라탓 도이수텝은 '부처의 사리를 모신 사원' 이라는 의미를 가진 사원이다. 사원에 오르기 위해서는 용 두 마리가 지키는 306개의 계단을 올라가거나, 계단 매표소에서 추가요금을 내고 엘리베이터를 타고 올라갈 수 있다. 사원에 올라서면 온통 금빛으로 도색된 높이 20m의 거대한 사리탑과 사원 내 곳곳의 황금불상들은 극락의 화려함 그 자체이다. </div>
           						<div class="information">
           							<div style="width:100%;padding:15px;border:solid #d4d4d4 1px;">
           								<div style="color:#808080;font-size:13px;padding-left:20px;background:url('/res/img/workspace/new/addr_desc_icon.png') no-repeat 2px 2px;line-height:16px;padding-bottom:10px;">Sriwichai Alley, Su Thep, Mueang Chiang Mai District, Chiang Mai 50200, Thailand</div>
           								<div class="sub_title fl">카테고리</div>
           								<div class="sub_info fl">랜드마크, 절/신사/사원</div>
           								<div class="clear"></div>
           								<div class="sub_title fl">전화번호</div>
           								<div class="sub_info fl">66 53 210 244</div>
           								<div class="clear"></div>
           								<div id="fq_attr_box"></div>
           								<div id="fq_open_box"></div>
           								<div class="clear"></div>
           							</div>
           							<div class="sub_desc"></div>
           						</div>
           						<div class="clear"></div>
           					</div>
           				</div>
           				<div class="info_second">
           					<div class="info_section_line"></div>
           				</div>
           			</div>
           			<div class="clear"></div>
           		</div>
           		<div class="detail_view_bottom"></div>
           	</div> -->
	        
		</div><!-- right_full_box end@@@@ -->
	
</div>

</body>
</html>
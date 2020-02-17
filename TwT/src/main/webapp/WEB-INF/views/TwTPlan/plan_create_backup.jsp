<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	
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
	
	<!-- css -->
	<link rel="shortcut icon" href="/res/earthtory.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/default_ko.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/default.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/gnb.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/date_picker.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/plan_create_css.css">
	
	<script async="" src="//www.google-analytics.com/analytics.js"></script>
	<script>
		var et_lang = 'ko';
	</script>
	
	<script type="text/javascript">
		lang = {};
		function lang_uri(){
			return '/ko';
		}
	</script>
	<!-- <script type="text/javascript" src="/jslang?lang=ko&amp;lang_file=commonjs"></script> -->
    <link rel="image_src" href="https://www.earthtory.com/res/img/earthtory_logo_to_sns.png">

    <link rel="canonical" href="https://www.earthtory.com/ko/plan/create">
      	
	<link rel="home" href="www.earthtory.com">

	<link rel="alternate" href="https://www.earthtory.com/plan/create" hreflang="x-default" title="English">
	<link rel="alternate" href="https://www.earthtory.com/ja/plan/create" hreflang="ja-jp" title="日本語">
	<link rel="alternate" href="https://www.earthtory.com/ko/plan/create" hreflang="ko-kr" title="한국어">

	<meta name="google-site-verification" content="MwgpAlNbsXRZEln-QQP8Jra-Aj8cTKcCtDd3L_StvTc">
	<meta name="naver-site-verification" content="48a2af847268bfd79153f73690ad01b35cb1593a">
	<!-- <script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/common.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/util.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/marker.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/map.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/onion.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/overlay.js"></script>
	<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/39/9/intl/ko_ALL/controls.js"></script> -->
	
<style type="text/css">
.labels{
  color:white;
  background-color:red;
  font-size:20px;
  text-align:center;width:80px;height:80px;line-height:80px;border-radius:100%;white-space:nowrap;
}
</style>

<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=geometry,places&ext=.js"></script>
<script src="https://cdn.rawgit.com/googlemaps/v3-utility-library/master/markerwithlabel/src/markerwithlabel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plan/MarkerWithLabel.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
// 전역 변수 선언
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
			document.getElementById('map'), {zoom: 6, center: bangkok}); //기본 줌,시작 센터 설정
		
       	// DB 불러와서 위치 위도/경도, 도시코드 담기
       	for(var i=0;i<4;i++){
			locations[i] = {"position" : new google.maps.LatLng($("#city_"+i).attr("data-lat"), $("#city_"+i).attr("data-lng"))};
			citycodes[i] = $("#city_"+i).attr("data-no");
       	}
       	
		// 마커 아이콘 생성
		myIcon = new google.maps.MarkerImage("${pageContext.request.contextPath}/resources/images/marker.png",null,null,null,new google.maps.Size(50,45));
		
		// 마커 정보(도시명)담기
		for(var i=0;i<locations.length;i++){
			content[i] = $("#city_"+i).attr("data-ci_name");
		}
		
		// 도시 마커찍기
		for (var i=0;i<locations.length;i++) {
        	marker = new google.maps.Marker({
            	position: locations[i].position,
            	map: map,
            	icon: myIcon,
            	title: content[i]
       		});
        	
        	//생성된 마커를 마커배열에 추가
        	markers.push(marker);
		}
		
		// 마커와 함께 라벨찍기 (안됨)
		/* for(var i=0;i<locations.length;i++){
			marker = new MarkerWithLabel({
				position: locations[i].position,
				map: map,
				icon: myIcon,
				title: content[i],
				labelContent: content[i],
			    labelAnchor: new google.maps.Point(-11, 30),
			    labelClass: "labels", // the CSS class for the label
			    labelStyle: {opacity: 0.75}
			});
			
			markers.push(marker);
		} */
        
		console.log(markers);

		// 마커 클릭 이벤트 실행 / select detail box 띄우기  
    	google.maps.event.addListener(markers[0], 'click', function() {
			if (markers[0].getAnimation() != null) {
			    markers[0].setAnimation(null);
				$('#select_detail_view_city').hide();
		  	} else {
			    markers[0].setAnimation(google.maps.Animation.BOUNCE);
			    markers[1].setAnimation(null);
			    markers[2].setAnimation(null);
			    markers[3].setAnimation(null);
				$('#select_detail_view_city').show(); //show("slide", {direction:"left"}, 200);
				$(".cityname").html(content[0]);
				$("input[name=citycode]").val(citycodes[0]);
		  	}
   		});
    	google.maps.event.addListener(markers[1], 'click', function() {
			if (markers[1].getAnimation() != null) {
			    markers[1].setAnimation(null);
				$('#select_detail_view_city').hide();
		  	} else {
			    markers[1].setAnimation(google.maps.Animation.BOUNCE);
			    markers[0].setAnimation(null);
			    markers[2].setAnimation(null);
			    markers[3].setAnimation(null);
				$('#select_detail_view_city').show();
				$(".cityname").html(content[1]);
				$("input[name=citycode]").val(citycodes[1]);
		  	}
   		});
    	google.maps.event.addListener(markers[2], 'click', function() {
			if (markers[2].getAnimation() != null) {
			    markers[2].setAnimation(null);
				$('#select_detail_view_city').hide();
		  	} else {
			    markers[2].setAnimation(google.maps.Animation.BOUNCE);
			    markers[0].setAnimation(null);
			    markers[1].setAnimation(null);
			    markers[3].setAnimation(null);
				$('#select_detail_view_city').show();
				$(".cityname").html(content[2]);
				$("input[name=citycode]").val(citycodes[2]);
		  	}
   		});
    	google.maps.event.addListener(markers[3], 'click', function() {
			if (markers[3].getAnimation() != null) {
			    markers[3].setAnimation(null);
				$('#select_detail_view_city').hide();
		  	} else {
			    markers[3].setAnimation(google.maps.Animation.BOUNCE);
			    markers[0].setAnimation(null);
			    markers[1].setAnimation(null);
			    markers[2].setAnimation(null);
				$('#select_detail_view_city').show();
				$(".cityname").html(content[3]);
				$("input[name=citycode]").val(citycodes[3]);
		  	}
   		});
    	
	} /* init end */
	
	$(document).ready(function(){
		$(".fa-times-circle").click(function(){ // x표시 누르면 select detail box 사라짐, bounce 이벤트 삭제
			$('#select_detail_view_city').hide();
			for(var i=0;i<locations.length;i++){
				markers[i].setAnimation(null);
			}
		});
	});
	
	google.maps.event.addDomListener(window, 'load', initialize);

</script>
<!-- 구글맵 API KEY -->
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiDE5HBue4mflsdkcsGvSZrUeEooX8gWQ&callback=initMap&language=ko&region=KR">
</script>
</head>
<body style="">

	<!-- @@@@@@@헤더@@@@@@@@  -->
	<div id="header">
		<div class="wrap" style="width:100%;padding:0px 10px;">
			<h1 class="logo fl" alt="로고@@">
				<a href="${pageContext.request.contextPath}/index.jsp"><span style="color:#C2BAFF"><i class="fas fa-plane-departure fa-3x"></i></span></a>
			</h1>
			<div class="fl" id="gnb_plan_create_title">1.도시선택&nbsp;&nbsp;→&nbsp;&nbsp;2.상세 일정 만들기</div>
			<div class="fl" id="gnb_ci_name"></div>
			<div class="fr gnb_box">
				<div class="fl gnb_search_box"></div>
				<a href="${pageContext.request.contextPath}/index.jsp"><div class="fr gnb_plan_create_close_btn" style="background: #ffba00;border: solid 1px #ffba00;">닫기</div></a>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="recent_action ra_absolute"></div>

	<!-- @@@바디@@@ -->
	<div id="full_wrap" style="width: 100%; height: 658px;">
		<div class="fl left_full_box">
			<ul class="fl" id="cat_menu" data="" data-member_srl="1213145">
				<li data="as" data-val="아시아" class="on">
					<span style="position:relative; top:8px;"><i class="fas fa-globe-asia fa-3x"></i><br>아시아</span>
				</li>
			</ul>
			
		    <div class="fl" id="schedule_full_box" style="width:265px" data="0">
		        <div class="title_box">
		          	<div id="country_list_title" style="display: none;">
		          		<div class="fl ct_title">아시아</div>
		                <div class="clear"></div>
		          	</div>
		          	<div id="city_list_title" style="display: block;">
		                <div class="back_btn fl"></div>
		                <div class="fl cu_title" style="width:230px;padding-left:10px;font-size:15px;">태국</div>
		                <div class="clear"></div>
		          	</div>
		        </div>
				<!-- <div id="search_box" style="width:100%;height:51px;border-bottom:solid #d6d6d6 1px;"></div> -->
				
				<!-- 지역 선택 -->
		        <div id="city_list_box" style="height: 100vh;">
		        	<c:forEach items="${res}" var="city" varStatus="status">
        			<div class="item" id="city_${status.index}" data-no="${city.city_Code}" data="86" data-ci_name="${city.city_Name}" data-lat="${city.city_Lati}" data-lng="${city.city_Long}">
        				<div class="img_box fl"><img src="${pageContext.request.contextPath}/resources/images/plan/city/${city.city_Img}"></div>
        				<div class="info_box fl">
        					<div class="info_title">${city.city_Name}</div>
        					<div class="info_sub_title">${city.city_Eng}</div>
       					</div>
       					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
       					<div class="clear"></div>
   					</div>
   					</c:forEach>
				</div>
		    </div>
			<div class="clear"></div>
		</div>
	
		<div id="right_full_box" class="fl" style="position:absolute;left:336px;top:62px;">
	        <!-- <div id="clip_list" data="0">
               	<div class="list_title"><span></span> 클립보드<div class="list_title_option_menu" data-is_open="off">도시 변경</div></div>
                <div id="detail_close_btn"></div>
                <div class="clear"></div>
                <div class="clipboard_change_box"></div>
                
                <div class="list_box_overlay"></div>
                
                <div class="list_box"></div>
           	</div> -->
           	
           	<!-- 지도 설정 @@ -->
			<div id="map" class="fl" style="height: 659px; position: relative; width: 1200px; overflow: hidden; left:0px"></div>
			
			  
			  <!-- 일정 정보 설정 -->
              <div id="select_detail_view_city" data="0">
				  <div class="city_title">
					<div class="ci_title_name fl">여행도시</div>
					<div class="pn_date_box fr" id="date_pick_btn" data="0">
						<div class="pn_date_info fl">출발일</div>
						<div class="pn_date_icon fr"><i class="fas fa-calendar-alt"></i></div>
						<div class="clear"></div>
						<div id="date_pick" class="hasDatepicker">
							<div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;">
								<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
									<a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="">
										<span class="ui-icon ui-icon-circle-triangle-e"></span>
									</a>
									<div class="ui-datepicker-title">
										<span class="ui-datepicker-month">1월</span>&nbsp;<span class="ui-datepicker-year">2020</span>
									</div>
								</div>
								<table class="ui-datepicker-calendar">
									<thead>
										<tr>
											<th class="ui-datepicker-week-end"><span title="SUN">SUN</span></th>
											<th><span title="MON">MON</span></th>
											<th><span title="TUE">TUE</span></th>
											<th><span title="WED">WED</span></th>
											<th><span title="THU">THU</span></th>
											<th><span title="FRI">FRI</span></th>
											<th class="ui-datepicker-week-end"><span title="SAT">SAT</span></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">1</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">2</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">3</span></td>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">4</span></td>
										</tr>
										<tr>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">5</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">6</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">7</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">8</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">9</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">10</span></td>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">11</span></td>
										</tr>
										<tr>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">12</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">13</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">14</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">15</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">16</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">17</span></td>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">18</span></td>
										</tr>
										<tr>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">19</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">20</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">21</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">22</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">23</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">24</span></td>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">25</span></td>
										</tr>
										<tr>
											<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">26</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">27</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">28</span></td>
											<td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">29</span></td>
											<td class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today" data-handler="selectDay" data-event="click" data-month="0" data-year="2020">
												<a class="ui-state-default ui-state-highlight ui-state-active ui-state-hover" href="#">30</a>
											</td>
											<td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020">
												<a class="ui-state-default" href="#">31</a>
											</td>
											<td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div><!--datepick end -->
						<form>
							<input type="hidden" id="schedule_date" name="schedule_date" value=""/> <!-- 날짜  -->
							<input type="hidden" id="city_no" name="citycode" value=""/> <!-- 도시코드 -->
							<input type="hidden" id="title" name="title" value=""/> <!-- 제목 -->
						</form>
					</div>
					<div class="clear"></div>
				</div>
				<!-- 선택된 지역 정보 표시 -->
			  	<div id="selected_cities" data="0" style="max-height: 458px;">
			  		<div class="s_cities" data-ci="86" data-day="2" data-lat="13.75222220" data-lng="100.49388890">
			  			<div class="city_info">
			  				<div class="del_city_btn fl" style="margin:0px 10px;">
			  					<i class="fas fa-times-circle"></i>
			  				</div>
	  						<div class="fl cityname"></div> <!-- 표시되는 지역 명 -->
			  			</div>
			  		</div>
			  	</div>
			  	<!-- 상세일정만들기 버튼 -->
			  	<div class="detail_city_bottom">
					<div class="detail_plan_go_btn" id="createplan-modal">상세 일정 만들기</div>
			  	</div>
          		</div><!-- 일정 정보 end -->
			</div><!-- right box end -->
			
					<!-- 모달 정보 설정 -->
		<div id="createmodal" class="createmodal">
			<div class="modal-title">
				출발일과 여행제목을 입력해주세요<span class="modal-close">&times;</span>
			</div>
			<!-- 모달 내용-->
			<div class="modal-content">
				<table class="create-table" width="100%" cellpadding="0" cellspacing="0">
					<colgroup><col width="85"><col></colgroup>
					<tbody>
						<tr>
							<th>"여행제목       "</th>
							<td>
								<div id="modal-input">
									<input type="text" id="modal-name" value="" placeholder="여행제목을 입력해주세요"/><br/>
									<%--<div class="title-cnt">0/20</div>--%>
									<div class="clear"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 19px">&nbsp;</td>
						</tr>
						<tr>
							<th>"여행출발일       "</th>
							<td>
								<input type="text" id="start-day" class="hasDatepicker"/>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="height: 19px">&nbsp;</td>
						</tr>
					</tody>
				</table>
			</div>
		</div>
	
			<div class="clear"></div>
		</div>
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/plan/plan_create.js"></script> 
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>
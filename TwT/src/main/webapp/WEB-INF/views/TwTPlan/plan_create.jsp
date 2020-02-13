<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- <html xmlns:fb="https://www.facebook.com/2008/fbml" xmlns:og="https://opengraphprotocol.org/schema/" lang="ko"> -->
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
<!-- 	<meta name="description" content="20만개의 여행일정, 나만의 여행일정 계획하기">
	<meta name="keywords" content="여행일정, 여행일정 만들기, 여행일정표, 여행 가이드북, 여행 동선, 여행 루트, 일정 추천, 싱가포르 여행일정, 오사카 여행일정, 홍콩 여행일정, 유럽 여행일정, 뉴욕 여행일정, 타이베이 여행일정">
	<meta property="fb:app_id" content="334344006612913">
	<meta property="og:title" content="여행 플래너 어스토리">
	<meta property="og:type" content="article">
	<meta property="og:url" content="https://www.earthtory.com/ko/plan/create">
	<meta property="og:description" content="여행 플래너 사이트 어스토리에서 제공하는 국내외 여행을 위한 관광명소, 맛집, 쇼핑장소, 밤문화, 호텔, 항공권 정보를 통해 나만의 여행일정을 짜보세요.">
	<meta property="og:image" content="https://www.earthtory.com/res/img/earthtory_logo_to_sns.png"> -->
			
	<link rel="shortcut icon" href="/res/earthtory.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/default_ko.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/default.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/gnb.css">
	
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
	
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	// map 추가
	function initMap() {
		var bangkok = {lat: 13.755161, lng: 100.502371}; //방콕위치 위도/경도
		// 방콕을 센터로 맵 생성
		var map = new google.maps.Map( //지도 객체 생성
			document.getElementById('map'), {zoom: 6, center: bangkok}); //기본 줌,시작 센터 설정
		
		// 지도에 마커 표시
		// 위치 배열 되는 코드
		var locations = [
	        {
	          position: new google.maps.LatLng(13.757691, 100.505969)
	        }, {
	          position: new google.maps.LatLng(18.795185, 98.9598123)
	        }, {
	          position: new google.maps.LatLng(12.9230812, 100.8832977)
	        }, {
	          position: new google.maps.LatLng(7.9558174, 98.3420414)
	        }
       	];
		
		//db에서 가져오기
		/* var tmp = ${res.get(2).getcity_Lati()};
		alert(tmp);
		var locations = new Array();
		
		for(var i = 0;i<4;i++){
			alert("google.maps" + i + " : " + ${res.get(i).getcity_Long()});
			alert("google.maps비교" + 2 + " : " + ${res.get(2).getcity_Long()});
			// locations[i] = {position : new google.maps.LatLng(${res.get(i).getcity_Lati()}, ${res.get(i).getcity_Long()})};
			// alert(locations[i].position);		
			};
       	alert(locations.length);
		
		alert(locations[2].position); */
			
		/* alert("location?" + locations); */
		// 마커 아이콘
		var myIcon = new google.maps.MarkerImage("${pageContext.request.contextPath}/resources/images/marker.png",null,null,null,new google.maps.Size(50,45));
	
		/* var contentString = "<div>치앙마이</div>";
		var infowindow = new google.maps.InfoWindow({
			content: contentString,
			size: new google.maps.Size(200,100)
		}); */
       	var content = ["방콕","치앙마이","파타야","푸켓"]; // 말풍선 안에 들어갈 내용
       	
		// 위치 배열 마커찍기
		for (var i = 0; i < locations.length; i++) {
          	 var marker = new google.maps.Marker({
            	position: locations[i].position,
            	map: map,
            	icon: myIcon,
            	title: content[i]
          		/* ,
            	labelContent: content[i],
    		    labelAnchor: new google.maps.Point(-11, 30),
   			    labelClass: "labels", // the CSS class for the label
    		    labelStyle: {opacity: 0.75} */
          	});
          	
       	/* google.maps.event.addListener(marker, 'click', bounceEvent(map,marker)); */
          	
          	
          	
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
			google.maps.event.addListener(marker, 'click', toggleBounce);
        
		};
       	
       	
       /* var infowindow = new google.maps.InfoWindow({content: content[count]});
       	google.maps.event.addListener(marker, "click", function() {
			infowindow.open(map,marker);
        	count++;
       	}); */
            
       	
		/* 바운스 */
    	/* google.maps.event.addListener(marker, 'click', function() {
				marker.setAnimation(google.maps.Animation.BOUNCE);
   			});
    	
   		marker.setMap(map); */
       	/* 바운스 */
  	    /* infoWindow.open(map);
       	google.maps.event.addListener(marker, 'click', function() {
			infowindow.open(map, marker);

			if (marker.getAnimation() != null) {
				marker.setAnimation(null);
			}else {
				marker.setAnimation(google.maps.Animation.BOUNCE);
			}
		}); 
       	marker.setMap(map);
       	*/
       	
       	/* 마커 클릭시 바운딩, detail box 나타내기 */
		//google.maps.event.addListener(marker, 'click', function() {
			//marker.setAnimation(google.maps.Animation.BOUNCE);
			//$('#select_detail_view_city').show("slide", {direction:"left"}, 200);
       		/* $("#select_detail_view_city").animate({right: -200}, 500 ); */
       		/* $("#select_detail_view_city").css("display","block"); */
       		/* $("#select_detail_view_city").attr('style',"display:block;"); */
       	//});
       	

	}
	
	function toggleBounce(){
		if (marker.getAnimation() != null) {
		    marker.setAnimation(null);
			$('#select_detail_view_city').hide();
		  } else {
		    marker.setAnimation(google.maps.Animation.BOUNCE);
			$('#select_detail_view_city').show(); //show("slide", {direction:"left"}, 200);
		  }
	}
	
	/* function bounceEvent(map, marker){
		return function(){
			if(marker.clicked){
				marker.setAnimation(google.maps.Animation.BOUNCE);
			}
		}
	} */
	
	google.maps.event.addDomListener(window, 'load', initialize);

</script>
<!-- 구글맵 API KEY -->
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiDE5HBue4mflsdkcsGvSZrUeEooX8gWQ&callback=initMap&language=ko&region=KR">
</script>
</head>
<body style="">
	<!-- <script>

	</script> -->
	<%-- <%
		${res.get(i)
	
	%> --%>
	<!-- @@@@@@@헤더@@@@@@@@  -->
	<div id="header">
		<div class="wrap" style="width:100%;padding:0px 10px;">
			<h1 class="logo fl" alt="로고@@">
				<a href="/ko/"><span style="color:#C2BAFF"><i class="fas fa-plane-departure fa-3x"></i></span></a>
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


	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plan/date_picker.css">

	<style type="text/css">
		html, body{overflow:hidden !important;}
		.left_full_box{border-right:solid 1px #a7a7a7;height:100%;z-index:999;}
		#cat_menu{width:70px;height:100vh;background:#203341}
		#cat_menu li{width:70px;height:70px;background:#203341;color:#fff;text-align:center;border-bottom:solid 1px #374854;font-size:12px;cursor:pointer;}
		#cat_menu li img{padding-top:17px;padding-bottom:9px;}
		#cat_menu li img.s{padding-top:10px;padding-bottom:0px;}
		#cat_menu li.on{background:#fc3c3c;border-bottom:0px;}
		#cat_menu li:not(.on):hover{background:#164c88;}
		#schedule_day_list_box{overflow-y:scroll;}
		#top_menu{width:100%;height:45px;background:url(/res/map/mn_top_bg.png);position:absolute;top:74px;left:445px;z-index:2;}
		#clip_view_btn{width:110px;height:20px;font-size:11px;color:#666666;margin-top:10px;margin-left:12px;padding-left:25px;padding-top:6px;cursor:pointer;background:url('/res/map/clip_checkbox_null.png') no-repeat;}
		#clip_view_btn.on{background:url('/res/map/clip_checkbox_checked.png') no-repeat;}

		.go_list_btn{width:110px;height:20px;font-size:11px;color:#666666;margin-top:15px;margin-left:12px;padding-left:16px;padding-top:1px;cursor:pointer;background:url('/res/map/go_list_btn.png') no-repeat;}
		
		.item_sub_info_box{color:#707070;font-size:13px;position:absolute;bottom:0px;left:0px}
		
		.clip_btn{padding:0 5px;height:32px;background:#555555;border:solid #3b3b3b 1px;color:#fff;font-size:15px;position:absolute;bottom:0px;right:0px;text-align:center;line-height:30px;cursor:pointer;}
		.clip_btn.on{background:#ff9320;border:solid #f7870f 1px;}

		#select_detail_view_city{width:300px;position:absolute;left:10px;top:10px;padding-bottom:20px;z-index:999;background:#fff;border-radius:5px;display:none;}
		.detail_view_full_box{width:337px;background:url('/res/map/detail_bg.png');position:relative;}
		#select_detail_view_city .city_title{width:100%;height:59px;line-height:59px;padding-left:20px;color:#fff;font-size:17px;font-weight:bold;background:#ffba00;color:#fff;border-top-left-radius:5px;border-top-right-radius:5px;}

		#country_list_box .item {
		  padding: 15px;
		  cursor: pointer;
		  border-bottom: solid #a7a7a7 1px;
		  background-color: #fff;
		  width: 248px;
		  position: relative;
		  background:url('/res/img/workspace/new/cu_next_icon.png') no-repeat 225px 30px;
		}
		#country_list_box .item:hover{
			background-color:#f7f7f7;
		}

		.item .img_box {
		  width: 62px;
		  height: 55px;
		  position: relative;
		}
		.item .img_box img {
		  width: 62px;
		  height: 55px;
		}
		.item .info_box{margin-left:5px;}
		#country_list_box{overflow-y:scroll}
		.item .info_title{font-size:15px;color:#363636;}
		.item .info_sub_title{font-size:15px;color:#b3b3b3;margin-top:5px;}
		
		#city_list_box{overflow-y:scroll}
		#city_list_box .item {
		  padding: 15px;
		  cursor: pointer;
		  border-bottom: solid #a7a7a7 1px;
		  background-color: #fff;
		  width: 248px;
		  position: relative;
		}
		#city_list_box .item:hover{
			background-color:#f7f7f7;
		}
		.spot_to_inspot{  cursor: pointer;
		  position: absolute;
		  top: 25px;
		  right: 15px;}
		
		   .labels {
		     color: #363636;
		     background-color: white;
		     font-family: "nanum";
		     font-size: 11px;
		     font-weight: bold;
		     text-align: center;
		     min-width: 40px;
			 padding:2px;
		     border: 1px solid black;
		     white-space: nowrap;
		   }
		#date_pick{position:absolute;width:230px;display:none;margin-top:-5px;}
		#date_pick_btn{min-width:60px}
		.ui-datepicker{margin-top:-2px;}
	</style>

	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false&amp;region=KR&amp;language=ko&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw"></script>

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
				
				<!-- 나라 선택 -->
		        <!-- <div id="country_list_box" style="height: 537px; display: none;">
					<div class="item" data-no="17" data="25" data-latlng="15.87003200,100.99254100" data-val="태국">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/city_images/86/bangkok_1425369552.jpg"></div>
						<div class="info_box fl">
							<div class="info_title">태국</div>
							<div class="info_sub_title">Thailand</div>
						</div>
						<div class="clear"></div>
					</div>
				</div> -->
				
				<!-- 지역 선택 -->
		        <div id="city_list_box" style="height: 100vh;">
        			<div class="item" data-no="1" data="86" data-ci_name="방콕" data-lat="13.75222220" data-lng="100.49388890">
        				<div class="img_box fl"><img src="http://img.earthtory.com/img/city_images/86/bangkok_1425369552.jpg"></div>
        				<div class="info_box fl">
        					<div class="info_title">방콕</div>
        					<div class="info_sub_title">Bangkok</div>
       					</div>
       					<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
       					<div class="clear"></div>
   					</div>
					<div class="item" data-no="5" data="87" data-ci_name="치앙마이" data-lat="18.79906428" data-lng="98.99514161">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/city_images/87/chiang-mai_1425528980.jpg"></div>
						<div class="info_box fl">
							<div class="info_title">치앙마이</div>
							<div class="info_sub_title">Chiang Mai</div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="item" data-no="13" data="89" data-ci_name="파타야" data-lat="12.92750000" data-lng="100.87527780">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/city_images/89/pattaya_1425530603.jpg"></div>
						<div class="info_box fl">
							<div class="info_title">파타야</div>
							<div class="info_sub_title">Pattaya</div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
					<div class="item" data-no="14" data="90" data-ci_name="푸켓" data-lat="7.98431090" data-lng="98.33074680">
						<div class="img_box fl"><img src="http://img.earthtory.com/img/city_images/90/phuket_1425534412.jpg"></div>
						<div class="info_box fl">
							<div class="info_title">푸켓</div>
							<div class="info_sub_title">Phuket</div>
						</div>
						<div class="spot_to_inspot"><img src="${pageContext.request.contextPath}/resources/images/plan/spot_to_inspot_a.png"></div>
						<div class="clear"></div>
					</div>
				</div>
		    </div>
			<div class="clear"></div>
		</div>
	
		<div id="right_full_box" class="fl" style="position:absolute;left:336px;top:62px;">
	        <div id="clip_list" data="0">
               	<div class="list_title"><span></span> 클립보드<div class="list_title_option_menu" data-is_open="off">도시 변경</div></div>
                <div id="detail_close_btn"></div>
                <div class="clear"></div>
                <div class="clipboard_change_box"></div>
                
                <div class="list_box_overlay"></div>
                
                <div class="list_box"></div>
           	</div>
           	
			<div id="map" class="fl" style="height: 659px; position: relative; width: 1200px; overflow: hidden; left:0px"></div>
			
			
				

			
			
			
			<!-- <div id="map" class="fl" style="height: 100vh; position: relative; width: 100vh; overflow: hidden; left:0px">
				<div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
					<div class="gm-style" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
						<div tabindex="0" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;">
							<div style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
								<div style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
									<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
										<div style="position: absolute; z-index: 994; transform: matrix(1, 0, 0, 1, -212, -132);">
											<div style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 512px; top: -256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 512px; top: 0px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 512px; top: 256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 768px; top: -256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 768px; top: 0px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: 768px; top: 256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: -512px; top: 256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: -512px; top: 0px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
											<div style="position: absolute; left: -512px; top: -256px; width: 256px; height: 256px;">
												<div style="width: 256px; height: 256px;"></div>
											</div>
										</div>
									</div>
								</div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
									<div style="position: absolute; left: 0px; top: 0px; z-index: -1;">
										<div style="position: absolute; z-index: 994; transform: matrix(1, 0, 0, 1, -212, -132);">
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: 512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: 512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -768px; top: 512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -768px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -768px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -768px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -768px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 768px; top: -512px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 768px; top: -256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 768px; top: 0px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 768px; top: 256px;"></div>
											<div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 768px; top: 512px;"></div>
										</div>
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -81px; top: 227px; z-index: 267;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -8px; top: -36px; z-index: 4;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -102px; top: -302px; z-index: -262;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -5px; top: -64px; z-index: -24;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -39px; top: -329px; z-index: -289;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -77px; top: -275px; z-index: -235;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -110px; top: 202px; z-index: 242;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -52px; top: -49px; z-index: -9;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -73px; top: 248px; z-index: 288;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -30px; top: 161px; z-index: 201;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: 74px; top: 42px; z-index: 82;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -38px; top: 134px; z-index: 174;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -30px; top: 151px; z-index: 191;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: 9px; top: 3px; z-index: 43;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -107px; top: 231px; z-index: 271;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
									<div style="width: 36px; height: 40px; overflow: hidden; position: absolute; left: -33px; top: 19px; z-index: 59;">
										<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
									</div>
								</div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
								<div style="position: absolute; z-index: 994; transform: matrix(1, 0, 0, 1, -212, -132);">
								<div style="position: absolute; left: -512px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i47!3i30!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=88934" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 768px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i52!3i29!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=56534" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i49!3i30!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=41127" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 512px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i51!3i30!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=125033" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: -512px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i47!3i29!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=109874" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i48!3i29!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=20435" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 768px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i52!3i30!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=35594" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i48!3i30!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=130566" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 768px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i52!3i28!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=128178" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i50!3i30!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=83401" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: -512px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i47!3i28!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=50447" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i48!3i28!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=92079" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 512px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i51!3i29!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=14902" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 512px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i51!3i28!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=86546" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i49!3i29!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=62067" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i50!3i29!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=104341" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i49!3i28!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=2640" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
									<img draggable="false" alt="" role="presentation" src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i6!2i50!3i28!4i256!2m3!1e0!2sm!3i498212594!3m12!2sko!3sKR!5e18!12m4!1e68!2m2!1sset!2sRoadmap!12m3!1e37!2m1!1ssmartmaps!4e0!5m1!5f2&amp;key=AIzaSyCl637FhRA2W2lb2sQ776t96OML_-LOVdw&amp;token=44914" style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								</div>
								</div>
							</div>
								<div class="gm-style-pbc" style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;"><p class="gm-style-pbt"></p></div>
								<div style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
								<div style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);"><div style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;">
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -62.6651px; top: 266.756px; z-index: 267; display: block;">끄라비</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 9.58854px; top: 4.02354px; z-index: 5; display: block;">방콕</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -84.0105px; top: -262.319px; z-index: -261; display: block;">빠이</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 13.0051px; top: -24.1722px; z-index: -23; display: block;">아유타야</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -20.5823px; top: -288.796px; z-index: -287; display: block;">치앙라이</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -58.6211px; top: -235.344px; z-index: -234; display: block;">치앙마이</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -91.9138px; top: 241.512px; z-index: 242; display: block;">카오락</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -34.1512px; top: -8.66061px; z-index: -7; display: block;">칸차나부리</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -54.7943px; top: 287.978px; z-index: 288; display: block;">코란타</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -12.2703px; top: 201.095px; z-index: 202; display: block;">코사무이</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 92.3342px; top: 82.0107px; z-index: 83; display: block;">코창</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -20.1526px; top: 174.141px; z-index: 175; display: block;">코타오</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -12.2703px; top: 190.946px; z-index: 191; display: block;">코팡안</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 26.946px; top: 42.5987px; z-index: 43; display: block;">파타야</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -88.8585px; top: 271.443px; z-index: 272; display: block;">푸켓</div>
								<div class="labels" style="opacity: 0.75; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -14.8145px; top: 59.356px; z-index: 60; display: block;">후아힌</div></div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;">
								<div title="끄라비" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -62.6651px; top: 266.756px; z-index: 267; display: block;">끄라비</div>
								<div title="방콕" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 9.58854px; top: 4.02354px; z-index: 5; display: block;">방콕</div>
								<div title="빠이" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -84.0105px; top: -262.319px; z-index: -261; display: block;">빠이</div>
								<div title="아유타야" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 13.0051px; top: -24.1722px; z-index: -23; display: block;">아유타야</div>
								<div title="치앙라이" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -20.5823px; top: -288.796px; z-index: -287; display: block;">치앙라이</div>
								<div title="치앙마이" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -58.6211px; top: -235.344px; z-index: -234; display: block;">치앙마이</div>
								<div title="카오락" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -91.9138px; top: 241.512px; z-index: 242; display: block;">카오락</div>
								<div title="칸차나부리" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -34.1512px; top: -8.66061px; z-index: -7; display: block;">칸차나부리</div>
								<div title="코란타" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -54.7943px; top: 287.978px; z-index: 288; display: block;">코란타</div>
								<div title="코사무이" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -12.2703px; top: 201.095px; z-index: 202; display: block; cursor: pointer;">코사무이</div>
								<div title="코창" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 92.3342px; top: 82.0107px; z-index: 83; display: block;">코창</div>
								<div title="코타오" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -20.1526px; top: 174.141px; z-index: 175; display: block;">코타오</div>
								<div title="코팡안" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -12.2703px; top: 190.946px; z-index: 191; display: block;">코팡안</div>
								<div title="파타야" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: 26.946px; top: 42.5987px; z-index: 43; display: block; cursor: pointer;">파타야</div>
								<div title="푸켓" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -88.8585px; top: 271.443px; z-index: 272; display: block;">푸켓</div>
								<div title="후아힌" class="labels" style="opacity: 0.01; position: absolute; overflow: hidden; margin-left: 11px; margin-top: -30px; left: -14.8145px; top: 59.356px; z-index: 60; display: block;">후아힌</div>
								<div title="끄라비" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -81px; top: 227px; z-index: 267;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="방콕" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -8px; top: -36px; z-index: 4;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="빠이" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -102px; top: -302px; z-index: -262;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="아유타야" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -5px; top: -64px; z-index: -24;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="치앙라이" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -39px; top: -329px; z-index: -289;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="치앙마이" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -77px; top: -275px; z-index: -235;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="카오락" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -110px; top: 202px; z-index: 242;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="칸차나부리" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -52px; top: -49px; z-index: -9;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="코란타" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -73px; top: 248px; z-index: 288;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="코사무이" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -30px; top: 161px; z-index: 201;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="코창" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: 74px; top: 42px; z-index: 82;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="코타오" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -38px; top: 134px; z-index: 174;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="코팡안" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -30px; top: 151px; z-index: 191;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="파타야" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: 9px; top: 3px; z-index: 43;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="푸켓" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -107px; top: 231px; z-index: 271;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								<div title="후아힌" style="width: 36px; height: 40px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -33px; top: 19px; z-index: 59;">
									<img alt="" src="/res/img/worldmap/normal_marker_off.png" draggable="false" style="position: absolute; left: 0px; top: 0px; user-select: none; width: 36px; height: 40px; border: 0px; padding: 0px; margin: 0px; max-width: none; opacity: 1;">
								</div>
								</div>
								<div style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;">
								</div>
								</div>
								</div>
								</div>
								<iframe aria-hidden="true" frameborder="0" style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"></iframe>
								<div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
								<a target="_blank" rel="noopener" href="https://maps.google.com/maps?ll=13.846805,100.287822&amp;z=6&amp;t=m&amp;hl=ko&amp;gl=KR&amp;mapclient=apiv3" title="Google 지도에서 이 지역 열기(새 창으로 열림)" style="position: static; overflow: visible; float: none; display: inline;">
								<div style="width: 66px; height: 26px; cursor: pointer;">
								<img alt="" src="https://maps.gstatic.com/mapfiles/api-3/images/google4_hdpi.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
								</div></a></div>
								<div style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 450px; top: 239px;"><div style="padding: 0px 0px 10px; font-size: 16px; box-sizing: border-box;">지도 데이터</div><div style="font-size: 13px;">지도 데이터 ©2020 Google</div>
								<button draggable="false" title="닫기" aria-label="닫기" type="button" class="gm-ui-hover-effect" style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;">
								</button></div>
								<div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 52px; bottom: 0px; width: 131px;">
								<div draggable="false" class="gm-style-cc" style="user-select: none; height: 14px; line-height: 14px;">
								<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
								<div style="width: 1px;"></div>
								<div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;">
								</div></div>
								<div style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
								<a style="text-decoration: none; cursor: pointer; display: none;">지도 데이터</a><span>지도 데이터 ©2020 Google</span>
								</div></div></div>
								<div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">지도 데이터 ©2020 Google</div></div><div class="gmnoprint gm-style-cc" draggable="false" style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
								<div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div>
								<div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;">
								</div></div>
								<div style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
								<a href="https://www.google.com/intl/ko_KR/help/terms_maps.html" target="_blank" rel="noopener" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">이용약관</a>
								</div></div>
								<button draggable="false" title="전체 화면보기로 전환" aria-label="전체 화면보기로 전환" type="button" class="gm-control-active gm-fullscreen-control" style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%20018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;"></button>
								<div draggable="false" class="gm-style-cc" style="user-select: none; height: 14px; line-height: 14px; display: none; position: absolute; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
								<div style="width: 1px;"></div>
								<div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
								</div>
								<div style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
								<a target="_blank" rel="noopener" title="Google에 도로 지도 또는 이미지 오류 신고" href="https://www.google.com/maps/@13.8468048,100.2878218,6z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">지도 오류 신고</a>
								</div></div>
								<div class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom" draggable="false" controlwidth="40" controlheight="153" style="margin: 10px; user-select: none; position: absolute; bottom: 167px; right: 40px;">
								<div class="gmnoprint" controlwidth="40" controlheight="81" style="position: absolute; left: 0px; top: 72px;"><div draggable="false" style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;"><button draggable="false" title="확대" aria-label="확대" type="button" class="gm-control-active" style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23666%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23333%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23111%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;"></button>
								<div style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;">
								</div>
								<button draggable="false" title="축소" aria-label="축소" type="button" class="gm-control-active" style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								</button></div></div>
								<div class="gm-svpc" dir="ltr" title="스트리트 뷰를 열려면 페그맨을 지도로 드래그하세요." controlwidth="40" controlheight="40" style="background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; width: 40px; height: 40px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: none; position: absolute; left: 0px; top: 0px;">
								<div style="position: absolute; left: 50%; top: 50%;"></div><div style="position: absolute; left: 50%; top: 50%;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2223%22%20height%3D%2238%22%20viewBox%3D%220%200%2023%2038%22%3E%0A%3Cpath%20d%3D%22M16.6%2C38.1h-5.5l-0.2-2.9-0.2%2C2.9h-5.5L5%2C25.3l-0.8%2C2a1.53%2C1.53%2C0%2C0%2C1-1.9.9l-1.2-.4a1.58%2C1.58%2C0%2C0%2C1-1-1.9v-0.1c0.3-.9%2C3.1-11.2%2C3.1-11.2a2.66%2C2.66%2C0%2C0%2C1%2C2.3-2l0.6-.5a6.93%2C6.93%2C0%2C0%2C1%2C4.7-12%2C6.8%2C6.8%2C0%2C0%2C1%2C4.9%2C2%2C7%2C7%2C0%2C0%2C1%2C2%2C4.9%2C6.65%2C6.65%2C0%2C0%2C1-2.2%2C5l0.7%2C0.5a2.78%2C2.78%2C0%2C0%2C1%2C2.4%2C2s2.9%2C11.2%2C2.9%2C11.3a1.53%2C1.53%2C0%2C0%2C1-.9%2C1.9l-1.3.4a1.63%2C1.63%2C0%2C0%2C1-1.9-.9l-0.7-1.8-0.1%2C12.7h0Zm-3.6-2h1.7L14.9%2C20.3l1.9-.3%2C2.4%2C6.3%2C0.3-.1c-0.2-.8-0.8-3.2-2.8-10.9a0.63%2C0.63%2C0%2C0%2C0-.6-0.5h-0.6l-1.1-.9h-1.9l-0.3-2a4.83%2C4.83%2C0%2C0%2C0%2C3.5-4.7A4.78%2C4.78%200%200%2C0%2011%202.3H10.8a4.9%2C4.9%2C0%2C0%2C0-1.4%2C9.6l-0.3%2C2h-1.9l-1%2C.9h-0.6a0.74%2C0.74%2C0%2C0%2C0-.6.5c-2%2C7.5-2.7%2C10-3%2C10.9l0.3%2C0.1%2C2.5-6.3%2C1.9%2C0.3%2C0.2%2C15.8h1.6l0.6-8.4a1.52%2C1.52%2C0%2C0%2C1%2C1.5-1.4%2C1.5%2C1.5%2C0%2C0%2C1%2C1.5%2C1.4l0.9%2C8.4h0Zm-10.9-9.6h0Zm17.5-.1h0Z%22%20style%3D%22fill%3A%23333%3Bopacity%3A0.7%3Bisolation%3Aisolate%22%2F%3E%0A%3Cpath%20d%3D%22M5.9%2C13.6l1.1-.9h7.8l1.2%2C0.9%22%20style%3D%22fill%3A%23ce592c%22%2F%3E%0A%3Cellipse%20cx%3D%2210.9%22%20cy%3D%2213.1%22%20rx%3D%222.7%22%20ry%3D%220.3%22%20style%3D%22fill%3A%23ce592c%3Bopacity%3A0.5%3Bisolation%3Aisolate%22%2F%3E%0A%3Cpath%20d%3D%22M20.6%2C26.1l-2.9-11.3a1.71%2C1.71%2C0%2C0%2C0-1.6-1.2H5.7a1.69%2C1.69%2C0%2C0%2C0-1.5%2C1.3l-3.1%2C11.3a0.61%2C0.61%2C0%2C0%2C0%2C.3.7l1.1%2C0.4a0.61%2C0.61%2C0%2C0%2C0%2C.7-0.3l2.7-6.7%2C0.2%2C16.8h3.6l0.6-9.3a0.47%2C0.47%2C0%2C0%2C1%2C.44-0.5h0.06c0.4%2C0%2C.4.2%2C0.5%2C0.5l0.6%2C9.3h3.6L15.7%2C20.3l2.5%2C6.6a0.52%2C0.52%2C0%2C0%2C0%2C.66.31h0l1.2-.4a0.57%2C0.57%2C0%2C0%2C0%2C.5-0.7h0Z%22%20style%3D%22fill%3A%23fdbf2d%22%2F%3E%0A%3Cpath%20d%3D%22M7%2C13.6l3.9%2C6.7%2C3.9-6.7%22%20style%3D%22fill%3A%23cf572e%3Bopacity%3A0.6%3Bisolation%3Aisolate%22%2F%3E%0A%3Ccircle%20cx%3D%2210.9%22%20cy%3D%227%22%20r%3D%225.9%22%20style%3D%22fill%3A%23fdbf2d%22%2F%3E%0A%3C%2Fsvg%3E%0A" aria-label="스트리트 뷰 페그맨 컨트롤" style="height: 30px; width: 30px; position: absolute; transform: translate(-50%, -50%); pointer-events: none;">
								<img src="data:image/svg+xml,%3Csvg%20width%3D%2224px%22%20height%3D%2238px%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20viewBox%3D%220%200%2024%2038%22%3E%0A%3Cpath%20d%3D%22M22%2C26.6l-2.9-11.3a2.78%2C2.78%2C0%2C0%2C0-2.4-2l-0.7-.5a6.82%2C6.82%2C0%2C0%2C0%2C2.2-5%2C6.9%2C6.9%2C0%2C0%2C0-13.8%2C0%2C7%2C7%2C0%2C0%2C0%2C2.2%2C5.1l-0.6.5a2.55%2C2.55%2C0%2C0%2C0-2.3%2C2s-3%2C11.1-3%2C11.2v0.1a1.58%2C1.58%2C0%2C0%2C0%2C1%2C1.9l1.2%2C0.4a1.63%2C1.63%2C0%2C0%2C0%2C1.9-.9l0.8-2%2C0.2%2C12.8h11.3l0.2-12.6%2C0.7%2C1.8a1.54%2C1.54%2C0%2C0%2C0%2C1.5%2C1%2C1.09%2C1.09%2C0%2C0%2C0%2C.5-0.1l1.3-.4a1.85%2C1.85%2C0%2C0%2C0%2C.7-2h0Zm-1.2.9-1.2.4a0.61%2C0.61%2C0%2C0%2C1-.7-0.3l-2.5-6.6-0.2%2C16.8h-9.4L6.6%2C21l-2.7%2C6.7a0.52%2C0.52%2C0%2C0%2C1-.66.31h0l-1.1-.4a0.52%2C0.52%2C0%2C0%2C1-.31-0.66v0l3.1-11.3a1.69%2C1.69%2C0%2C0%2C1%2C1.5-1.3h0.2l1-.9h2.3a5.9%2C5.9%2C0%2C1%2C1%2C3.2%2C0h2.3l1.1%2C0.9h0.2a1.71%2C1.71%2C0%2C0%2C1%2C1.6%2C1.2l2.9%2C11.3a0.84%2C0.84%2C0%2C0%2C1-.4.7h0Z%22%20style%3D%22fill%3A%23333%3Bfill-opacity%3A0.2%22%2F%3E%22%0A%3C%2Fsvg%3E%0A%0A" aria-label="지도 위에 페그맨이 있음" style="display: none; height: 30px; width: 30px; position: absolute; transform: translate(-50%, -50%); pointer-events: none;">
								엄청길다<img src="data:image/svg+xml,%3Csvg%20width%3D%2240px%22%20height%3D%2250px%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20viewBox%3D%220%200%2040%2050%22%3E%0A%3Cpath%20d%3D%22M34.00%2C-30.40l-2.9-11.3a2.78%2C2.78%2C0%2C0%2C0-2.4-2l-0.7-.5a6.82%2C6.82%2C0%2C0%2C0%2C2.2-5%2C6.9%2C6.9%2C0%2C0%2C0-13.8%2C0%2C7%2C7%2C0%2C0%2C0%2C2.2%2C5.1l-0.6.5a2.55%2C2.55%2C0%2C0%2C0-2.3%2C2s-3%2C11.1-3%2C11.2v0.1a1.58%2C1.58%2C0%2C0%2C0%2C1%2C1.9l1.2%2C0.4a1.63%2C1.63%2C0%2C0%2C0%2C1.9-.9l0.8-2%2C0.2%2C12.8h11.3l0.2-12.6%2C0.7%2C1.8a1.54%2C1.54%2C0%2C0%2C0%2C1.5%2C1%2C1.09%2C1.09%2C0%2C0%2C0%2C.5-0.1l1.3-.4a1.85%2C1.85%2C0%2C0%2C0%2C.7-2h0Zm-1.2.9-1.2.4a0.61%2C0.61%2C0%2C0%2C1-.7-0.3l-2.5-6.6-0.2%2C16.8h-9.4L18.60%2C-36.00l-2.7%2C6.7a0.52%2C0.52%2C0%2C0%2C1-.66.31h0l-1.1-.4a0.52%2C0.52%2C0%2C0%2C1-.31-0.66v0l3.1-11.3a1.69%2C1.69%2C0%2C0%2C1%2C1.5-1.3h0.2l1-.9h2.3a5.9%2C5.9%2C0%2C1%2C1%2C3.2%2C0h2.3l1.1%2C0.9h0.2a1.71%2C1.71%2C0%2C0%2C1%2C1.6%2C1.2l2.9%2C11.3a0.84%2C0.84%2C0%2C0%2C1-.4.7h0Zm1.2%2C59.1-2.9-11.3a2.78%2C2.78%2C0%2C0%2C0-2.4-2l-0.7-.5a6.82%2C6.82%2C0%2C0%2C0%2C2.2-5%2C6.9%2C6.9%2C0%2C0%2C0-13.8%2C0%2C7%2C7%2C0%2C0%2C0%2C2.2%2C5.1l-0.6.5a2.55%2C2.55%2C0%2C0%2C0-2.3%2C2s-3%2C11.1-3%2C11.2v0.1a1.58%2C1.58%2C0%2C0%2C0%2C1%2C1.9l1.2%2C0.4a1.63%2C1.63%2C0%2C0%2C0%2C1.9-.9l0.8-2%2C0.2%2C12.8h11.3l0.2-12.6%2C0.7%2C1.8a1.54%2C1.54%2C0%2C0%2C0%2C1.5%2C1%2C1.09%2C1.09%2C0%2C0%2C0%2C.5-0.1l1.3-.4a1.85%2C1.85%2C0%2C0%2C0%2C.7-2h0Zm-1.2.9-1.2.4a0.61%2C0.61%2C0%2C0%2C1-.7-0.3l-2.5-6.6-0.2%2C16.8h-9.4L18.60%2C24.00l-2.7%2C6.7a0.52%2C0.52%2C0%2C0%2C1-.66.31h0l-1.1-.4a0.52%2C0.52%2C0%2C0%2C1-.31-0.66v0l3.1-11.3a1.69%2C1.69%2C0%2C0%2C1%2C1.5-1.3h0.2l1-.9h2.3a5.9%2C5.9%2C0%2C1%2C1%2C3.2%2C0h2.3l1.1%2C0.9h0.2a1.71%2C1.71%2C0%2C0%2C1%2C1.6%2C1.2l2.9%2C11.3a0.84%2C0.84%2C0%2C0%2C1-.4.7h0Z%22%20style%3D%22fill%3A%23333%3Bfill-opacity%3A0.2%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M15.40%2C38.80h-4a1.64%2C1.64%2C0%2C0%2C1-1.4-1.1l-3.1-8a0.9%2C0.9%2C0%2C0%2C1-.5.1l-1.4.1a1.62%2C1.62%2C0%2C0%2C1-1.6-1.4l-1.1-13.1%2C1.6-1.3a6.87%2C6.87%2C0%2C0%2C1-3-4.6A7.14%2C7.14%200%200%2C1%202%204a7.6%2C7.6%2C0%2C0%2C1%2C4.7-3.1%2C7.14%2C7.14%2C0%2C0%2C1%2C5.5%2C1.1%2C7.28%2C7.28%2C0%2C0%2C1%2C2.3%2C9.6l2.1-.1%2C0.1%2C1c0%2C0.2.1%2C0.5%2C0.1%2C0.8a2.41%2C2.41%2C0%2C0%2C1%2C1%2C1s1.9%2C3.2%2C2.8%2C4.9c0.7%2C1.2%2C2.1%2C4.2%2C2.8%2C5.9a2.1%2C2.1%2C0%2C0%2C1-.8%2C2.6l-0.6.4a1.63%2C1.63%2C0%2C0%2C1-1.5.2l-0.6-.3a8.93%2C8.93%2C0%2C0%2C0%2C.5%2C1.3%2C7.91%2C7.91%2C0%2C0%2C0%2C1.8%2C2.6l0.6%2C0.3v4.6l-4.5-.1a7.32%2C7.32%2C0%2C0%2C1-2.5-1.5l-0.4%2C3.6h0Zm-10-19.2%2C3.5%2C9.8%2C2.9%2C7.5h1.6V35l-1.9-9.4%2C3.1%2C5.4a8.24%2C8.24%2C0%2C0%2C0%2C3.8%2C3.8h2.1v-1.4a14%2C14%2C0%2C0%2C1-2.2-3.1%2C44.55%2C44.55%2C0%2C0%2C1-2.2-8l-1.3-6.3%2C3.2%2C5.6c0.6%2C1.1%2C2.1%2C3.6%2C2.8%2C4.9l0.6-.4c-0.8-1.6-2.1-4.6-2.8-5.8-0.9-1.7-2.8-4.9-2.8-4.9a0.54%2C0.54%2C0%2C0%2C0-.4-0.3l-0.7-.1-0.1-.7a4.33%2C4.33%2C0%2C0%2C0-.1-0.5l-5.3.3%2C2.2-1.9a4.3%2C4.3%2C0%2C0%2C0%2C.9-1%2C5.17%2C5.17%2C0%2C0%2C0%2C.8-4%2C5.67%2C5.67%2C0%2C0%2C0-2.2-3.4%2C5.09%2C5.09%2C0%2C0%2C0-4-.8%2C5.67%2C5.67%2C0%2C0%2C0-3.4%2C2.2%2C5.17%2C5.17%2C0%2C0%2C0-.8%2C4%2C5.67%2C5.67%2C0%2C0%2C0%2C2.2%2C3.4%2C3.13%2C3.13%2C0%2C0%2C0%2C1%2C.5l1.6%2C0.6-3.2%2C2.6%2C1%2C11.5h0.4l-0.3-8.2h0Z%22%20style%3D%22fill%3A%23333%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M3.35%2C15.90l1.1%2C12.5a0.39%2C0.39%2C0%2C0%2C0%2C.36.42l0.14%2C0%2C1.4-.1a0.66%2C0.66%2C0%2C0%2C0%2C.5-0.4l-0.2-3.8-3.3-8.6h0Z%22%20style%3D%22fill%3A%23fdbf2d%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M5.20%2C28.80l1.1-.1a0.66%2C0.66%2C0%2C0%2C0%2C.5-0.4l-0.2-3.8-1.2-3.1Z%22%20style%3D%22fill%3A%23ce592b%3Bfill-opacity%3A0.25%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M21.40%2C35.70l-3.8-1.2-2.7-7.8L12.00%2C15.5l3.4-2.9c0.2%2C2.4%2C2.2%2C14.1%2C3.7%2C17.1%2C0%2C0%2C1.3%2C2.6%2C2.3%2C3.1v2.9m-8.4-8.1-2-.3%2C2.5%2C10.1%2C0.9%2C0.4v-2.9%22%20style%3D%22fill%3A%23e5892b%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M17.80%2C25.40c-0.4-1.5-.7-3.1-1.1-4.8-0.1-.4-0.1-0.7-0.2-1.1l-1.1-2-1.7-1.6s0.9%2C5%2C2.4%2C7.1a19.12%2C19.12%2C0%2C0%2C0%2C1.7%2C2.4h0Z%22%20style%3D%22fill%3A%23cf572e%3Bopacity%3A0.6%3Bisolation%3Aisolate%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M14.40%2C37.80h-3a0.43%2C0.43%2C0%2C0%2C1-.4-0.4l-3-7.8-1.7-4.8-3-9%2C8.9-.4s2.9%2C11.3%2C4.3%2C14.4c1.9%2C4.1%2C3.1%2C4.7%2C5%2C5.8h-3.2s-4.1-1.2-5.9-7.7a0.59%2C0.59%2C0%2C0%2C0-.6-0.4%2C0.62%2C0.62%2C0%2C0%2C0-.3.7s0.5%2C2.4.9%2C3.6a34.87%2C34.87%2C0%2C0%2C0%2C2%2C6h0Z%22%20style%3D%22fill%3A%23fdbf2d%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M15.40%2C12.70l-3.3%2C2.9-8.9.4%2C3.3-2.7%22%20style%3D%22fill%3A%23ce592b%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M9.10%2C21.10l1.4-6.2-5.9.5%22%20style%3D%22fill%3A%23cf572e%3Bopacity%3A0.6%3Bisolation%3Aisolate%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M12.00%2C13.5a4.75%2C4.75%2C0%2C0%2C1-2.6%2C1.1c-1.5.3-2.9%2C0.2-2.9%2C0s1.1-.6%2C2.7-1%22%20style%3D%22fill%3A%23bb3d19%22%3E%3C%2Fpath%3E%0A%3Ccircle%20cx%3D%227.92%22%20cy%3D%228.19%22%20r%3D%226.3%22%20style%3D%22fill%3A%23fdbf2d%22%3E%3C%2Fcircle%3E%0A%3Cpath%20d%3D%22M4.70%2C13.60a6.21%2C6.21%2C0%2C0%2C0%2C8.4-1.9v-0.1a8.89%2C8.89%2C0%2C0%2C1-8.4%2C2h0Z%22%20style%3D%22fill%3A%23ce592b%3Bfill-opacity%3A0.25%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M21.20%2C27.20l0.6-.4a1.09%2C1.09%2C0%2C0%2C0%2C.4-1.3c-0.7-1.5-2.1-4.6-2.8-5.8-0.9-1.7-2.8-4.9-2.8-4.9a1.6%2C1.6%2C0%2C0%2C0-2.17-.65l-0.23.15a1.68%2C1.68%2C0%2C0%2C0-.4%2C2.1s2.3%2C3.9%2C3.1%2C5.3c0.6%2C1%2C2.1%2C3.7%2C2.9%2C5.1a0.94%2C0.94%2C0%2C0%2C0%2C1.24.49l0.16-.09h0Z%22%20style%3D%22fill%3A%23fdbf2d%22%3E%3C%2Fpath%3E%0A%3Cpath%20d%3D%22M19.40%2C19.80c-0.9-1.7-2.8-4.9-2.8-4.9a1.6%2C1.6%2C0%2C0%2C0-2.17-.65l-0.23.15-0.3.3c1.1%2C1.5%2C2.9%2C3.8%2C3.9%2C5.4%2C1.1%2C1.8%2C2.9%2C5%2C3.8%2C6.7l0.1-.1a1.09%2C1.09%2C0%2C0%2C0%2C.4-1.3%2C57.67%2C57.67%2C0%2C0%2C0-2.7-5.6h0Z%22%20style%3D%22fill%3A%23ce592b%3Bfill-opacity%3A0.25%22%3E%3C%2Fpath%3E%0A%3C%2Fsvg%3E%0A" aria-label="스트리트 뷰 페그맨 컨트롤" style="display: none; height: 40px; width: 40px; position: absolute; transform: translate(-60%, -45%); pointer-events: none;"></div></div><div class="gmnoprint" controlwidth="40" controlheight="40" style="display: none; position: absolute;"><div style="width: 40px; height: 40px;">
								<button draggable="false" title="지도 90도 회전" aria-label="지도 90도 회전" type="button" class="gm-control-active" style="background: none rgb(255, 255, 255); display: none; border: 0px; margin: 0px 0px 32px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 18px; width: 18px;">
								</button>
								<button draggable="false" title="지도 기울이기" aria-label="지도 기울이기" type="button" class="gm-tilt gm-control-active" style="background: none rgb(255, 255, 255); display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="width: 18px;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="width: 18px;">
								</button>
								</div></div></div>
								<div class="gmnoprint" style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 0px; top: 0px;">
								<div class="gm-style-mtc" style="float: left; position: relative;">
								<div role="button" tabindex="0" title="거리 지도 보기" aria-label="거리 지도 보기" aria-pressed="true" draggable="false" style="direction: ltr; overflow: hidden; text-align: center; height: 40px; display: table-cell; vertical-align: middle; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 18px; background-color: rgb(255, 255, 255); padding: 0px 17px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 36px; font-weight: 500;">지도</div>
								<div style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; left: 0px; top: 40px; text-align: left; display: none;">
								<div draggable="false" title="지형과 거리 지도 보기" style="color: black; font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 18px; background-color: rgb(255, 255, 255); padding: 5px 8px 5px 5px; direction: ltr; text-align: left; white-space: nowrap;">
								<span role="checkbox" style="vertical-align: middle;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%203H5c-1.11%200-2%20.9-2%202v14c0%201.1.89%202%202%202h14c1.11%200%202-.9%202-2V5c0-1.1-.89-2-2-2zm-9%2014l-5-5%201.41-1.41L10%2014.17l7.59-7.59L19%208l-9%209z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 1em; width: 1em; transform: translateY(0.15em); display: none;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%205v14H5V5h14m0-2H5c-1.1%200-2%20.9-2%202v14c0%201.1.9%202%202%202h14c1.1%200%202-.9%202-2V5c0-1.1-.9-2-2-2z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 1em; width: 1em; transform: translateY(0.15em);"></span>
								<label style="vertical-align: middle; cursor: pointer;">지형</label>
								</div></div></div>
								<div class="gm-style-mtc" style="float: left; position: relative;">
								<div role="button" tabindex="0" title="위성 이미지 보기" aria-label="위성 이미지 보기" aria-pressed="false" draggable="false" style="direction: ltr; overflow: hidden; text-align: center; height: 40px; display: table-cell; vertical-align: middle; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 18px; background-color: rgb(255, 255, 255); padding: 0px 17px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 36px; border-left: 0px;">위성</div>
								<div style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; right: 0px; top: 40px; text-align: left; display: none;">
								<div draggable="false" title="거리 이름과 이미지 함께 보기" style="color: black; font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 18px; background-color: rgb(255, 255, 255); padding: 5px 8px 5px 5px; direction: ltr; text-align: left; white-space: nowrap;">
								<span role="checkbox" style="vertical-align: middle;">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%203H5c-1.11%200-2%20.9-2%202v14c0%201.1.89%202%202%202h14c1.11%200%202-.9%202-2V5c0-1.1-.89-2-2-2zm-9%2014l-5-5%201.41-1.41L10%2014.17l7.59-7.59L19%208l-9%209z%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 1em; width: 1em; transform: translateY(0.15em);">
								<img src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%205v14H5V5h14m0-2H5c-1.1%200-2%20.9-2%202v14c0%201.1.9%202%202%202h14c1.1%200%202-.9%202-2V5c0-1.1-.9-2-2-2z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A" style="height: 1em; width: 1em; transform: translateY(0.15em); display: none;">
								</span>
								
								<label style="vertical-align: middle; cursor: pointer;">라벨</label>
								
							</div></div></div></div></div></div></div> -->
	
	
			  
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
						</div>
					</div>
					<div class="clear"></div>
				</div>
			  	<div id="selected_cities" data="0" style="max-height: 458px;"></div>
			  	<div class="detail_city_bottom">
					<div class="detail_plan_go_btn" onclick="et_modal('500px','470px','1','0','/ko/modal/create_new_plan?is_exist_city_route=true','2','1');">상세 일정 만들기</div>
			  	</div>
          		</div>
			</div>
	
			<div class="clear"></div>
		</div>
	</div>
	
	<!--//레알-->
	<style type="text/css">
		#selected_cities{width:100%;padding:0px 15px;padding-top:20px;padding-bottom:20px;overflow-y:auto}
		.s_cities{width:100%;min-height:39px;}
		.city_info{height:39px;background:#efefef;color:#555555;font-size:15px;line-height:39px;border-radius:5px;cursor:move;}
		.city_route_info{background:url('/res/img/workspace/new/item_route_bg.png') no-repeat 20px 0px;width:100%;height:41px;padding-left:63px;font-size:11px;color:#808080}
		.city_distance_info{margin-top:16px;}
		.del_city_btn{cursor:pointer;margin:4px 10px}
		.city_set_day_box{margin-right:10px;}
		.city_set_minus_btn{cursor:pointer;margin-top:3px;margin-right:3px;}
		.city_set_plus_btn{cursor:pointer;margin-top:3px;margin-left:3px;}
		.city_set_day_info{color:#555555;font-size:13px;min-width:40px;text-align:center;}
		.city_air_search_btn{min-width:79px;height:23px;border:solid #cacaca 1px;background:url('/res/img/workspace/new/air_search_icon.png') no-repeat right 5px top 3px;line-height:23px;padding-left:15px;padding-right:25px;cursor:pointer;margin-top:7px;margin-right:15px;color:#808080;display:none;}
		.detail_city_bottom{padding-top:20px;border-top:solid #d6d6d6 1px}
		.detail_plan_go_btn{width:270px;height:44px;line-height:44px;text-align:center;color:#fff;font-size:16px;margin:0 auto;background:#fc3c3c;border:solid #fc3c3c 1px;cursor:pointer;}
		.pn_date_box{margin-right:15px;cursor:pointer;}
		.pn_date_info{font-size:13px;margin-right:5px;padding-top:3px;}
		.pn_date_icon{margin-top:3px;}
		
		.list_title{width:265px;height:70px;background:#1a7ad9;line-height:70px;color:#fff;padding-left:10px;font-size:17px;font-weight:bold;}
		#schedule_full_box .title_box{width:265px;height:70px;background:#ffba00;color:#fff;line-height:70px;font-size:17px;font-weight:bold;padding:0px 10px;}
		#schedule_full_box .title_box .sub{font-size:13px;color:#fff;font-weight:normal;text-decoration:underline;}
		.day_item{width:100%;height:86px;border-bottom:solid #a7a7a7 1px;padding-left:10px;cursor:pointer;position:relative;overflow:hidden;}
		.day_item.hover{height:auto;}
		.day_item.edit{cursor:move;}
		.day_item:hover{background:#f7f7f7;}
		.day_item_circle{width:73px;height:73px;background:url('/res/img/workspace/schedule_day_box.png');position:relative;}
		.day_item_circle .day{font-size:20px;color:#46b5f1;position:absolute;top:20px;width:73px;text-align:center;}
		.day_item_circle .date{font-size:13px;color:#808080;position:absolute;top:45px;width:73px;text-align:center;}
		
		#clip_list{width:265px;z-index:999;position:absolute;left:0px;height:100%;background:#fff;display:none;}
		#city_list{width:265px;z-index:999;position:absolute;left:0px;height:100%;background:#fff;display:none;}
		#hotel_list{width:265px;z-index:999;position:absolute;left:0px;height:100%;background:#fff;display:none;}
		#transport_list{width:265px;z-index:999;position:absolute;left:0px;height:100%;background:#fff;display:none;}
		.back_btn{width:13px;height:23px;background:url('/res/img/workspace/back_btn.png');margin-top:22px;cursor:pointer;}
		#city_list_title{display:none;}
		#country_list_title .sub{cursor:pointer;}
		
		.ui-sortable-helper{border:solid #1a7ad9 1px;background:#f7f7f7;height:86px;}
		.ui-draggable-dragging{border:solid #1a7ad9 1px;background:#f7f7f7;height:86px;}
		.ui-state-highlight {background:#fff;height:86px;}
		
		.list_box{overflow-y:scroll;background:#fff;}
		#add_plan_day{width:218px;height:42px;line-height:42px;text-align:center;color:#46b5f1;border:solid #46b5f1 1px;font-size:15px;margin:0 auto;margin-top:10px;cursor:pointer;}
		.spot_distance_box{height:21px;line-height:21px;background:#fff;border:solid #cacaca 1px;font-size:11px;color:#808080;position:absolute;padding:0px 5px;margin-top:-25px;}
		.spot_distance_box:hover{text-decoration:underline;}
		#ddFrame {position: absolute;top:10px !important;right:10px !important;left:initial !important; border: 1px solid #ccc; width: 25%; height: 520px; background: rgb(255, 255, 255); background: rgba(255, 255, 255, 0.8); padding: 0px 0px; z-index: 40;}
		#ddBox {overflow-y: scroll; width: 97%; height: 500px; margin: 0px; border: 2px solid #fff; border-top: 16px solid #fff; }
		#ddBoxClose {background: url(http://earthtory.com/res/img/map/direction_close.png) no-repeat; height: 16px; width: 16px; cursor: pointer;}
		#ddBoxPrint {background: url(http://earthtory.com/images/print.png) no-repeat; height: 16px; width: 26px;padding-left: 20px ;left: 4px !important; cursor: pointer; text-decoration: none; color: #66e}
	</style>
	
	<!-- <script type="text/javascript">
	
	</script> -->
	<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>
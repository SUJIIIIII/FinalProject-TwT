<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
<script type="text/javascript">
$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
	 
	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
		 
		/* 애니메이션 없이 바로 따라감
		$("#floatMenu").css('top', newPosition);
		*/
		 
		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);
	 
	}).scroll();
 
});

</script>
<style type="text/css">
#floatMenu {
position: absolute;
width: 4%;
height: 41%;
left: 93%;
bottom: 1%;
}
.side { 
width:55px;
height:55px;
border-radius:50%;
background-color:#393e46;
margin-bottom:20%;
cursor:pointer;
}
/* .side { 
width:55px;
height:55px;
border-radius:50%;
background-color:#393e46;
margin-bottom:20px;
cursor:pointer;
} */
</style>
</head>
<body>
<div id="floatMenu" style="z-index: 10">
   <a href="#body">
	   <div class="side">
	     <i class="fas fa-arrow-up fa-2x" style="color:white; margin-left:15px; margin-top:13px;"></i>
	   </div>
   </a>
   
   <div class="side">
    <i class="far fa-comment-dots fa-2x" style="color:white; margin-left:13.5px; margin-top:12.5px;"></i>
   </div>
   
   <div id="frogue-container" class="position-right-bottom" style="margin-left:13.5px;"
      data-chatbot="9ab40948-b4ff-48bc-9d83-7c67a7809af9"
      data-user="사용자ID"
      data-init-key="value"
      ></div>
   
   <a href="#footer">
	   <div class="side">
	     <i class="fas fa-arrow-down fa-2x" style="color:white; margin-left:15px; margin-top:13px;"></i>
	   </div>
   </a>
</div>
<!-- <script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('d3c7b1de1797e1b67988df559b0c2a0c');
    function chatChannel() {
      Kakao.Channel.chat({
        channelPublicId: '_IxkKTxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
      });
    }
  //]]> 
</script> -->

<!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
<script>
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'frogue-embed'));
</script>
</body>
</html>
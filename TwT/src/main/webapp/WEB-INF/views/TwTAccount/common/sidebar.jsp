<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/chat.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/chat.js"></script>

  <script src="http://localhost:82/socket.io/socket.io.js"></script>
	<script>
		$(document).ready(function(){
		    var socket = io("http://localhost:82");
		    
            $("#msg").keydown(function(key){
                //해당하는 키가 엔터키(13) 일떄
                if(key.keyCode == 13){
                    //msg_process를 클릭해준다.
                    msg_process.click();
                }
            });

            $("#msg_process").click(function(){
                //소켓에 send_msg라는 이벤트로 input에 #msg의 벨류를 담고 보내준다.
                 socket.emit("send_msg", $("#msg").val());
                //#msg에 벨류값을 비워준다.
                $("#msg").val("");
            });
            
            //소켓 서버로 부터 send_msg를 통해 이벤트를 받을 경우 
            socket.on('send_msg', function(msg) {
                //div 태그를 만들어 텍스트를 msg로 지정을 한뒤 #chat_box에 추가를 시켜준다.
                $('<div class="message parker"></div>').text(msg).appendTo("#chat");
            });
		});
	</script>

<script type="text/javascript">
$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
	var chatPosition = parseInt($("#chats").css('top'));
	
	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
		var newPosition2 = scrollTop + chatPosition + "px";
		/* 애니메이션 없이 바로 따라감
		$("#floatMenu").css('top', newPosition);
		*/
		 
		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);

		$("#chats").stop().animate({
		"top" : newPosition2
		}, 500);
		 
	}).scroll();
	
	hideChat();

	$('#prime').click(function() {
		$(".center").toggle();
	});

});
	/* chat */
	function hideChat() {
		$('.center').css('display', 'none');
	    };
	/* chat */
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
<!-- chat -->
<div class="center" id="chats">
  <div class="contacts" style="overflow: auto;" id="chatlist">
    <div style="padding-bottom: 20px;">
    <i class="fas fa-plus fa-2x"><a href="#"></a></i>
	</div>
	
	<!-- 채팅방 start -->
    <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
        <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
        <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
        <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
        <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
        <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
        <div class="contact">
      <div class="pic rogers"></div>
      <div class="badge">
        14
      </div>
      <div class="name">
        Steve Rogers
      </div>
      <div class="message">
        That is America's ass 🇺🇸🍑
      </div>
    </div>
    <!-- 채팅방 end -->
    
  </div>
  <div class="chat">
  	<!-- 채팅방 정보 -->
    <div class="contact bar">
      <div class="pic stark"></div>
      <div class="name">
        Tony Stark
      </div>
      <div class="seen">
        Today at 12:56
      </div>
    </div>
    
    <div class="messages" id="chat" style="height: 100%">
      <!-- 날짜 -->
      <div class="time">
        Today at 11:41
      </div>
      
      <div class="message parker">
        Hey, man! What's up, Mr Stark? 👋
      </div>
      <div class="message stark">
        Kid, where'd you come from? 
      </div>
<!-- 
      <div class="message stark">
        <div class="typing typing-1"></div>
        <div class="typing typing-2"></div>
        <div class="typing typing-3"></div>
      </div>

 -->
     </div>
    <div class="input">
      <!-- 
      <i class="fas fa-camera"></i>
      <i class="far fa-laugh-beam"></i>
       -->
      <input placeholder="메세지 입력" type="text" id="msg"/>
      <button id="msg_process" style="border: 0; outline: 0; background-color: rgba(0,0,0,0);"><i class="fas fa-comment"></i></button>
    </div>
  </div>
</div>
<!-- chat -->

<div id="floatMenu" style="z-index: 10">
   <a href="#body">
	   <div class="side">
	     <i class="fas fa-arrow-up fa-2x" style="color:white; margin-left:15px; margin-top:13px;"></i>
	   </div>
   </a>
   
   <div class="side" id="prime">
    <i class="far fa-comment-dots fa-2x" style="color:white; margin-left:13.5px; margin-top:12.5px;"></i>
   </div>
   
   <div>
     <img src="${pageContext.request.contextPath}/resources/images/account/side_kakao.png" width="55" style="cursor:pointer; margin-bottom:20px;">
   </div>
   <a href="#footer">
	   <div class="side">
	     <i class="fas fa-arrow-down fa-2x" style="color:white; margin-left:15px; margin-top:13px;"></i>
	   </div>
   </a>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css'>
<link rel="stylesheet" href="chat.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src="chat.js"></script>
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
width: 100px;
height: 200px;
left: 1400px;
top: 420px;
}

.side { width:55px;
          height:55px;
          border-radius:50%;
          background-color:#393e46;
          margin-bottom:20px;
          cursor:pointer;
         }
</style>
</head>
<body>

<!-- chat -->
<div class="center" id="chats">
  <div class="contacts" id="chatlist">
    <i class="fas fa-bars fa-2x"></i>
    <h2 class="h2">
    </h2>
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
      <div class="pic stark"></div>
      <div class="name">
        Tony Stark
      </div>
      <div class="message">
        Uh, he's from space, he came here to steal a necklace from a wizard.
      </div>
    </div>
    <div class="contact">
      <div class="pic banner"></div>
      <div class="badge">
        1
      </div>
      <div class="name">
        Bruce Banner
      </div>
      <div class="message">
        There's an Ant-Man *and* a Spider-Man?
      </div>
    </div>
    <div class="contact">
      <div class="pic thor"></div>
      <div class="name">
        Thor Odinson
      </div>
      <div class="badge">
        3
      </div>
      <div class="message">
        I like this one
      </div>
    </div>
    <div class="contact">
      <div class="pic danvers"></div>
      <div class="badge">
        2
      </div>
      <div class="name">
        Carol Danvers
      </div>
      <div class="message">
        Hey Peter Parker, you got something for me?
      </div>
    </div>
  </div>
  <div class="chat">
    <div class="contact bar">
      <div class="pic stark"></div>
      <div class="name">
        Tony Stark
      </div>
      <div class="seen">
        Today at 12:56
      </div>
    </div>
    <div class="messages" id="chat">
      <div class="time">
        Today at 11:41
      </div>
      <div class="message parker">
        Hey, man! What's up, Mr Stark? 👋
      </div>
      <div class="message stark">
        Kid, where'd you come from? 
      </div>
      <div class="message parker">
        Field trip! 🤣
      </div>
      <div class="message parker">
        Uh, what is this guy's problem, Mr. Stark? 🤔
      </div>
      <div class="message stark">
        Uh, he's from space, he came here to steal a necklace from a wizard.
      </div>
      <div class="message stark">
        <div class="typing typing-1"></div>
        <div class="typing typing-2"></div>
        <div class="typing typing-3"></div>
      </div>
    </div>
    <div class="input">
      <i class="fas fa-camera"></i><i class="far fa-laugh-beam"></i><input placeholder="Type your message here!" type="text" /><i class="fas fa-microphone"></i>
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
   
   <div class="side">
    <a id="prime"><i class="far fa-comment-dots fa-2x" style="color:white; margin-left:13.5px; margin-top:12.5px;"></i></a>
   </div>
   
   <div>
     <img src="<%=request.getContextPath()%>/TwTAccount/images/side_kakao.png" width="55" style="cursor:pointer; margin-bottom:20px;">
   </div>
   <a href="#footer">
	   <div class="side">
	     <i class="fas fa-arrow-down fa-2x" style="color:white; margin-left:15px; margin-top:13px;"></i>
	   </div>
   </a>
</div>
</body>
</html>
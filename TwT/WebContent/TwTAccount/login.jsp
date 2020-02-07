<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jquery-3.2.1.min.js"></script>
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
    background-color:#F85959;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin:0;
}

h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

button {
	border-radius: 20px;
	border: 1px solid #fc3c3c;
	background-color: #fc3c3c;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

button:active {
	transform: scale(0.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
}

button.ghost2 {
	background-color: transparent;
	border:2px solid #FFFFFF;
}

form {
    width:600px;
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 100px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #f2f2f2;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 960px;
	max-width: 100%;
	min-height: 600px;
}

.form-container {
	position: absolute;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.right-panel-active .sign-up-container {
	transform: translateX(75%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}

@keyframes show {
	0%, 49.99% {
		opacity: 0;
		z-index: 1;
	}
	
	50%, 100% {
		opacity: 1;
		z-index: 5;
	}
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 37.5%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
	margin-left:120px;
}

.container.right-panel-active .overlay-container{
	transform: translateX(-167%);
}

.overlay {
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
  	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
  	transform: translateX(50%);
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	width:360px;
	background-image:url("images/login_key.jpg");
	background-size:cover;

}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
	width:360px;
	background-image:url("images/login_key.jpg");
	background-size:cover;

}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 50px;
	width: 50px;
}

footer {
    background-color: #222;
    color: #fff;
    font-size: 14px;
    bottom: 0;
    position: fixed;
    left: 0;
    right: 0;
    text-align: center;
    z-index: 999;
}

footer p {
    margin: 10px 0;
}

footer i {
    color: red;
}
/*  */
/**/
footer a {
    color: #3c97bf;
    text-decoration: none;
}

a:hover { color:#fc3c3c; }
</style>
<title>TWT - Login</title>
</head>
<body>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="#">
			<img src="images/register.png" width="40"><h1>Create Account</h1><br>
			<%-- TODO : 아이디 중복체크 하단에 실시간으로 알리기 --%>
			<input type="text" placeholder="ID" style="border-left:3px solid #fc3c3c;" />
			<input type="email" placeholder="Email" style="border-left:3px solid #fc3c3c;" />
			<input type="text" placeholder="Name" style="border-left:3px solid #fc3c3c;" />
			<%-- TODO : 비밀번호 조건(대소문자/숫자포함 5자리이상)을 만족하지 않으면 하단에 실시간으로 글자띄우기, 만족하면 초록색으로 조건을 만족합니다 --%>
			<input type="password" placeholder="Password" style="border-left:3px solid #fc3c3c;" />
			<%-- TODO : 상단의 비밀번호와 일치하면 초록색으로 비밀번호가 일치합니다 --%>
			<input type="password" placeholder="Password Check" style="border-left:3px solid #fc3c3c;"/><br>
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="#">
			<img src="images/lock.png" width="40"><h1>LOGIN</h1>
			<div class="social-container">
				<a href="#" class="social"><img src="images/kakao.png" style="border-radius:50px;"></a>
				<a href="#" class="social"><img src="images/naver.png" style="border-radius:50px;"></a>
				<a href="#" class="social"><img src="images/google.png" style="border-radius:50px;"></a>
			</div>
			<input type="text" placeholder="ID" style="border-left:3px solid #fc3c3c;"/>
			<input type="password" placeholder="Password" style="border-left:3px solid #fc3c3c;"/>
			<a href="#" style="font-size:12px; margin-right:-280px;" class="find">Forgot your password?</a>
			<button>Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost2" id="signIn" style="margin-top:280px;">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost2" id="signUp" style="margin-top:190px;">Sign Up</button>
			</div>
		</div>
	</div>
</div>

<%-- 로그인 판넬 이동 자바스크립트 시작 --%>
<script type="text/javascript">
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
<%-- 로그인 판넬 이동 자바스크립트 끝 --%>
</script>
</body>
</html>
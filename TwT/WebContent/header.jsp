<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kalam&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Patrick+Hand&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">TwT</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="<%=request.getContextPath()%>/index.jsp" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="<%=request.getContextPath()%>/TwTPlan/plan_create.jsp" class="nav-link">Plan</a></li>
          <li id="nav1" class="nav-item"><a href="<%=request.getContextPath()%>/TwTFlight/flight_main.jsp" class="nav-link">Flight</a></li>
          <li id="nav2" class="nav-item"><a href="<%=request.getContextPath()%>/TwTHotel/hotel_list.jsp" class="nav-link">Hotels</a></li>
          <li id="nav3" class="nav-item"><a href="<%=request.getContextPath()%>/TwTCommunity/community_list.jsp" class="nav-link">Community</a></li>
          <li id="nav4" class="nav-item"><a href="<%=request.getContextPath()%>/TwTAccount/mypage.jsp" class="nav-link"><i class="fas fa-user"></i>&nbsp;My</a></li>
          <li class="nav-item cta"><a href="<%=request.getContextPath()%>/TwTAccount/login.jsp" class="nav-link"><span>Login</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_5.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <!-- <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Hotel</span></p> -->
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" style="font-family: 'Kalam', cursive;"></h1>
            <!-- <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" style="font-family: 'Kaushan Script', cursive;"></h1> -->
          </div>
        </div>
      </div>
    </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>여행 일정</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
    <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
<script src="https://kit.fontawesome.com/6953482b42.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
/* $(function () {
	  // Smooth Scroll
	  $('a[href*=#]').bind('click', function(e){
	    var anchor = $(this);
	    $('html, body').stop().animate({
	      scrollTop: $(anchor.attr('href')).offset().top
	    }, 1000);
	    e.preventDefault();
	  });
	}); */
</script>

<style type="text/css">
/*** Header ***/
header { padding: 30px 0; background-color: #6f5499; color: #fff; }
  header h1 { margin: 0; }
  header h3 { margin: 0; color: rgba(255,255,255,.4); }

/*** Nav ***/
.navbar-default { background-color: #f5f5f5; box-shadow: 0 1px 0 0 rgba(0,0,0,0.1); }
  .navbar-default .nav>li>a:focus, 
  .navbar-default .nav>li>a:hover { background-color: #e5e5e5; }

/*** Content ***/
main {}
  .i-row { padding-top: 40px; padding-bottom: 40px; }
  .i-row-odd { background-color: #f2f2f2; }
  .i-row-even { background-color: #e8e8e8; }

.section-title { margin-top: 0; margin-bottom: 0.6em; font-weight: 500; }
.section-title .fa { margin-right: 5px; color: #6f5499; }

/* Other */
.services-list {
  margin: 0 -5px;
  padding: 0;
  list-style: none;
}
.services-list > div {
  padding-left: 5px;
  padding-right: 5px;
}

/* Timeline */
.timeline {
    position: relative;
    display: block;
    margin: 0;
    padding: 10px 0;
}
.timeline:after, .timeline:before {
    content: " ";
    display: table;
}
.timeline:after {
    clear: both;
}
.timeline, .timeline>li {
    list-style: none;
}
.timeline>li:nth-child(even) {
    float: left;
    clear: left;
}
.timeline>li:nth-child(odd) {
    float: right;
    clear: right;
}
.timeline-line {
    display: inline-block;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 50%;
    width: 4px;
    background-color: #eee;
    -webkit-transform: translate(-50%, 0);
    transform: translate(-50%, 0);
}
.timeline-line+.timeline-item {
    margin-top: -20px;
}
.timeline-group {
    display: block;
    position: relative;
    margin: 20px 0;
    text-align: center;
    float: none!important;
    z-index: 1;
}
.timeline-poster {
    margin-top: -20px;
}
.timeline-poster .btn-link {
    color: #a1aab0;
}
.timeline-poster .btn-link.active, .timeline-poster .btn-link:active, .timeline-poster .btn-link:focus, .timeline-poster .btn-link:hover {
    color: #3e5771;
}
.timeline-item {
    position: relative;
    display: inline-block;
    width: 50%;
    padding: 0 30px 20px;
}
.timeline-item:nth-child(even):after, .timeline-item:nth-child(even):before {
    content: '';
    position: absolute;
    right: 19px;
    top: 10px;
    width: 0;
    height: 0;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent;
    border-left: 12px solid #ccc;
    z-index: 1;
}
.timeline-item:nth-child(even):after {
    right: 20px;
    top: 11px;
    border-top: 11px solid transparent;
    border-bottom: 11px solid transparent;
    border-left: 11px solid #fff;
}
.timeline-item:nth-child(even)>.timeline-badge {
    right: -6px;
}
.timeline-item:nth-child(odd):after, .timeline-item:nth-child(odd):before {
    content: '';
    position: absolute;
    left: 19px;
    top: 10px;
    width: 0;
    height: 0;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent;
    border-right: 12px solid #ccc;
    z-index: 1;
}
.timeline-item:nth-child(odd):after {
    left: 20px;
    top: 11px;
    border-top: 11px solid transparent;
    border-bottom: 11px solid transparent;
    border-right: 11px solid #fff;
}
.timeline-item:nth-child(odd)>.timeline-badge {
    left: -6px;
}
.timeline-item.block:nth-child(even), .timeline-item.block:nth-child(odd) {
    width: 100%;
    margin-top: 5px;
}
.timeline-item.block:nth-child(even):after, .timeline-item.block:nth-child(even):before, .timeline-item.block:nth-child(odd):after, .timeline-item.block:nth-child(odd):before {
    left: 50%;
    right: auto;
    top: -11px;
    border: 0;
    border-left: 12px solid transparent;
    border-right: 12px solid transparent;
    border-bottom: 12px solid #ccc;
    -webkit-transform: translate(-50%, 0);
    transform: translate(-50%, 0);
}
.timeline-item.block:nth-child(even):after, .timeline-item.block:nth-child(odd):after {
    top: -10px;
    border: 0;
    border-left: 11px solid transparent;
    border-right: 11px solid transparent;
    border-bottom: 11px solid #fff;
}
.timeline-item.block:nth-child(even)>.timeline-badge, .timeline-item.block:nth-child(odd)>.timeline-badge {
    top: -28px;
    left: 50%;
    right: auto;
    -webkit-transform: translate(-50%, 0);
    transform: translate(-50%, 0);
}
.timeline-item>.timeline-badge {
    position: absolute;
    top: 12px;
    z-index: 1;
}
.timeline-item>.timeline-badge>a {
    display: inline-block;
    width: 12px;
    height: 12px;
    border: 2px solid #999;
    border-radius: 24px;
    background-color: #fff;
    text-decoration: none;
    transition: all ease .3s;
}
.timeline-item>.timeline-badge>a.active, .timeline-item>.timeline-badge>a:active, .timeline-item>.timeline-badge>a:focus, .timeline-item>.timeline-badge>a:hover {
    -webkit-transform: scale(1.5);
    transform: scale(1.5);
}
.timeline-item>.timeline-panel {
    position: relative;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 4px;
}
.timeline-item>.timeline-panel:hover .timeline-actions {
    display: block;
}
.timeline-actions {
    display: none;
}
.timeline-content, .timeline-footer, .timeline-heading, .timeline-liveliness {
    padding: 15px;
}
.timeline-heading+.timeline-content {
    padding-top: 0;
}
.timeline-date {
    font-size: 14px;
    color: #aaa;
}
.timeline-embed {
    position: relative;
    padding-bottom: 56.25%;
    padding-top: 25px;
    height: 0;
}
.timeline-embed .embed-element, .timeline-embed embed, .timeline-embed iframe, .timeline-embed object {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%}
.timeline-img {
    display: block;
    padding: 5px 0;
}
.timeline-img.first {
    margin-right: -10px;
}
.timeline-img.middle {
    margin-right: -10px;
    margin-left: -10px;
}
.timeline-img.last {
    margin-left: -10px;
}
.timeline-footer, .timeline-liveliness, .timeline-resume {
    border-top: 1px solid #eee;
    background-color: #fbfcfc;
}
.timeline-footer {
    border-radius: 0 0 5px 5px;
}
.timeline-avatar {
    margin-top: -2px;
    margin-right: 10px;
}
.timeline-title {
    margin: 0;
    padding: 0;
    font-size: 14px;
    line-height: 1.42857;
    font-weight: 600;
    color: #3e5771;
    text-decoration: none;
}
.timeline-title>small {
    display: block;
    font-size: 12px;
    line-height: 1.5;
    color: #a1aab0;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.timeline .media {
    border-bottom: 1px solid #eee;
}
.timeline .media, .timeline .media p {
    font-size: 13px;
}
.timeline .media:last-child {
    border-bottom: 0;
}
@media (max-width:991px) {
    .timeline {
    padding-left: 15px;
}
.timeline-line {
    left: 15px;
}
.timeline-group {
    display: inline-block;
    margin-left: 4px;
}
.timeline-item {
    width: 100%;
    margin-top: 0!important;
    padding-right: 10px;
}
.timeline-item.block:nth-child(even), .timeline-item.block:nth-child(odd) {
    padding-bottom: 0;
}
.timeline-item.block:nth-child(even):after, .timeline-item.block:nth-child(even):before, .timeline-item.block:nth-child(odd):after, .timeline-item.block:nth-child(odd):before, .timeline-item:nth-child(even):after, .timeline-item:nth-child(even):before, .timeline-item:nth-child(odd):after, .timeline-item:nth-child(odd):before {
    left: 19px;
    top: 10px;
    border: 0;
    border-top: 12px solid transparent;
    border-bottom: 12px solid transparent;
    border-right: 12px solid #ccc;
    -webkit-transform: translate(0, 0);
    transform: translate(0, 0);
}
.timeline-item.block:nth-child(even):after, .timeline-item.block:nth-child(odd):after, .timeline-item:nth-child(even):after, .timeline-item:nth-child(odd):after {
    left: 20px;
    top: 11px;
    border-top: 11px solid transparent;
    border-bottom: 11px solid transparent;
    border-right: 11px solid #fff;
}
.timeline-item.block:nth-child(even)>.timeline-badge, .timeline-item.block:nth-child(odd)>.timeline-badge, .timeline-item:nth-child(even)>.timeline-badge, .timeline-item:nth-child(odd)>.timeline-badge {
    top: 12px;
    left: -6px;
    right: auto;
    -webkit-transform: translate(0, 0);
    transform: translate(0, 0);
}
}@media (max-width:480px) {
    .timeline {
    padding: 0;
}
.timeline-line {
    display: none;
}
.timeline-item {
    display: block;
    padding: 0 0 20px!important;
}
.timeline-item.block:nth-child(even), .timeline-item.block:nth-child(odd), .timeline-item:nth-child(even), .timeline-item:nth-child(odd) {
    float: none;
    clear: both;
}
.timeline-item.block:nth-child(even):after, .timeline-item.block:nth-child(even):before, .timeline-item.block:nth-child(odd):after, .timeline-item.block:nth-child(odd):before, .timeline-item.timeline-poster>.timeline-badge, .timeline-item:nth-child(even):after, .timeline-item:nth-child(even):before, .timeline-item:nth-child(odd):after, .timeline-item:nth-child(odd):before {
    display: none;
}
.timeline-item>.timeline-badge {
    top: -8px!important;
    left: 50%!important;
    margin-left: -6px;
}
}.wrapkit-content-rtl .timeline-avatar {
    margin-right: 0;
    margin-left: 10px;
}

.timeline-heading { font-size: 20px; }

.plan_info_box {
    border: 1px solid white;
    background: url(/res/img/component/bg/bgb_40.png) repeat;
    height: 30px;
    line-height: 30px;
    margin-right: 10px;
    padding-left: 10px;
    padding-right: 10px;
    margin-top: -25px;
}
.cnt_spot, .cnt_view, .cnt_copy {
    float: left;
    height: 28px;
    line-height: 32px;
    font-size: 12px;
    font-weight: bold;
}
.cnt_spot {
    float: left;
    padding-left: 18px;
    background: url(/res/img/mypage/plan/sub/cnt_spot.png) no-repeat;
    background-position: left center;
}
.cnt_view {
    float: left;
    padding-left: 22px;
    background: url(/res/img/mypage/plan/sub/cnt_view.png) no-repeat;
    background-position: left center;
    margin-left: 12px;
}
.cnt_copy {
    float: left;
    padding-left: 20px;
    background: url(/res/img/mypage/plan/sub/cnt_copy.png) no-repeat;
    background-position: left center;
    margin-left: 12px;
}
</style>

  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">dirEngine.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
          <li class="nav-item"><a href="tour.html" class="nav-link">Tour</a></li>
          <li class="nav-item"><a href="hotel.html" class="nav-link">Hotels</a></li>
          <li class="nav-item active"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_4.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="blog.jsp">TRABLE SCHEDULE</a></span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">SCHEDULE DETAIL</h1>
          </div>
        </div>
      </div>
    </div>


   <!-- 폼 넣는 위치 -->
   <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate">
		<p>
		<i class="far fa-kiss-wink-heart fa-2x" style="float: right; margin-top: 30px; margin-right: 30px;"></i>
		<i class="far fa-thumbs-up fa-2x" style="float: right; margin-top: 30px; margin-right: 30px;"></i>
		<i class="far fa-heart fa-2x" style="float: right; margin-top: 30px; margin-right: 30px;"></i>
		</p>
          <p style="text-align: center; margin-top: 100px; margin-bottom: 30px; font-weight:bold;"><i class="fas fa-user"></i> (아이디)님의 여행일정</p>
          
            <h2 class="mb-3" style="text-align: center; margin-top: 20px; font-weight: bold;">제목</h2>
            <div class="plan_info" style="float: right; margin-top: 20px;">
					<div class="plan_info_box">
						<div class="cnt_spot">
						<i class="fas fa-map-marker-alt fa-2x"></i>
						장소
						</div>
						<div class="cnt_view">
						<i class="far fa-eye fa-2x"></i>
						조회수
						</div>
						<div class="cnt_copy">
						<i class="fas fa-heart fa-2x"></i>
						찜횟수
						</div>
					</div>

				</div>
				
 <main id="home" class="contents">
  <div class="container">
    <h3 class="page-title text-center" style="margin-top: 70px; color: silver; font-size: 17px;"><i class="fas fa-calendar-alt"></i> 2020.02.03~2020.02.06(여행기간)</h3>
    
    <c:forEach items="${detailList}" var="dList">
    <ul class="timeline">
      <li class="timeline-line"></li>
      <li class="timeline-group">
        <a href="#" class="btn btn-primary"><i class="fa fa-calendar"></i> 2020.02.03 <br>${dList.ts_Day }</a>
      </li>
    </ul>
    <ul class="timeline">
      <li class="timeline-line"></li>
      
      <li class="timeline-item">
        <div class="timeline-badge"><a href="#"></a></div>
        <div class="timeline-panel">
          <div class="timeline-heading">
            	지역 이름
            <div class="timeline-date"><i class="fas fa-tag"></i> 지역 설명 태그</div>
          </div>
          <div class="timeline-content">
            <ul>
              <li><code>CSS</code> added line 205 to 207 for <i>timeline date</i></li>
            </ul>
          </div>
          <div class="timeline-footer">
            <small class="text-muted"><i class="far fa-file-alt fas-2x"></i> 메모?</small>
          </div>
        </div>
      </li>
    </ul>
	</c:forEach>

    <ul class="timeline">
      <li class="timeline-line"></li>
      <li class="timeline-group">
        <a href="#" class="btn btn-primary"><i class="fa fa-calendar"></i> DAY2</a>
      </li>
    </ul>
    <ul class="timeline">
      <li class="timeline-line"></li><!-- /.timeline-line -->
       <li class="timeline-item">
        <div class="timeline-badge"><a href="#"></a></div>
        <div class="timeline-panel">
          <div class="timeline-heading">
            	지역 이름
            <div class="timeline-date"><i class="fas fa-tag"></i> 지역 설명 태그</div>
          </div>
          <div class="timeline-content">
            <ul>
              <li><code>CSS</code> added line 205 to 207 for <i>timeline date</i></li>
              <li><code>CSS</code> changed line @ 269 from <i>1199px to 991px</i></li>
              <li><code>HTML</code> + <code>CSS</code> and many more ... </li>
            </ul>
          </div>
          <div class="timeline-footer">
            <small class="text-muted"><i class="far fa-file-alt far-2x"></i> 메모?</small>
          </div>
        </div>
      </li>
    </ul>
  </div>
            

            
            <div class="tag-widget post-tag-container mb-5 mt-5">
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">Life</a>
                <a href="#" class="tag-cloud-link">Sport</a>
                <a href="#" class="tag-cloud-link">Tech</a>
                <a href="#" class="tag-cloud-link">Travel</a>
              </div>
            </div>
            
            <div class="pt-5 mt-5">
              <h3 class="mb-5">6 Comments</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>John Doe</h3>
                    <div class="meta">June 27, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>John Doe</h3>
                    <div class="meta">June 27, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>

                  <ul class="children">
                    <li class="comment">
                      <div class="vcard bio">
                        <img src="images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>John Doe</h3>
                        <div class="meta">June 27, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard bio">
                            <img src="images/person_1.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>John Doe</h3>
                            <div class="meta">June 27, 2018 at 2:21pm</div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                            <p><a href="#" class="reply">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard bio">
                                  <img src="images/person_1.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>John Doe</h3>
                                  <div class="meta">June 27, 2018 at 2:21pm</div>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                  <p><a href="#" class="reply">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>John Doe</h3>
                    <div class="meta">June 27, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">Leave a comment</h3>
                <form action="#" class="p-5 bg-light" style="margin-bottom:50px; ">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div>

                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                  </div>

                </form>
              </div>
            </div>

          </div> 
          
          <!-- .col-md-8 -->
          <div class="col-md-4 sidebar ftco-animate">
            <!-- <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon fa fa-search"></span>
                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                </div>
              </form>
            </div>
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">Tour <span>(12)</span></a></li>
                <li><a href="#">Hotel <span>(22)</span></a></li>
                <li><a href="#">Coffee <span>(37)</span></a></li>
                <li><a href="#">Drinks <span>(42)</span></a></li>
                <li><a href="#">Foods <span>(14)</span></a></li>
                <li><a href="#">Travel <span>(140)</span></a></li>
              </div>
            </div> -->

            <div class="sidebar-box ftco-animate">
              <h3><i class="fas fa-clipboard-list"></i> Recent Blog</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><i class="fa fa-calendar"></i> 날짜</a></div>
                    <div><a href="#"><i class="fas fa-user"></i> 아이디</a></div>
                    <div><a href="#"><i class="far fa-eye far-2x"></i> 조회수</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><i class="fa fa-calendar"></i> 날짜</a></div>
                    <div><a href="#"><i class="fas fa-user"></i> 아이디</a></div>
                    <div><a href="#"><i class="far fa-eye far-2x"></i> 조회수</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><i class="fa fa-calendar"></i> 날짜</a></div>
                    <div><a href="#"><i class="fas fa-user"></i> 아이디</a></div>
                    <div><a href="#"><i class="far fa-eye far-2x"></i> 조회수</a></div>
                  </div>
                </div>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3><i class="fas fa-hashtag"></i> Tag Cloud</h3>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">dish</a>
                <a href="#" class="tag-cloud-link">menu</a>
                <a href="#" class="tag-cloud-link">food</a>
                <a href="#" class="tag-cloud-link">sweet</a>
                <a href="#" class="tag-cloud-link">tasty</a>
                <a href="#" class="tag-cloud-link">delicious</a>
                <a href="#" class="tag-cloud-link">desserts</a>
                <a href="#" class="tag-cloud-link">drinks</a>
              </div>
            </div>

            <!-- <div class="sidebar-box ftco-animate">
              <h3>Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div> -->
            
          </div>

        </div>
      </div>
    </section> <!-- .section -->

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">dirEngine</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Service</a></li>
                <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Become a partner</a></li>
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TWT - Community</title>

<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/scss/bootstrap/bootstrap.scss">
<!-- <link rel="stylesheet" href="css/style.css"> -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/form.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/TwTCommunity/css/community_insert_css.css">

<script type="text/javascript">
	$(document).ready(function() {
		$("#sidebar").load("common/sidebar.html")
	});

	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
	
	$(document).ready(function() {
		  $('#summernote').summernote({
		        minHeight: 600,
		        maxHeight: null,
		        focus: true, 
		        lang : 'ko-KR'
		  });
		});
</script>
<style type="text/css">
body {
	background-image: url("<%=request.getContextPath()%>/TwTAccount/images/mypage_bg.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
.btns.btns-primary.btns-outline-primary:hover {
    border: 1px solid #fc3c3c;
    background: #fc3c3c;
    color: #fff;
}
.btns.btns-primary.btns-outline-primary {
    border: 1px solid #fc3c3c;
    background: transparent;
    color: #fc3c3c;
}

</style>
</head>
<body>
	<div class="col-sm-9" id="container">

		<div class="col-sm-12" style="float: left; margin-top: 30px;">
			<div class="title">
				<input type="text" placeholder="제목"/>
			</div>
			<br> <br> <br> <br>

			<div class="row row-cols-1 row-cols-md-3">
				<div class="col mb-4">
					<div class="card h-100">
						<textarea id="summernote" name="content" class="card-img-top" alt="..."></textarea>
					</div>
				</div>
			</div>
		</div>

		<div align="center">
			<a href="#" style="text-decoration: none;" class="btns btns-primary btns-outline-primary mt-4 px-4 py-3">등록</a>&nbsp;&nbsp;&nbsp;
			<a href="#" style="text-decoration: none;" class="btns btns-primary btns-outline-primary mt-4 px-4 py-3">취소</a>
		</div>
	</div>
</body>
</html>
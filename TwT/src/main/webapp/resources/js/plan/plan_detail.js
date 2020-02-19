$(document).ready(function(){
	$('#date_pick_btn').click(function(){
		$('#date_pick').show();
	});
	
	
/*	$('#date_pick').datepicker({
		  numberOfMonths:1,
		  prevText:'',
		  nextText:'',
		  monthNames : [
								'1월', //1월', 
								'2월', //2월', 
								'3월', //3월', 
								'4월', //4월', 
								'5월', //5월', 
								'6월', //6월', 
								'7월', //7월', 
								'8월', //8월', 
								'9월', //9월', 
								'10월', //10월', 
								'11월', //11월', 
								'12월'], //12월'],
		  monthNamesShort : [
								'1월', //1월', 
								'2월', //2월', 
								'3월', //3월', 
								'4월', //4월', 
								'5월', //5월', 
								'6월', //6월', 
								'7월', //7월', 
								'8월', //8월', 
								'9월', //9월', 
								'10월', //10월', 
								'11월', //11월', 
								'12월'], //12월'],
		  dayNames:['SUN','MON','TUE','WED','THU','FRI','SAT'],
		  dayNamesShort:['SUN','MON','TUE','WED','THU','FRI','SAT'],
		  dayNamesMin:['SUN','MON','TUE','WED','THU','FRI','SAT'],
		  dateFormat:'yy-mm-dd',
		  onSelect: function (dateText, inst) {
			  $('#overlay_day_edit .start_date').text(dateText);
			 // $('#date_pick_btn').attr('data',dateText);
			  $('#date_pick').fadeOut();
		  },
		  onClose:function(selectedDate){
					var _this_start_day = selectedDate;
		  }
		}); // DatePicker End
*/	
	// 일정에 MouseHover 했을때 동작
	$(document).on("mouseenter",".day_spot_item",function(){
		$(this).children(".item_ctrl_box").css("display", "block" );
	});
	
	$(document).on("mouseleave",".day_spot_item",function(){
		$(this).children(".item_ctrl_box").css("display", "none" );
	});
	



// 일정에 여행지 추가하기
$(".spot_to_inspot").on("click", function() {
	var spot_name = $(this).parent().data("name"); // 여행지명
	var spot_type = $(this).parent().data("type"); // 여행지 타입
	var spot_no = $(this).parent().data("no"); // 여행지 번호
	var spot_lat = $(this).parent().data("lat"); // 위도
	var spot_lng = $(this).parent().data("lng"); // 경도
	var spot_city = $(this).parent().data("city"); // 도시 번호
	var spot_img = $(this).parent().data("img"); // 사진
	var spot_seq = $("#schedule_detail_box").children().length + 1;
	
		$("#schedule_detail_box").append("" +  
		"<div class='day_spot_item' data='1' data-set_day='1 data-pl_type='0' data-no='" + spot_no + "' data-pl_cat='301' data-latlng='" + spot_lat + "," + spot_lng + "' data-lat='" + spot_lat+ "' data-lng='" + spot_lng +"' data-ci='87'>"
		        	+	"<div class='item_ctrl_box' style='display: none'>"
		        	+		"<div class='fl item_copy_plan' title='장소복사'><img src='/twt/resources/images/plan/item_more_icon_a.png'></div>"
		        	+ 		"<div class='fl item_set_plan' title='메모&amp;예산'><img src='/twt/resources/images/plan/item_set_icon_a.png'></div>"
		        	+		"<div class='fl btn_del' title='삭제'><img src='/twt/resources/images/plan/item_del_icon_a.png'></div>"
		        	+		"<div class='clear'></div>" 
		        	+	"</div>"
		        	+	"<div class='img_box fl'>"
		        	+		"<div class='spot_order_box'>" + spot_seq + "</div>"
		        	+		"<img src='/twt/resources/images/plan/" + spot_city+ "/" + spot_img +"'>"
		        	+		"<div style='position:absolute;top:35px;left:40px;width:22px;height:20px;>"
		        	+			"<img src='/twt/resources/images/plan/list_memo_btn_off.png' class='memo_indi' style='width:22px;height:20px;'>"
		        	+			"<!-- <i class='fas fa-pencil-alt'></i> -->"
		        	+		"</div>"
		        	+	"</div>"
		        	+	"<div class='fl info_box'>"
		        	+		"<div class='title'>" + spot_name + "</div>"
		        	+		"<div class='sub'>" + spot_type+"</div>"
		        	+		"<div class='sub inspot_day_info_box' style='color:#1a7ad9'></div>"
		        	+	"</div>"
		        	+	"<div class='clear'></div>"
		        	+ "</div>" +  
		"");
		
		var latlng = spot_lat + "," + spot_lng;
		spotlatlng.push(latlng);
		console.log("spot : " + spotlatlng);
	});

	// 추가한 스팟 삭제
	$(document).on("click",".btn_del",function(){		
		var spot_index = $(this).parent().parent().attr("class");
		alert(spot_index);
		$(this).parent().parent().remove();
	});
	
	

});






// Day 수정 버튼 클릭
function day_edit_start(){
	$('#overlay_day_edit').show();
}


//Day 수정 완료
function day_edit_com(){
	$('#overlay_day_edit').hide();
}


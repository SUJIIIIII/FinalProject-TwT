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
	


	// 추가한 스팟 삭제 및 재설정
	$(document).on("click",".btn_del",function(){		
		var spot_num = $(this).parents("#schedule_detail_box").children().length; // 일정에 넣어둔 spot_item 갯수
		var spot_del_index = // 삭제하려는 index 값
			$(this).parents(".day_spot_item").children(".img_box").children(".spot_order_box").html();
		// index 숫자 재설정
		if(spot_del_index == spot_num){
			// 삭제하려는 숫자가 끝번호인 경우는 숫자 재배치가 필요없음
			$(this).parents(".day_spot_item").remove(); // 일정 삭제 메소드
		} else {
			// 번호재배치
			for(i = spot_del_index; i <= spot_num; i++){
				$(this).parents("#schedule_detail_box").children().eq(i).children(".img_box").children(".spot_order_box").text(i);
			}
			// 삭제
			$(this).parents(".day_spot_item").remove();$(this).parents(".day_spot_item").remove();
		}	
	});	
	
	$("#schedule_clear").on("click", function() {
		if(confirm("초기화 하시겠습니까?")){
			$("#schedule_detail_box").children().remove();
		} else {
			alert("취소 되었습니다.");		
			}
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


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
	
	
	

});


// Day 수정 버튼 클릭
function day_edit_start(){
	$('#overlay_day_edit').show();
}


//Day 수정 완료
function day_edit_com(){
	$('#overlay_day_edit').hide();
}


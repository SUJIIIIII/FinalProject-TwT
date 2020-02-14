/**
 * 
 */

$(document).ready(function() {
	$(".item").on("click", function() {
		$('#select_detail_view_city').css("display", "block");
		var city_no = $('.item').data("no");	
		$("#city_no").val(city_no);
	});
	
	
});


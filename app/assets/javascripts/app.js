//Page javascript

$(document).ready(function(){
	$.timeliner();
	$("#timelineContainer > div").hide();
	$("#timelineContainer").css("height", "0px");
	$("#timelineContainer").css("padding-top", "0px");
	$("#timelineContainer").animate({
		display: "block",
		'height': 'auto',
		'padding-top' : 400
	}, 1500, function(){
		$("#timelineContainer > div").fadeIn(1000);
	});
	$("#timelineContainer").css("height", "auto");
	$(".CBmodal").colorbox({inline:true, initialWidth:100, maxWidth:682, initialHeight:100, transition:"elastic",speed:750});		
});
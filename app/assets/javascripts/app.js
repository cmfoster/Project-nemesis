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
	$(".youtube").colorbox({iframe:true, innerWidth:725, innerHeight:544});		
	$(".timelineMinor dt").hover(function(){
		$(this).stop().animate({'padding-left': 467 }, 1500);
	});
	
});
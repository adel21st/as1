$(document).ready(function(){
	$('.navbar-burger').click(function() {
		$('#navbarBasicExample').toggleClass('is-active');
	});

	$('.box').click(function(){
		$('.modal').addClass("is-active")
	});

	$(".box").hover(function() {
		$(this).css('cursor','pointer');
	}, function() {
		$(this).css('cursor','auto');
	});

	$('.delete').click(function(){
		$(".modal").removeClass("is-active");
	});
});

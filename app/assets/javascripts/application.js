//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

jQuery(document).ready(function($) {
	setTimeout(function(){ setHeight(); }, 250);
});
// on load
$(window).load(function() {
	$(".pre-loader").fadeOut(500);
});

function setHeight() {
	sHeight = $(document).height();
	cHeight = (sHeight-45)/2-131;
	$('.center-form').css('margin-top', cHeight);
}

// onload
$(window).load(function(){
	var mainImageWidth = $('.main-image').width();
	$('.main-image .grid-image').css('width', mainImageWidth/5 );
	$('.main-image').masonry({
		itemSelector : '.grid-image',
		columnWidth : mainImageWidth/5,
		isAnimated: true,
		animationOptions: {
			duration: 1000,
			easing: 'easeOutCubic',
			queue: false
			}
	});
	var documentHeight = $(document).height();
	$('.main-image').css('min-height', documentHeight - 148 );
});

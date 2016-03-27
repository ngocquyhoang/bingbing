// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
// require turbolinks
//
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
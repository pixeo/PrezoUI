/*============================================================
	Animated Scroll
============================================================*/
$(function() {
	$(".progress-bar").each(function(e){

		var width = $(this).width();
		var parentWidth = $(this).parent(".progress").width();
		var percent = 100*width/parentWidth;

		if (percent < 33) {
			console.log("0-33%");
			$(this).addClass("progress-bar-success");
		} else if ( (percent > 33) && (percent < 66) ) {
			console.log("33%-66%");
			$(this).addClass("progress-bar-warning");
		} else {
			console.log("66%-100%");
			$(this).addClass("progress-bar-danger");
		}
	});
});




/*============================================================
	Animated Scroll
	============================================================*/
	$(function() {
		$('a[href*=#]:not([href=#])').click(function() {
			if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
				if (target.length) {
					$('html,body').animate({
						scrollTop: (target.offset().top - 61)
					}, 1000);
					return false;
				}
			}
		});
	});




/*============================================================
	Sticky Subnav
	============================================================*/

	$(function() {

		var nav = $('#sub-nav'),
		content = $(".app-content"),
		pageHeader = $('.page-header'),
		navHeight = $('.page-header').height();

		var pageHeaderBottom = pageHeader.offset().top + $('.page-header').outerHeight() + $(".breadcrumb-wrapper").outerHeight();

		if (nav.length != 0){

			nav.addClass("affix-top");


			$(window).scroll(function(event) {
				var scrollTop = $(this).scrollTop();

				if (scrollTop >= pageHeaderBottom) {
					nav.addClass('affix navbar-inverse');
				//nav.css("top", "21px");
			} else {
				nav.removeClass('affix navbar-inverse');
				//nav.css("top", "0");
			}
		});
		}
	});
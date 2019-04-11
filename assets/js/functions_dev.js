/* -------------------------------------------------------------------------------- /
	
	OMG - Simple HTML Template v1.0
	Created by v4 (http://themeforest.net/user/v4)
	v1.0 - 20.01.2014
	All rights reserved.
	web: http://www.v4themes.com
	
	+----------------------------------------------------+
		TABLE OF CONTENTS
	+----------------------------------------------------+
	[1] QUERY LOADER
	[2] COUNTDOWN TIME
	[3] MAIN REVOLUTION SLIDER SHOW
	[4] FLEXSLIDER PLUGIN
	[5] CUSTOM SCRIPT
	[6] AFFIX BOOTSTRAP PLUGIN, STICKY MENU
	[7] MAIN MENU
	[7.1] MOBILE MENU
	[8] SKROLLR PLUGIN
	[9] SHORTCODES
	[10] ISOTOPE
	11] CONTACT FORM
	[12] ALL CONTENT SCRIPTS
/ -------------------------------------------------------------------------------- */

var htmlClasses=(document.documentElement.className).split(' ');
htmlClasses.push('js-on');
if (navigator && navigator.appName == 'Microsoft Internet Explorer'){
	htmlClasses.push('ie');
}
document.documentElement.className = htmlClasses.join(' ').replace(/^\s+|\s+$/g, '');

(function($) {
	"use strict";

/* ------------------------------------------------------------------------ */
/* [1] QUERY LOADER
/* ------------------------------------------------------------------------ */
	if($("body.onepage").length > 0) {
//		$("body.onepage").queryLoader2({
//			barHeight: 0,
//			percentage: true,
//			backgroundColor: '#f9f3ed',
//		});
//		
//		window.addEventListener('DOMContentLoaded', function() {
//			$("body.onepage").queryLoader2();
//		});
	}
	
/* ------------------------------------------------------------------------ */
/* [2] COUNTDOWN TIME
/* ------------------------------------------------------------------------ */
	$('.countdown-time').countdown({
		date : "Jan 1, 2020 15:00:00",
		render : function(data) {
			var html = '<li><time>'+ this.leadingZeros(data.days, 2) +'</time><span class="text-uppercase text-primary">Days</span></li>';
			html += '<li><time>'+ this.leadingZeros(data.hours, 2) +'</time><span class="text-uppercase text-primary">Hr</span></li>';
			html += '<li><time>'+ this.leadingZeros(data.min, 2) +'</time><span class="text-uppercase text-primary">Min</span></li>';
			html += '<li><time>'+ this.leadingZeros(data.sec, 2) +'</time><span class="text-uppercase text-primary">Sec</span></li>';
			
			$(this.el).html(html);
		}
	}); 

/*----------------------------------------------------*/
// [3] MAIN REVOLUTION SLIDER SHOW
/*----------------------------------------------------*/  
$(window).load(function() {
	var fullwidth_slide = $('.fullwidth-slider').revolution({
		delay:4500,
		startwidth: 1103,
		startheight: 488,
		onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off
		thumbWidth:100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
		thumbHeight:50,
		thumbAmount:3,
		hideThumbs:0,
		navigationType:"bullet",				// bullet, thumb, none
		navigationArrows:"solo",				// nexttobullets, solo (old name verticalcentered), none
		navigationStyle:"round",				// round,square,navbar,round-old,square-old,navbar-old, or any from the list in the docu (choose between 50+ different item), custom
		navigationHAlign:"center",				// Vertical Align top,center,bottom
		navigationVAlign:"bottom",					// Horizontal Align left,center,right
		navigationHOffset:30,
		navigationVOffset:-22,
		soloArrowLeftHalign:"left",
		soloArrowLeftValign:"center",
		soloArrowLeftHOffset:20,
		soloArrowLeftVOffset:0,
		soloArrowRightHalign:"right",
		soloArrowRightValign:"center",
		soloArrowRightHOffset:20,
		soloArrowRightVOffset:0,

		touchenabled:"on",						// Enable Swipe Function : on/off
		stopAtSlide:-1,							// Stop Timer if Slide "x" has been Reached. If stopAfterLoops set to 0, then it stops already in the first Loop at slide X which defined. -1 means do not stop at any slide. stopAfterLoops has no sinn in this case.
		stopAfterLoops:-1,						// Stop Timer if All slides has been played "x" times. IT will stop at THe slide which is defined via stopAtSlide:x, if set to -1 slide never stop automatic
		hideCaptionAtLimit:0,					// It Defines if a caption should be shown under a Screen Resolution ( Basod on The Width of Browser)
		hideAllCaptionAtLilmit:0,				// Hide all The Captions if Width of Browser is less then this value
		hideSliderAtLimit:0,					// Hide the whole slider, and stop also functions if Width of Browser is less than this value
		fullWidth:"on",
		shadow:0,								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)
		lazyLoad: "on",
	});
	
	/* revslider arrows */
	fullwidth_slide.bind("revolution.slide.onloaded",function (e) {
		jQuery('.tparrows').each(function() {
			var arrows=jQuery(this);

			var timer = setInterval(function() {
				if (arrows.css('opacity') == 1 && !jQuery('.tp-simpleresponsive').hasClass("mouseisover"))
				  arrows.fadeOut(300);
			},3000);
		});

		jQuery('.tp-simpleresponsive, .tparrows').hover(function() {
			jQuery('.tp-simpleresponsive').addClass("mouseisover");
			jQuery('body').find('.tparrows').each(function() {
				jQuery(this).fadeIn(300);
			});
		}, function() {
			if (!jQuery(this).hasClass("tparrows"))
				jQuery('.tp-simpleresponsive').removeClass("mouseisover");
		});
	});
});

$(window).load(function() {
	
	exe_content_scripts();

/*----------------------------------------------------*/
// [4] FLEXSLIDER PLUGIN
/*----------------------------------------------------*/
	if (jQuery().flexslider) {
		$('.twitter-slider', $container).flexslider({
			animation: "slide",
			directionNav: false,
			controlNav: false,
			smoothHeight: true,
			pauseOnHover: true,
			animationSpeed: 300,
		});
		
		$('.featured-video').flexslider({
			animation: "slide",
			pauseOnHover: true,
	        controlNav: false,
			directionNav: false,
	        slideshow: false,
	        itemWidth: 185,
	        itemMargin: 0,
	        minItems : 2,
	        maxItems : 3,
	        move: 1,
	        useCSS: false,
	        touch: false,
		});
		
		$('.missions-slide').flexslider({
			animation: "slide",
			pauseOnHover: true,
	        controlNav: false,
			directionNav: false,
	        slideshow: true,
	        itemWidth: 120,
	        itemMargin: 0,
	        minItems: 2,
	        maxItems: 8,
	        start: function(slider){
	        	//hide control
	        	if( slider.pagingCount < 2 ) {
	        		$('[data-control=".missions-slide"]').hide();
	        	}
	        },
		});
		
	}//end if

/*----------------------------------------------------*/
// [5] CUSTOM SCRIPT
/*----------------------------------------------------*/

	// TRIGGER HASH CHANGE
	jQuery(window).bind( 'hashchange', function(event) {
		var hash = decodeURIComponent(jQuery(window.location).attr('hash')),
			hashes = hash.replace(/(#\!)/g, '' ).split('@');
		
		if(hashes.length < 2) {
			return true;
		}
		
		event.preventDefault();
					
		var $container = $( '#' + hashes[1] ), //only accept id
			$content = $('.load-content', $container),
			$loader = $('.loading-wrap', $container),
			loadingError = '<p class="error">The Content cannot be loaded.</p>';
		
		//hidden other
		$('.ajax-load-wrap').not($container).animate({height: 0}, 0, function(){
			$(this).css({opacity: 0, visibility: 'hidden', overflow: 'hidden'});
			$('.load-content', $(this)).html('');
		});
		
		$container.css({opacity: 1, height: 'auto', visibility: 'visible', overflow: 'visible'});
		
		$.smoothScroll({
			scrollTarget: $container,
			speed: 1000,
			easing: 'easeInOutExpo',
			beforeScroll: function() {
				if( window.innerWidth < 992 )
					$('#navbar-menu').animate({opacity: 0, visibility: 'hidden' });
			},
			afterScroll: function() {
				$('#navbar-menu').css({ visibility: 'visible'}).animate({opacity: 1});
				
				$('.error', $loader).remove();
				$loader.show();
				
				var url = hashes[0];
				
				$content.css({'overflow': 'hidden'}).animate({opacity:0, 'height': '0'}, 180,function(){
					$content.load( url +' div#ajax-content', function(xhr, statusText, request){
						
						if(statusText == "success"){
							var chd = $content.children('div#ajax-content'), outH = chd.outerHeight();
							var next = $('.control-nav .btn-next', chd), prev = $('.control-nav .btn-prev', chd);
							
							$('.remove-if-ajax', chd).remove(); //remove title
							
							$loader.delay(400).fadeOut('fast', function(){
								$content.animate({opacity:1, height: outH + 'px' }, 180, function(){
									
									$(this).closest('.ajax-load-wrap').triggerHandler('ajax_after_content_loaded');
									$content.css({height: 'auto', 'overflow': 'visible'});
									$('body').scrollspy('refresh');
								});
							});
							
							//update prev, next button link
							if( next.attr('href') && next.attr('href') != '#' ) {
								hash = hash.replace(/#\!(.*)\@/g, '#!' + next.attr('href')  + '@' );
								$('.btn-next', $container).attr('href', hash);
							} else {
								$('.btn-next', $container).attr('href', '#');
							}
							
							if( prev.attr('href') && prev.attr('href') != '#' ) {
								hash = hash.replace(/#\!(.*)\@/g, '#!' + prev.attr('href')  + '@' );
								$('.btn-prev', $container).attr('href', hash);
							} else {
								$('.btn-prev', $container).attr('href', '#');
							}
							
						} else if(statusText == "error") {
							$loader.append( loadingError );
						}
					});
				});
			}//end after
	    });
	});
	
	var wHash = decodeURIComponent(jQuery(window.location).attr('hash'));

	if(/(#\!)/g.test(wHash)) {
		var hash = wHash,
			hashes = hash.replace(/(#\!)/g, '' ).split('@');
		
		if(hashes.length > 1) {
			var $container = $( '#' + hashes[1] );
			$.smoothScroll({
				scrollTarget: this.hash,
				speed: 1000,
				easing: 'easeInOutExpo',
				beforeScroll: function() {
					if( window.innerWidth < 992 )
						$('#navbar-menu').animate({opacity: 0, visibility: 'hidden' });
				},
				afterScroll: function() {
					$(window).trigger('hashchange');
					$('#navbar-menu').css({ visibility: 'visible'}).animate({opacity: 1});
				},
		    });
		}
	} 
	
	// TRIGGER RELOAD SCRIPT CONTENT 
	$( '.ajax-load-wrap' ).bind( 'ajax_after_content_loaded', function(e) {
		exe_content_scripts( $(this) );
	} );
	
	// MENU SCROLLING
	jQuery("#navbar-menu .navbar-nav > li > a, .slicknav_nav > li > a,.scroll-to").bind('click', function(event) {
		var headerH = jQuery('.navbar-menu').height(), hTop = $('#navbar-top').height();
		
		jQuery("#navbar-menu a").parent().removeClass('active');
		
		jQuery(this).parent().addClass('active');
		
		if($(this.hash).length > 0) {
			event.preventDefault();
			$.smoothScroll({
				scrollTarget: this.hash,
				speed: 1000,
				easing: 'easeInOutExpo',
				beforeScroll: function() {
					if( window.innerWidth < 992 )
						$('#navbar-menu').animate({opacity: 0, visibility: 'hidden' });
				},
				afterScroll: function() {
					$('#navbar-menu').css({ visibility: 'visible'}).animate({opacity: 1});
				},
		    });
		    
		}
		
	}); 
	
	
	jQuery(window).scroll(function(){
		if( window.innerWidth < 768){
			return;
		}
		if(jQuery(window).scrollTop() > jQuery(window).height()){
			jQuery("#back-to-top").fadeIn(150);
		} else{
			jQuery("#back-to-top").fadeOut(150);
		}
	});
	
	jQuery('#back-to-top .btn-up').click(function(e) {
	    $.smoothScroll({
			scrollTarget: this.hash,
			speed: 1000,
			easing: 'easeInOutExpo',
			beforeScroll: function() {
				if( window.innerWidth < 992 )
					$('#navbar-menu').animate({opacity: 0, visibility: 'hidden' });
			},
			afterScroll: function() {
				$('#navbar-menu').css({ visibility: 'visible'}).animate({opacity: 1});
			},
	    });
	    
	    e.preventDefault();
	});

	$('.navbar-screen-btn').click(function(){
		var $container = $(this).closest('.navbar-audio'), $player = $('.jp-jplayer', $container), win;
		if(/Safari/.test(navigator.userAgent) && /Apple Computer/.test(navigator.vendor)) {
			win = window.open('pop-audio.html', 'Audio Player', "width=780,height=80");
		} else {
			win = window.open('pop-audio.html', 'Audio Player', "width=780,height=127");
		}
		win.onbeforeunload = function () {
			$player.jPlayer("setMedia", {
				mp3: $player.data('source'),
			});			
		};
	});

	// CONTROL BUTTON	
	$('body').on('click', '.show-comments', function(ev) {
		var rel = $(this).attr('rel');
		
		if($(this).hasClass('active')) {
			$(rel).slideUp('fast', function() {
				$('body').scrollspy('refresh');
			});
			$(this).removeClass('active');
		} else {
			$(rel).slideDown('fast', function() {
				$('body').scrollspy('refresh');
			});
			$(this).addClass('active');
		}
		ev.preventDefault();
	});
	
	$('.control-slider .btn-prev').click(function(){
		if( ! $(this).data('control') ) return;		
		var $ctrl = $($(this).data('control'));
		if($ctrl) {
			$ctrl.flexslider('prev');
		}
	});
	$('.control-slider .btn-next').click(function(){
		if( ! $(this).data('control') ) return;
		
		var $ctrl = $($(this).data('control'));
		if($ctrl) {
			$ctrl.flexslider('next');
		}
	});
	
	$('.btn-close').click(function(event){
		var $rel = $($(this).data('area'));
		if( $rel ) {
			$rel.animate({
				opacity : 0,
				height: 0,
			}, 500, function(){
				$('.load-content', $rel).css({opacity: 0, overflow: 'hidden'}).html('');
				$(this).closest('.ajax-load-wrap').css('overflow', 'hidden');
				window.location.hash = '#closed';
				$('body').scrollspy('refresh');
			}); 
		}
		
		event.preventDefault();
	});
	
}); //END WINDOW LOAD

/* ------------------------------------------------------------------------ */
/* [6] AFFIX BOOTSTRAP PLUGIN, STICKY MENU
/* ------------------------------------------------------------------------ */
	$('#navbar-menu').affix({
		offset: {
			top: function(){
				var t = this;
				$(window).resize(function(){
					$('.navbar-wrapper').height($('#navbar-top').outerHeight() + 60); //remove jumb content
					t.top = $('#navbar-top').outerHeight(true);
				});
				
				$('.navbar-wrapper').height($('#navbar-top').outerHeight() + 60); //remove jumb content
				return (t.top = $('#navbar-top').outerHeight(true));//$('#navbar-top').outerHeight();
			},
			bottom: 0,
		}
	});
	
/* ------------------------------------------------------------------------ */
/* [7] MAIN MENU
/* ------------------------------------------------------------------------ */
	var $navbar_menu = $('.sf-menu').superfish({
		animation:   {opacity:'show',height:'show'},
		delay: 300,
		speed: 100,
		speedOut: 0,
	});

/* ------------------------------------------------------------------------ */
/* [7.1] MOBILE MENU
/* ------------------------------------------------------------------------ */
	// FOR MOBILE MENU
	$('.navbar-nav').slicknav({
		prependTo:'.navbar-header',
		label: 'Navigation',
	});
	
	$('.slicknav_nav > li > a').bind('click', function(){
		var $this = $(this).closest('li');
		
		$('.slicknav_nav > li').removeClass('active');
		
		$this.addClass('active');
		if( $this.hasClass('slicknav_parent') ) {
			
			if($this.hasClass('slicknav_collapsed')) {
				$this.prevAll().slideUp('fast');
				//close other
				$('.slicknav_nav>.slicknav_open').not($this)
					.removeClass('slicknav_open')
					.addClass('slicknav_collapsed')
					.children('ul').slideUp('fast')
					.addClass('slicknav_hidden')
					.prev().children('.slicknav_arrow').html('►');
				
			} else {
				$this.prevAll().slideDown('fast');
			}
		} else {
			
			$this.prevAll().slideDown('fast');
			
			//close other submenu
			$('.slicknav_nav > .slicknav_open')
				.removeClass('slicknav_open')
				.addClass('slicknav_collapsed')
				.children('ul').slideUp('fast')
				.addClass('slicknav_hidden')
				.prev().children('.slicknav_arrow').html('►');
			
			$('.navbar-nav').slicknav('close');
		}
	});
	// close menu when click children menu
	$('.slicknav_nav > li > ul a').bind('click', function(){
		$('.navbar-nav').slicknav('close');
	});
	
	$('.slicknav_menu .slicknav_btn').bind('click', function(){
		if($(this).hasClass('slicknav_collapsed')) {
			$('.slicknav_nav > li').show();
			$('.slicknav_nav > .slicknav_open > a').click();
		}
	});
	
	$(document).click(function(event) { 
	    if($(event.target).parents().index($('#navbar-menu')) == -1) {
	        if($('#navbar-menu .slicknav_nav').is(":visible")) {
	        	$('#navbar-menu .slicknav_btn').trigger('click');
	        }
	    }        
	});
	

/* ------------------------------------------------------------------------ */
/* [8] SKROLLR PLUGIN
/* ------------------------------------------------------------------------ */
	if(!(/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent || navigator.vendor || window.opera)){
	    skrollr.init({
	        forceHeight: false,
	    });
	} 
	
	
/* ------------------------------------------------------------------------ */
/* [9] SHORTCODES
/* ------------------------------------------------------------------------ */
	
	$('[data-toggle="tooltip"]').tooltip({container: 'body'});
	
	$('[data-toggle="tooltip"]').on('shown.bs.tooltip', function(el) {
		if( ! $(this).hasClass('tip-center') ) {
			$('.tooltip').css({'left': $(this).offset().left });
			$('.tooltip').addClass('arrow-left');
		}
		
		if($(this).data('tip-bgcolor')) {
			$('.tooltip .tooltip-inner').css({'background-color': $(this).data('tip-bgcolor')});
			$('.tooltip.top .tooltip-arrow').css({'border-top-color': $(this).data('tip-bgcolor')});
		}
	});
	
	$(".knob").knob({
		'min':0,
		'max':100,
		'dynamicDraw': true,
	});
	
	$('body').on('close.bs.alert', '.alert', function () {
		var $this = $(this);
		$this.slideUp('fast', function(){
			$this.remove();
		});
		return false;
	});
	
	$('body').on('shown.bs.tab', 'a[data-toggle="tab"]', function (e) {
		var $t = $(e.target), $c = $($t.attr('href')), $p = $c.closest('.tab-content');
		var $rt = $(e.relatedTarget), $rc = $($rt.attr('href'));
		
		$c.css({height: 'auto'});
		$('.tab-pane', $p).not($c).removeClass('in').hide();
		$p.animate( {'height': $c.height() }, 300, 'swing', function(){
			$c.addClass('in').fadeIn('fast');
			
			$rc.removeClass('active').height(0);
		});
	});
	
	$('.tab-content .panel-collapse').on('shown.bs.collapse', function (e) {
		var $this = $(this), id = $this.attr('id'), $tab = $('.nav-tabs [href="#' + id + '"]');
		
		$this.show();
		
		//update tab
		$('.nav-tabs > li').removeClass('active');
		$tab.parent('li').addClass('active');
		
		$this.closest('.tab-content').css({height: 'auto'});
		
	});
	
	$('.tab-content [data-toggle="collapse"]').on('click', function(e){
		if($(this).next().hasClass('in')) {
			e.preventDefault();
			return false;
		}
	});

	$('body').on('click', '.toggle a', function(event){
		var $this = $(this), $p = $this.closest('.toggle');
		
		if($this.parent().hasClass('active')) {
			$('.details', $this.parent()).slideUp(200);
			$this.parent().removeClass('active');
		} else {
			$('.details', $this.parent()).slideDown(200);
			$this.parent().addClass('active');
		}
		
		event.preventDefault();
	});

/*----------------------------------------------------*/
// [10] ISOTOPE
/*----------------------------------------------------*/
$(window).load(function() {
	// cache container
	var $container = $('.gallery-list');
	
	// filter items when filter link is clicked
	$('.gallery-filter li').click(function(e) {
		var selector = $(this).attr('data-filter');
		$('.filters button').removeClass('active');
		$('button', $(this)).addClass('active');
		
		$container.isotope({
			itemSelector: '.gallery-list>li',
			filter : selector
		}, function(){
			$('body').scrollspy('refresh');
		});
		e.preventDefault();
	}); 
	
	var $container_blog = $('#list-blog');
	
	 // initialize isotope
	$container_blog.isotope({
		itemSelector: 'li.item',
		layoutMode : 'fitRows',
	});
	
	$(window).resize(function(){
		if($container.hasClass('isotope')) {
			$container.isotope('reLayout');
		}
		if($container_blog.hasClass('isotope')) {
			$container_blog.isotope('reLayout');
		}
	});
	
	// filter items when filter link is clicked
	$('.blog-filter li').click(function() {
		var selector = $(this).attr('data-filter');
		
		$('.blog-filter button').removeClass('active');
		$('button', $(this)).addClass('active');
		
		$container_blog.isotope({
			filter : selector
		});
		return false;
	}); 
	
	var show_more = 0;
	$('#blog .btn-showmore').click(function() {
		var $this = $(this), $loader = $this.prev('.loading-wrap');
		show_more ++;
		
		$('.blog-filter [data-filter="*"] button').click();
		
		if(show_more < 2) {
			$loader.show();
			$this.hide();
			$.get('show-more-blog.html', function(res){
				$container_blog.isotope( 'insert', $(res) );
				
				$loader.delay(400).fadeOut('fast', function(){
					$this.show();
					$('body').scrollspy('refresh');
				});
				
			});
			
		} else if( show_more == 2 ) { //demo only
			$loader.show();
			$this.hide();
			$.get('show-more-2.html', function(res){
				$container_blog.isotope( 'insert', $(res) );
				
				$loader.delay(400).fadeOut('fast', function(){
					$this.parent().removeClass('has-arrow-bottom');
					$this.text('No more blog');
					$this.addClass('disabled');
					$this.show();
					$('body').scrollspy('refresh');
				});
				
			});
			
		}
		
		return false;
	});
});

/* -------------------------------------------------------------------------------- /
//	[11] CONTACT FORM
/ -------------------------------------------------------------------------------- */
	
	/* contact form submit */
	var $contactForm=$('.contact-form');
	if ($contactForm.length) {
		$('.submit', $contactForm).click(function(ev){
			var $this = $(this), $contactMessage = $('.contact-wrap .messages');
			
			ev.preventDefault();
			
			$.smoothScroll({
				scrollTarget: '.contact-wrap',
				speed: 1000,
				easing: 'easeInOutExpo',
				afterScroll: function() {
					$this.attr('disabled', 'disabled');
					
					$contactMessage.slideUp('fast', function(){
						$contactMessage.html('').hide();
						
						$.post( $contactForm.attr('action'), $contactForm.serialize())
						.done(function( data ) {
							$contactMessage.html(data.messages).slideDown('fast');
							if(data.status == true) {
								$contactForm[0].reset();
							}
						}).fail(function(data) {
							$contactMessage.html('<div class="alert alert-danger">Unknow error!<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>').slideDown('fast');
						}).always(function(data) {
							$this.removeAttr('disabled');
							$('.input-group-addon', $contactForm).html(data.captcha);
							$('input[name="security"]', $contactForm).val('');
						}, 'json');
					});
				},
		    });
		});
	};
	
	
	$(window).load(function() {
		$(".container").fitVids();
		
		$('#mask').hide();
		
		$('[id="qLoverlay"]').remove();
		
		setTimeout(function() {
			$('body').scrollspy('refresh');
		}, 3000);
		
	});
	
/*----------------------------------------------------*/
// [12] ALL CONTENT SCRIPTS
/*----------------------------------------------------*/
	function exe_content_scripts($container) {
		if(!$container) {
			$container = $('body');
		}
		
		$('.flex-default', $container).flexslider({
			animation: "slide",
			pauseOnHover: true,
			slideshow: false,
			smoothHeight: true,
			nextText: '',
	        prevText: '',
	        useCSS: false,
		});
		$('.flex-simple', $container).flexslider({
			animation: "slide",
			directionNav: false,
			controlNav: false,
			smoothHeight: true,
			pauseOnHover: true,
			animationSpeed: 300,
			slideshow: false,
			itemMargin: 0,
		});
		
		$('.text-slider', $container).flexslider({
			animation: "slide",
			selector: ".text-slides > li",
			directionNav: false,
			smoothHeight: true,
			pauseOnHover: true,
			animationSpeed: 300,
		});
		
		$('.progress-overall', $container).each(function(){
			var percent = $(this).attr('aria-valuenow');
			
			$('.percent', $(this)).html(percent);
			
			if(percent > 50) {
				$('.progress-overall-right .progress-rotate', $(this)).css({
					'-webkit-transform' : 'rotate(180deg)',
					'-ms-transform' : 'rotate(180deg)',
					'-moz-transform' : 'rotate(180deg)',
				});
				$('.progress-overall-left .progress-rotate', $(this)).css({
					'-webkit-transform' : 'rotate('+ ((percent-50)*360/100) +'deg)',
					'-ms-transform' : 'rotate('+ ((percent-50)*360/100) +'deg)',
					'-moz-transform' : 'rotate('+ ((percent-50)*360/100) +'deg)',
				});
			} else {
				$('.progress-overall-right .progress-rotate', $(this)).css({
					'-webkit-transform' : 'rotate('+ (percent*360/100) +'deg)',
					'-ms-transform' : 'rotate('+ (percent*360/100) +'deg)',
					'-moz-transform' : 'rotate('+ (percent*360/100) +'deg)',
				});
			}
		});
		
		/* PROGRESS */
		$('.progress', $container).each(function(){
			var percent = $('.progress-bar', $(this)).attr('aria-valuenow');
			$('.progress-bar', $(this)).width(percent + '%');
			$('.percent', $(this)).html(percent + '%');
		});
		
		$(".knob", $container).knob({
			'min':0,
			'max':100,
			'dynamicDraw': true,
		});
		
		$(".jp-jplayer", $container).jPlayer({
			ready: function (event) {
				var data = {};
				if('m4a' == $(this).data('type')) {
					data = {m4a: $(this).data('source')};
				} else if('oga' == $(this).data('type')) {
					data = {oga: $(this).data('source')};
				} else {
					data = {mp3: $(this).data('source')};
				}
				
				$(this).jPlayer("setMedia", data);
				$(this).jPlayer( "option", "cssSelectorAncestor", $(this).data('ancestor') );
			},
			play: function() {
		        $(this).jPlayer("pauseOthers");
		    },
			swfPath: "js",
			supplied: "mp3, m4a, oga",
			wmode: "window",
			smoothPlayBar: true,
			keyEnabled: true,
		});
		
		/* GOOGLE MAP */
		var $gmaps = $(".gmap-area", $container);
	
		if ($gmaps.length > 0 && jQuery().goMap && google && google.maps) {
			 $gmaps.each(function(index, element) {
			 	var addr = $gmaps.text(), z = $gmaps.data('zoom');
			 	
				var map=$(this).goMap({ 
					markers : [{ 
						address : addr, /* change your adress here */
						title : 'OMG', /* title information */
						icon : {
						    image: 'assets/images/icons/pins/pin_orange.png' /* your custom icon file */
						}	
					}], 
					scrollwheel : false,
					zoom : z,
					maptype : 'ROADMAP'
				});
			});
	
			var mapResize=false;
			$(window).resize(function(e) {
				if (mapResize) { clearTimeout(mapResize); }
				mapResize = setTimeout(function() {
					if ($.goMap.getMarkers('markers').length > 0) {
						$.goMap.map.panTo($.goMap.getMarkers('markers')[0].getPosition());
					};
				}, 100);
			});
		};
		
		$container.fitVids();
	}
})(jQuery);

 
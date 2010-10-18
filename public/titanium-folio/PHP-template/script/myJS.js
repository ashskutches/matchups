/* *** Font replace *** 
******************* */
Cufon.replace('.bebas-font');

$(document).ready(function() {

    /* *** Featured slider *** 
    *********************** */
  	$(function(){
		$('#loopedSlider').loopedSlider({
			autoStart: 8000,
			restart: 5000,
			containerClick: false,
			slidespeed: 300
		});

	});
	
	/* *** Fancybox ***
	**************** */
	$("a.fancybox").fancybox({
		'transitionIn'	:	'elastic',
		'transitionOut'	:	'fade',
		'speedIn'		:	600, 
		'speedOut'		:	200, 
		'overlayShow'	:	true
	});
	
	/* *** Quicksand - sort portfolio ***
    ********************************* */ 
		//quicskand project categories filtering
        //see http://razorjack.net/quicksand/demos/one-set-clone.html
	
		// clone work_gallery to get a second collection
		var $data = $(".work_gallery").clone();
		
		//note: only filter on the main portfolio page, not on the subcategory pages
		$('#filter li a').click(function(e) {
			$("#filter li a").removeClass("selected");	
			
			//use the last category class as the category to filter by. This means that multiple categories are not supported (yet)
			var filterClass=$(this).attr('class').split(' ').slice(-1)[0];
			
			if (filterClass == 'everything') {
				var $filteredData = $data.find('li');
			} else {
				var $filteredData = $data.find('li[data-type=' + filterClass + ']');
			}
			$(".work_gallery").quicksand($filteredData, {
				duration: 800,
				easing: 'easeInOutQuad'
			}, function() {
				Cufon.replace('.bebas-font');
				$("a.fancybox").fancybox({
					'transitionIn'	:	'elastic',
					'transitionOut'	:	'fade',
					'speedIn'		:	600, 
					'speedOut'		:	200, 
					'overlayShow'	:	true
				});
			});
			
			$(this).addClass("selected");
				
			return false;
		});	
		
		
		// Hover function
		$(".work_gallery > li")
		.live('mouseover', function() {
			$(".work_gallery >li.open").removeClass("open");
			$(this).removeClass("opacize").addClass("open");
		})
		.live('mouseout', function () {
			$(this).removeClass("open");			
		});
    
});

/**
* Styleswitch 
**/
jQuery.fn.styleSwitcher = function(){
	$(this).click(function(){
		loadStyleSheet(this);
		return false;
	});
	function loadStyleSheet(obj) {
		$('body').append('<div id="overlay" />');
		$('body').css({height:'100%'});
		$('#overlay')
			.css({
				display: 'none',
				position: 'absolute',
				top:0,
				left: 0,
				width: '100%',
				height: '100%',
				zIndex: 1000,
				background: 'black url(images/loading.gif) no-repeat center'
			})
			.fadeIn(500,function(){
				$.get( obj.href+'&js',function(data){
					$('#stylesheet').attr('href','style/style' + data + '.css');
					cssDummy.check(function(){
						$('#overlay').fadeOut(500,function(){
							$(this).remove();
						});	
						Cufon.replace('.bebas-font');
					});
				});
			});
	}
	var cssDummy = {
		init: function(){
			$('<div id="dummy-element" style="display:none" />').appendTo('body');
		},
		check: function(callback) {
			if ($('#dummy-element').width()==2) callback();
			else setTimeout(function(){cssDummy.check(callback)}, 200);
		}
	}
	cssDummy.init();
}
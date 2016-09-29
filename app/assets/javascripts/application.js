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
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.isotope.min
//= services
//= require jquery.prettyPhoto
//
jQuery(function($) {'use strict',

  // portfolio filter
  var $portfolio_selectors = $('.portfolio-filter >li>a');
  var $portfolio = $('.portfolio-items');
  $portfolio.isotope({
    itemSelector : '.portfolio-item',
    layoutMode : 'fitRows'
  });

  $portfolio_selectors.on('click', function(){
    $portfolio_selectors.removeClass('active');
    $(this).addClass('active');
    var selector = $(this).attr('data-filter');
    $portfolio.isotope({ filter: selector });
    return false;
  });

  //Pretty Photo
	$("a[rel^='prettyPhoto']").prettyPhoto({
		social_tools: false
	});
});

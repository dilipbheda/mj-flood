// Header Fixed
var headerwrap = jQuery('.header-wrap' );
jQuery(window).on('scroll', function () {
	if ( jQuery(this).scrollTop() > 0 ) {
		headerwrap.addClass( "sticky" );
	} else {
		headerwrap.removeClass( "sticky" );
	}
});

jQuery( document ).ready( function () {
	
	// SVG Create
	jQuery(function(){
		jQuery('img.svg').each(function(){
			var $img = jQuery(this);
			var imgID = $img.attr('id');
			var imgClass = $img.attr('class');
			var imgURL = $img.attr('src');
			jQuery.get(imgURL, function(data) {
				var $svg = jQuery(data).find('svg');
				if(typeof imgID !== 'undefined') {
					$svg = $svg.attr('id', imgID);
				}
				if(typeof imgClass !== 'undefined') {
					$svg = $svg.attr('class', imgClass+' replaced-svg');
				}
				$svg = $svg.removeAttr('xmlns:a');
				if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
					$svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'));
				}
				$img.replaceWith($svg);
			}, 'xml');
		});
	});

	// Popup Toggle JS
	jQuery('.popup-open:not(.is-logged)').on('click', function(event) {
		event.preventDefault();
		var popupId = this.hash || jQuery(this).data('target');
		jQuery('.popup'+popupId).addClass('open');
	});
	jQuery('.popup-close').on('click', function(event) {
		event.preventDefault();
		jQuery(this).parents('.popup').removeClass('open');
	});

	// Overview Progress JS
	var wetWinterTraction = [];
	jQuery('.overview-points .result-icon').on('click', function() {
		var $overview_ele = jQuery('.overview-bar-wrap');

		if(!jQuery(this).hasClass('true')){

			wetWinterTraction.push( 1 );

			jQuery(this).addClass('true');

			if($overview_ele.hasClass('two')){
				$overview_ele.removeClass('two');
				$overview_ele.addClass('three');
			}

			if($overview_ele.hasClass('one')){
				$overview_ele.removeClass('one');
				$overview_ele.addClass('two');
			}

			if(!$overview_ele.hasClass('one') && !$overview_ele.hasClass('two') && !$overview_ele.hasClass('three')){
				$overview_ele.addClass('one');
			}

		}
		if ( wetWinterTraction.length >= 3 ) {
			jQuery( '.continue-btn' ).removeAttr( 'hidden' );
		}
	});

	if ( jQuery( '#video_popup' ).length > 0 ) {
		// Video Popup JS
		jQuery('.video-play a').on('click', function(event) {
			event.preventDefault();
			var $videoFrame = jQuery(this).parents('.video-popup-wrap').find('iframe');
			var videoSrc = $videoFrame.attr('src');
			videoSrc += '?autoplay=1';
			$videoFrame.attr('src', videoSrc);
			jQuery(this).parents('.video-popup-wrap').addClass('video-show');
		});

		jQuery('.video-popup .popup-close').on('click', function() {
			jQuery(this).siblings('.video-popup-wrap').removeClass('video-show');
			var $videoFrame1 = jQuery(this).siblings('.video-popup-wrap').find('iframe');
			var videoSrc1 = $videoFrame1.attr('src');
			videoSrc1 = videoSrc1.split('?')[0];
			$videoFrame1.attr('src', videoSrc1);
		});

		setTimeout( function() {
			jQuery( '.open-video' ).click();
		}, 500 );
	}
});


// Overview Chart JS
var chartCategory = YH.ChartData.category || '';
var chartSubCategory = YH.ChartData.sub_category || '';
var chartCategories = chartCategory.split( ',' );
var dataOne = YH.ChartData.data[0].data || '';
var dataTwo = YH.ChartData.data[1].data || '';
var options = {
	series: [{
		data: dataOne.split( ',' )
	}, {
		data: dataTwo.split( ',' )
	}],
	chart: {
		type: 'bar',
		height: 384,
		fontFamily: '"Roboto Condensed", sans-serif',
		foreColor: '#2A2D31',
		toolbar: { 
			show: false 
		},
	},
	plotOptions: {
		bar: {
			dataLabels: {
				position: 'top',
			},
		}
	},
	dataLabels: {
		enabled: true,
		offsetY: -21,
		style: {
			fontSize: '12px',
			colors: ['#333333'],
			fontWeight: 700
		}
	},
	
	fill: {
		colors: ['#3D383B', '#E21E31'],
		opacity: 1
	},
	xaxis: {
		categories: chartSubCategory.split( ',' ),
	},
	legend: {
		position: 'top',
		horizontalAlign: 'right',
		fontSize: '15px',
		fontWeight: 700,
		formatter: function(seriesName, opts) {
			return [chartCategories[opts.seriesIndex].toUpperCase()]
		},
		markers: {
			width: 16,
			height: 16,
			radius: 16,
			fillColors: ['#3D383B', '#E21E31'],
		}
	},
	tooltip: {
		custom: function({ series, seriesIndex, dataPointIndex, w }) {
			console.log(seriesIndex);
			return (
				'<div class="arrow_box">' +
				"<span>" +
				chartCategories[seriesIndex].toUpperCase() +
				": " +
				series[seriesIndex][dataPointIndex] +
				"</span>" +
				"</div>"
				);
		}
	}
};
if ( document.querySelector("#overview_chart") ) {
	var chart = new ApexCharts(document.querySelector("#overview_chart"), options);
	chart.render();
}
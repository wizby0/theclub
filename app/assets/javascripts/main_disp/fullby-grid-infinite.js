(function ($) {
	
	/* Variable from php */
	
	var path_loader = php_vars.path_loader;
	
	var $container = $('.grid'),
		
		colWidth = function () {
			var w = $container.width(), 
				columnNum = 1,
				columnWidth = 0;
			if (w > 1200) {
				columnNum  = 4;
			} else if (w > 900) {
				columnNum  = 3;
			} else if (w > 600) {
				columnNum  = 2;
			} else if (w > 300) {
				columnNum  = 1;
			}
			columnWidth = Math.floor(w/columnNum);
			$container.find('.item').each(function() {
				var $item = $(this),
					multiplier_w = $item.attr('class').match(/item-w(\d)/),
					multiplier_h = $item.attr('class').match(/item-h(\d)/),
					width = multiplier_w ? columnWidth*multiplier_w[1]-10 : columnWidth-10,
					height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-40 : columnWidth*0.5-40;
				$item.css({
					width: width,
					//height: height
				});
			});
			return columnWidth;
		},
		
		isotope = function () {

			$container.imagesLoaded( function(){
				
				$container.isotope({
					resizable: false,
					itemSelector: '.item',
					masonry: {
						columnWidth: colWidth(),
						gutterWidth: 20
					}

				}); 
				
  			});
	
		};
		
		isotope();
		
		//infinite scroll
		
		$container.infinitescroll({
	        navSelector  : '.pagination',    // selector for the paged navigation 
	        nextSelector : '.pagination .next',  // selector for the NEXT link (to page 2)
	        itemSelector : '.item',     // selector for all items you'll retrieve
	        loading: {
	            finishedMsg: 'No more pages to load.',
	            img: path_loader
	          }
	        },
	        
	        // call Isotope as a callback
	        
	        function( newElements ) {
	          $container.isotope( 'appended', $( newElements ) ); 
	          
	          //recalculate column size for item loaded

	          isotope();	          
	         
	        }
	    );
	    
	    $('.pagination').hide();

	$(window).smartresize(isotope);
	
}(jQuery));
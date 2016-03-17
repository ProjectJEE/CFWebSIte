$(document)
		.ready(
				function() {/* activate scrollspy menu */
					$('body').scrollspy({
						target : '#navbar-collapsible',
						offset : 50
					});

					$('.owl-carousel').owlCarousel({
						loop : true,
						margin : 10,
						nav : true,
						autoplay : true,
						autoplayTimeout : 5000,
						autoplayHoverPause : true,
						dots : true,
					// animateOut : 'slideOutDown',
					// animateIn : 'flipInX',
					// stagePadding : 30,
					// smartSpeed : 450
					})

//					/* smooth scrolling sections */
//					$('a[href*=#]:not([href=#])')
//							.click(
//									function() {
//										if (location.pathname
//												.replace(/^\//, '') == this.pathname
//												.replace(/^\//, '')
//												&& location.hostname == this.hostname) {
//											var target = $(this.hash);
//											target = target.length ? target
//													: $('[name='
//															+ this.hash
//																	.slice(1)
//															+ ']');
//											if (target.length) {
//												$('html,body')
//														.animate(
//																{
//																	scrollTop : target
//																			.offset().top - 50
//																}, 1000);
//												return false;
//											}
//										}
//									});

					// my custom buttons
					var owl = $('.owl-carousel');
					// Go to the next item
					$('#next').click(function() {
						owl.trigger('next.owl.carousel');
					})
					// Go to the previous item
					$('#prev').click(function() {
						owl.trigger('prev.owl.carousel', [ 300 ]);
					})

				});
<?php
/**
 * Template Name: Market Overview
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content market-overview-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="market-overview-section">
			<div class="container container-sm">
				<div class="title-section text-white">
					<div class="title">
						<?php the_title( '<h1 class="h1">', '</h1>' ); ?>
						<?php if ( get_field( 'sub_title' ) ) : ?>
							<h2 class="h2"><?php the_field( 'sub_title' ); ?></h2>
						<?php endif; ?>
					</div>
					<div class="content-wrap">
						<?php
							while( have_posts() ) : the_post();
								the_content();
							endwhile;
						?>
					</div>
				</div>
				<?php
					$market_overview_query = array(
						'post_type' => 'market',
						//'posts_per_page' => 3,
						'posts_per_page' => -1,
						//'paged' => get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1,
					);
					$market_overview = new WP_Query( $market_overview_query );
					if ( $market_overview->have_posts() ) :
						while( $market_overview->have_posts() ) : $market_overview->the_post()
				?>
					<div class="detail-table">
						<?php the_title( '<h2 class="detail-table-title h2">', '</h2>' ); ?>
						<div class="detail-table-wrap">
							<?php if ( have_rows( 'tire_info' ) ) : ?>
								<?php while( have_rows( 'tire_info' ) ) : the_row();  ?>
									<div class="detail-table-row d-flex flex-wrap flex-row-reverse">
										<div class="detail-table-col-right d-flex align-items-center">
											<span><?php echo wp_get_attachment_image( get_sub_field( 'tire_image' ), 'full' ); ?></span>
										</div>
										<div class="detail-table-col-left d-flex flex-wrap">
											<?php if ( have_rows( 'tire_sizes' ) ) : ?>
												<?php while( have_rows( 'tire_sizes' ) ) : the_row();  ?>
													<div class="detail-table-cell d-flex align-items-center">
														<span><?php the_sub_field( 'size' ); ?></span>
													</div>
												<?php endwhile; ?>
											<?php endif; ?>
										</div>
									</div>
								<?php endwhile; ?>
							<?php endif; ?>
						</div>
					</div>
					<?php endwhile;
						// Need an unlikely integer.
						/*$big = 999999999;
						$paginate_links = paginate_links(
							array(
								'base' => str_replace( $big, '%#%', get_pagenum_link( $big ) ),
								'format' => '?paged=%#%',
								'current' => max( 1, get_query_var( 'paged' ) ),
								'total' => $market_overview->max_num_pages,
								'type' => 'array',
							)
						);*/
						//if ( $paginate_links ) :
							// $prev_post_link = reset( $paginate_links );
							// $next_post_link = end( $paginate_links );
							// preg_match_all( '/<a[^>]+href=([\'"])(?<href>.+?)\1[^>]*>/i', $next_post_link, $next_post );
							// preg_match_all( '/<a[^>]+href=([\'"])(?<href>.+?)\1[^>]*>/i', $prev_post_link, $prev_post );

					?>
						<div class="cta-wrap cta-inline">
							<a href="<?php echo yokohama_get_page_by_template( 'page-templates/product-overview-chart.php' ); ?>" class="cta-btn cta-sm"><span><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow prev svg" alt=""><?php _e( 'Prev', 'yokohama' ); ?></span></a>
							<a href="<?php echo yokohama_get_page_by_template( 'page-templates/tire-discount.php' ); ?>" class="cta-btn cta-sm"><span><?php echo _e( 'next', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
						</div>
					<?php // endif; ?>
					<?php wp_reset_postdata(); ?>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

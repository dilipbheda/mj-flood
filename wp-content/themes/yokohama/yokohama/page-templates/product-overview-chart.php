<?php
/**
 * Template Name: Product Overview - Chart
 *
 * @package WordPress
 */

get_header();
?>
<!-- main content start -->
<div class="main-content assessment-page" style="background-image: url('<?php echo TEMPLATEURL . '/assets/images/bg-image1.jpg'; ?>');">
	<div class="main-content-wrap">
		<div class="assessment-section">
			<div class="container container-sm">
				<div class="section-title">
					<h2 class="h1 text-white"><?php _e( 'Product Overview', 'yokohama' ); ?></h2>
				</div>
				<div class="overview-chart-section">
					<?php if ( get_field( 'sub_title' ) ) : ?>
						<h2 class="overview-chart-title h2"><?php echo get_field( 'sub_title' ); ?></h2>
					<?php endif; ?>
					<div class="overview-chart-content">
						<div class="overview-chart">
							<div id="overview_chart"></div>
						</div>
						<div class="content-wrap content-sm">
							<?php
								while( have_posts() ) : the_post();
									the_content();
								endwhile;
							?>
						</div>
						<div class="cta-wrap">
							<a href="<?php echo yokohama_get_page_by_template( 'page-templates/market-overview.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'next', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL . '/assets/images/right-arrow-white.svg'; ?>" class="cta-arrow svg" alt=""></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

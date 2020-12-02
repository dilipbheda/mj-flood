<?php
/**
 * Template Name: Product Overview
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content assessment-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="assessment-section">
			<div class="container">
				<?php the_title( '<div class="section-title"><h2 class="h1 text-white">', '</h2></div>' ); ?>
				<div class="assessment-box product-overview-box">
					<?php if ( get_field( 'sub_title' ) ) : ?>
						<div class="title">
							<h1 class="h2"><?php the_field( 'sub_title' ); ?></h1>
						</div>
					<?php endif; ?>
					<div class="content-wrap content-lg">
						<?php
							while( have_posts() ) : the_post();
								the_content();
							endwhile;
						?>
					</div>
					<div class="cta-wrap">
						<a href="<?php echo yokohama_get_page_by_template( 'page-templates/product-overview-chart.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'learn more', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt="learn more"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

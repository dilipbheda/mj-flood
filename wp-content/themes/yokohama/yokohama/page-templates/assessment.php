<?php
/**
 * Template Name: Assessment
 *
 * @package WordPress
 */

if ( ! is_user_logged_in() ) {
	wp_redirect( yokohama_get_page_by_template( 'page-templates/assessment.php' ) );
	exit;
}

$count_total = yokohama_count_total_attempt_quiz();
if ( ! is_user_logged_in() || $count_total >= 3 ) {
	wp_redirect( yokohama_get_page_by_template( 'page-templates/training.php' ) );
	exit;
}

get_header(); ?>

<!-- main content start -->
<div class="main-content assessment-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="assessment-section">
			<div class="container">
				<?php the_title( '<div class="section-title"><h2 class="h1 text-white">', '</h2></div>' ); ?>
				<div class="assessment-box">
					<div class="img-wrap"><?php the_post_thumbnail( 'full' ); ?></div>
					<?php if ( get_field( 'sub_title' ) ) : ?>
						<div class="title">
							<h1 class="h2"><?php the_field( 'sub_title' ); ?></h1>
						</div>
					<?php endif; ?>
					<div class="content-wrap content-lg">
						<?php
							while( have_posts() ) :
								the_post();
								the_content();
							endwhile;
						?>
					</div>
					<div class="cta-wrap">
						<a href="<?php echo yokohama_get_page_by_template( 'page-templates/assessment-start.php' ); ?>" class="cta-btn"><span><?php _e( 'start the assessment', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

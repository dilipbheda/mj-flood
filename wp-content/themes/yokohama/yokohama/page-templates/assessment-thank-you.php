<?php
/**
 * Template Name: Assessment Thank You
 *
 * @package WordPress
 */

if ( ! is_user_logged_in() ) {
	wp_redirect( yokohama_get_page_by_template( 'page-templates/assessment.php' ) );
	exit;
}
get_header();

$assessment_page = yokohama_get_page_by_template( 'page-templates/assessment.php', false );
?>
<!-- main content start -->
<div class="main-content assessment-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="assessment-section">
			<div class="container">
				<div class="section-title">
					<h2 class="h1 text-white"><?php _e( 'Assessment', 'yokohama' ); ?></h2>
				</div>
				<div class="assessment-box assessment-thank-you">
					<?php
						$result = yokohama_thank_you_page_result();
						$questions = [];
						foreach ( $result as $question => $answer ) {
							$is_valid = yokohama_find_right_answers( $question, $answer );
							$questions[] = $is_valid;
						}
						$total_valid = count( array_filter( $questions ) );
						if ( ! empty( $questions ) ) :
					?>
					<div class="completed-result"><?php echo wp_sprintf( '<span>%1$d/%2$d</span>%3$s', $total_valid, count( $result ), __( 'Completed', 'yokohama' ) ); ?></div>
					<div class="result-bar">
						<div class="result-bar-wrap">
							<ul class="d-flex flex-wrap justify-content-center">
								<?php foreach ( $questions as $question ) : ?>
									<li>
										<div class="result-icon<?php echo empty( $question ) ? ' false' : ' true'; ?>"></div>
									</li>
								<?php endforeach; ?>
							</ul>
						</div>
					</div>
					<?php endif; ?>
					<?php the_title( '<div class="title"><h1 class="h3">', '</h1></div>' ); ?>
					<div class="img-wrap"><?php echo get_the_post_thumbnail( $assessment_page, 'full' ); ?></div>
					<div class="content-wrap content-lg">
						<?php
							while( have_posts() ) : the_post();
								the_content();
							endwhile;
						?>
					</div>
					<div class="cta-wrap">
						<a href="<?php echo esc_url( home_url() ); ?>" class="cta-btn cta-sm"><span><?php _e( 'Home', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

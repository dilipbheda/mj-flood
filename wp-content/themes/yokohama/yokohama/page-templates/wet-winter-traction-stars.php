<?php
/**
 * Template Name: Wet Winter Traction - Stars
 *
 * @package WordPress
 */

get_header(); 

$wwt_page_id = yokohama_get_page_by_template( 'page-templates/wet-winter-traction-questions.php', false );
$wwt_question = yokohama_stars_rating( 'wwt_question', $wwt_page_id );

?>
<!-- main content start -->
<div class="main-content assessment-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="assessment-section">
			<div class="container">
				<div class="section-title">
					<h2 class="h1 text-white"><?php _e( 'Confident Wet Traction', 'yokohama' ); ?></h2>
				</div>
				<div class="question-timer">
					<div class="question-timer-inner">
						<div class="question-timer-wrap d-flex align-items-center">
							<div class="question-time"><?php echo ! empty( $wwt_question ) ? $wwt_question['time'] : '0m:0s' ?> <span><?php _e( 'your time', 'yokohama' ); ?></span></div>
						</div>
					</div>
				</div>
				<div class="assessment-question-box style1">
					<div class="title text-center">
						<?php
							$time_string = '';
							if ( isset( $wwt_question['time'] ) && ! empty( $wwt_question['time'] ) ) {
								$time_string = str_replace( array( ':', 'm', 's' ), array( ' ', ' Minute', ' Seconds' ), $wwt_question['time'] );
							}
							if ( isset( $wwt_question['stars'] ) && ! empty( $wwt_question['stars'] ) ) :
								while( have_posts() ) : the_post();
									$content = get_the_content();
									echo str_replace( '[time]', $time_string, $content );
								endwhile;
							else : ?>
									<h1 class="h3"><?php echo wp_sprintf( '%1$s<br/>%2$s', __( 'Incorrect', 'yokohama' ), __( 'Please Reread The Information Carefully And Try Again.', 'yokohama' ) ); ?></h1>
								<?php
							endif;
						?>
					</div>
					<?php $display = false; // if ( isset( $wwt_question['stars'] ) && ! empty( $wwt_question['stars'] ) ) : ?>
					<?php if ( $display ) : ?>
						<div class="ratings ratings-lg">
							<ul class="d-flex flex-wrap justify-content-center">
								<?php foreach ( range( 1, 5 ) as $stars ) : ?>
									<li class="<?php echo $wwt_question['stars'] >= $stars ? 'checked' : ''; ?>"><img src="<?php echo TEMPLATEURL; ?>/assets/images/rating-icon.svg" class="svg" alt=""></li>
								<?php endforeach; ?>
							</ul>
						</div>
					<?php endif; ?>
					<div class="cta-wrap cta-inline">
						<a href="<?php echo yokohama_get_page_by_template( 'page-templates/training.php' ); ?>" class="cta-btn"><span><?php _e( 'Continue', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
						<a href="<?php echo yokohama_get_page_by_template( 'page-templates/wet-winter-traction-questions.php' ); ?>" class="cta-btn cta-bordered"><span><?php _e( 'Retry', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

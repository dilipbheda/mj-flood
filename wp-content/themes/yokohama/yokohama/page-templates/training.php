<?php
/**
 * Template Name: Training
 *
 * @package WordPress
 */

get_header();

// Update product overview.
if ( wp_get_referer() === yokohama_get_page_by_template( 'page-templates/tire-discount.php' ) ) {
	if ( is_user_logged_in() ) {
		update_user_meta( get_current_user_id(), 'product_overview', 5 );
	}
}
$product_overview = 0;
$enabled_assessment = 0;
if ( is_user_logged_in() ) {
	$product_overview = get_user_meta( get_current_user_id(), 'product_overview', true );
}
?>
<!-- main content start -->
<div class="main-content home-page dark-bg">
	<div class="main-content-wrap">
		<div class="bg-img"><img src="<?php echo TEMPLATEURL; ?>/assets/images/tire-bg.png" alt=""></div>
		<div class="home-wrap">
			<div class="container home-content">
				<div class="section-title">
					<h1 class="h1 text-white"><?php _e( 'The all-new YK-CTX ', 'yokohama' ); ?></h1>
				</div>
				<div class="question-steps">
					<ul class="d-flex flex-wrap justify-content-center">
						<li>
							<div class="step-box">
								<div class="step-box-wrap">
									<h2 class="h2 box-title"><?php _e( 'Confident Wet Traction ', 'yokohama' ); ?></h2>
									<div class="box-cta">
										<a href="<?php echo yokohama_get_page_by_template( 'page-templates/wet-winter-traction.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'EXPERIENCE ', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt="Rating"></span></a>
									</div>
									<?php
										$wwt_page_id = yokohama_get_page_by_template( 'page-templates/wet-winter-traction-questions.php', false );
										$wwt_question = yokohama_stars_rating( 'wwt_question', $wwt_page_id );
										if ( isset( $wwt_question['stars'] ) && ! empty( $wwt_question['stars'] ) ) {
											$enabled_assessment += 1;
										}
									?>
									<div class="box-ratings ratings">
										<ul class="d-flex flex-wrap justify-content-center">
											<?php foreach ( range( 1, 5 ) as $stars ) : ?>
												<li class="<?php echo $wwt_question['stars'] >= $stars ? 'checked' : ''; ?>"><img src="<?php echo TEMPLATEURL; ?>/assets/images/rating-icon.svg" class="svg" alt=""></li>
											<?php endforeach; ?>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="step-box">
								<div class="step-box-wrap">
									<h2 class="h2 box-title"><?php _e( 'Superior Snow Traction', 'yokohama' ); ?></h2>
									<div class="box-cta">
										<a href="<?php echo yokohama_get_page_by_template( 'page-templates/handling.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'EXPERIENCE ', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
									</div>
									<?php
										$handling_page_id = yokohama_get_page_by_template( 'page-templates/handling-questions.php', false );
										$handling_question = yokohama_stars_rating( 'handling_question', $handling_page_id );
										if ( isset( $handling_question['stars'] ) && ! empty( $handling_question['stars'] ) ) {
											$enabled_assessment += 1;
										}
									?>
									<div class="box-ratings ratings">
										<ul class="d-flex flex-wrap justify-content-center">
											<?php foreach ( range( 1, 5 ) as $stars ) : ?>
												<li class="<?php echo $handling_question['stars'] >= $stars ? 'checked' : ''; ?>"><img src="<?php echo TEMPLATEURL; ?>/assets/images/rating-icon.svg" class="svg" alt="Rating"></li>
											<?php endforeach; ?>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="step-box">
								<!-- <div class="step-box-wrap" style="background-image: url('<?php // echo TEMPLATEURL; ?>/assets/images/tire-bg.png');"> -->
								<div class="step-box-wrap">
									<h2 class="h2 box-title"><?php _e( 'Quiet Comfortable Ride', 'yokohama' ); ?></h2>
									<div class="box-cta">
										<a href="<?php echo yokohama_get_page_by_template( 'page-templates/long-mileage.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'EXPERIENCE ', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
									</div>
									<?php
										$lm_page_id = yokohama_get_page_by_template( 'page-templates/long-mileage-questions.php', false );
										$lm_question = yokohama_stars_rating( 'lm_question', $lm_page_id );
										if ( isset( $lm_question['stars'] ) && ! empty( $lm_question['stars'] ) ) {
											$enabled_assessment += 1;
										}
									?>
									<div class="box-ratings ratings">
										<ul class="d-flex flex-wrap justify-content-center">
											<?php foreach ( range( 1, 5 ) as $stars ) : ?>
												<li class="<?php echo $lm_question['stars'] >= $stars ? 'checked' : ''; ?>"><img src="<?php echo TEMPLATEURL; ?>/assets/images/rating-icon.svg" class="svg" alt="Rating"></li>
											<?php endforeach; ?>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="step-box">
								<!-- <div class="step-box-wrap" style="background-image: url('<?php // echo TEMPLATEURL; ?>/assets/images/tire-bg.png');"> -->
								<div class="step-box-wrap">
									<h2 class="h2 box-title"><?php _e( 'Longer Tread Life', 'yokohama' ); ?></h2>
									<div class="box-cta">
										<a href="<?php echo yokohama_get_page_by_template( 'page-templates/longer-tread-life.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'EXPERIENCE ', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
									</div>
									<?php
										$lm_page_id = yokohama_get_page_by_template( 'page-templates/longer-tread-life-questions.php', false );
										$lm_question = yokohama_stars_rating( 'ltl_question', $lm_page_id );
										if ( isset( $lm_question['stars'] ) && ! empty( $lm_question['stars'] ) ) {
											$enabled_assessment += 1;
										}
									?>
									<div class="box-ratings ratings">
										<ul class="d-flex flex-wrap justify-content-center">
											<?php foreach ( range( 1, 5 ) as $stars ) : ?>
												<li class="<?php echo $lm_question['stars'] >= $stars ? 'checked' : ''; ?>"><img src="<?php echo TEMPLATEURL; ?>/assets/images/rating-icon.svg" class="svg" alt="Rating"></li>
											<?php endforeach; ?>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="step-box">
								<div class="step-box-wrap">
									<h2 class="h2 box-title"><?php _e( 'More Product insights', 'yokohama' ); ?></h2>
									<div class="box-cta">
										<a href="<?php echo yokohama_get_page_by_template( 'page-templates/product-overview.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'EXPERIENCE ', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
									</div>
									<!-- <div class="box-ratings ratings">
										<ul class="d-flex flex-wrap justify-content-center">
											<?php // foreach ( range( 1, 5 ) as $stars ) : ?>
												<li class="<?php // echo $product_overview >= $stars ? 'checked' : ''; ?>"><img src="<?php // echo TEMPLATEURL; ?>/assets/images/rating-icon.svg" class="svg" alt="Rating"></li>
											<?php // endforeach; ?>
										</ul>
									</div> -->
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="content-wrap content-sm">
					<p><?php _e( 'Complete the four modules to unlock:', 'yokohama' ); ?></p>
				</div>
				<?php
					$assessment = 'javascript:;';
					$is_disabled = true;
					if ( $enabled_assessment >= 4 ) {
						$assessment = yokohama_get_page_by_template( 'page-templates/assessment.php' );
						$is_disabled = false;
					}
					$count_total = yokohama_count_total_attempt_quiz();
					if ( $count_total >= 3 ) {
						$assessment = 'javascript:;';
						$is_disabled = true;
					}
				?>
				<div class="cta-wrap">
					<a href="<?php echo $assessment; ?>" class="cta-btn<?php echo $is_disabled ? ' cta-disabled' : ''; ?>"><span><?php _e( 'Assessment', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt="Assessment"></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

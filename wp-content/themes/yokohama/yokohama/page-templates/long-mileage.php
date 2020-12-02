<?php
/**
 * Template Name: Long Mileage
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content wet-winter-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap content-bottom">
		<div class="wet-winter-section">
			<div class="container">
				<div class="title-section text-white">
					<?php the_title( '<div class="title"><h1 class="h1">', '<h1></div>' ); ?>
					<div class="content-wrap">
						<?php
							while( have_posts() ) : the_post();
								the_content();
							endwhile;
						?>
					</div>
					<div class="cta-wrap continue-btn" hidden>
						<a href="<?php echo yokohama_get_page_by_template( 'page-templates/long-mileage-questions.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'continue', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span></a>
					</div>
				</div>
				<div class="overview-box">
					<div class="overview-box-wrap">
						<div class="img-wrap">
							<?php the_post_thumbnail( 'full' ); ?>
						</div>
						<div class="overview-points">
							<div class="result-icon popup-open"<?php echo get_field( 'step_one_title' ) ? ' data-target="#wwt_step1"' : ''; ?>></div>
							<div class="result-icon popup-open"<?php echo get_field( 'step_two_title' ) ? ' data-target="#wwt_step2"' : ''; ?>></div>
							<div class="result-icon popup-open"<?php echo get_field( 'step_three_title' ) ? ' data-target="#wwt_step3"' : ''; ?>></div>
						</div>
					</div>
					<div class="overview-bar">
						<div class="overview-bar-wrap d-inline-flex align-items-center justify-content-center">
							<div class="progress-number"> / 3</div>
							<div class="progress-indicator"></div>
							<div class="progress-result d-flex">
								<div class="result-icon"></div>
								<div class="result-icon"></div>
								<div class="result-icon"></div>
							</div>
							<div class="progress-text"><?php _e( 'Completed', 'yokohama' ); ?></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->

<?php if ( get_field( 'step_one_title' ) ) : ?>
<!-- first step popup start -->
<div class="popup info-popup" id="wwt_step1">
	<div class="popup-wrap">
		<div class="popup-inner">
			<div class="popup-content">
				<a href="#" class="popup-close"><img src="<?php echo TEMPLATEURL; ?>/assets/images/popup-close-icon.svg" alt=""></a>
				<div class="info-popup-wrap d-flex flex-wrap">
					<?php if ( get_field( 'step_one_image' ) ) : ?>
						<div class="img-wrap">
							<?php echo wp_get_attachment_image( get_field( 'step_one_image' ), 'full' ); ?>
						</div>
					<?php endif; ?>
					<div class="content-box">
						<div class="title">
							<h2 class="h2"><?php the_field( 'step_one_title' ); ?></h2>
						</div>
						<?php if ( get_field( 'step_one_description' ) ) : ?>
							<div class="sub-title">
								<?php the_field( 'step_one_description' ) ?>
							</div>
						<?php endif; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- first step popup end -->
<?php endif; ?>

<?php if ( get_field( 'step_two_title' ) ) : ?>
<!-- second step popup start -->
<div class="popup full-popup" id="wwt_step2">
	<div class="popup-wrap">
		<div class="popup-inner">
			<div class="popup-content">
				<a href="#" class="popup-close"><img src="<?php echo TEMPLATEURL; ?>/assets/images/popup-close-icon.svg" alt="close"></a>
				<div class="full-info-wrap d-flex">
					<div class="full-info-content">
						<div class="content-box content-white">
							<div class="title">
								<h2 class="h2"><?php the_field( 'step_two_title' ); ?></h2>
							</div>
							<?php if ( get_field( 'step_two_description' ) ) : ?>
								<div class="sub-title">
									<?php the_field( 'step_two_description' ) ?>
								</div>
							<?php endif; ?>
						</div>
					</div>
					<?php if ( get_field( 'step_two_image' ) ) : ?>
						<div class="full-info-img">
							<?php echo wp_get_attachment_image( get_field( 'step_two_image' ), 'full' ); ?>
							<span></span>
						</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="overview-bar">
		<div class="overview-bar-wrap d-inline-flex align-items-center justify-content-center">
			<div class="progress-number"> / 3</div>
			<div class="progress-indicator"></div>
			<div class="progress-result d-flex">
				<div class="result-icon"></div>
				<div class="result-icon"></div>
				<div class="result-icon"></div>
			</div>
			<div class="progress-text"><?php _e( 'Completed', 'yokohama' ); ?></div>
		</div>
	</div>
</div>
<!-- second step popup end -->
<?php endif; ?>

<?php if ( get_field( 'step_three_title' ) ) : ?>
<!-- third step popup start -->
<div class="popup full-popup" id="wwt_step3">
	<div class="popup-wrap">
		<div class="popup-inner">
			<div class="popup-content">
				<a href="#" class="popup-close"><img src="<?php echo TEMPLATEURL; ?>/assets/images/popup-close-icon.svg" alt="close"></a>
				<div class="full-info-wrap d-flex reverse-col">
					<div class="full-info-content">
						<div class="content-box content-white">
							<div class="title">
								<h2 class="h2"><?php the_field( 'step_three_title' ); ?></h2>
							</div>
							<?php if ( get_field( 'step_three_description' ) ) : ?>
								<div class="sub-title">
									<?php the_field( 'step_three_description' ) ?>
								</div>
							<?php endif; ?>
						</div>
					</div>
					<?php if ( get_field( 'step_three_image' ) ) : ?>
						<div class="full-info-img">
							<?php echo wp_get_attachment_image( get_field( 'step_three_image' ), 'full' ); ?>
							<span></span>
						</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="overview-bar">
		<div class="overview-bar-wrap d-inline-flex align-items-center justify-content-center">
			<div class="progress-number"> / 3</div>
			<div class="progress-indicator"></div>
			<div class="progress-result d-flex">
				<div class="result-icon"></div>
				<div class="result-icon"></div>
				<div class="result-icon"></div>
			</div>
			<div class="progress-text"><?php _e( 'Completed', 'yokohama' ); ?></div>
		</div>
	</div>
</div>
<?php endif; ?>
<?php
get_footer();

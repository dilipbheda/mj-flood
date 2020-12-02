<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Yoko_Hama
 */

?>
<?php if ( get_field( 'video_url', 'option' ) ) :
if ( is_user_logged_in() ) :
	$allow_to_open = get_transient( '_user_open_popup_' . get_current_user_id() );
	if ( $allow_to_open ) :
		delete_transient( '_user_open_popup_' . get_current_user_id() );
?>
<a href="#video_popup" class="popup-open open-video" hidden>
</a>
<!-- help popup start -->
<div class="popup video-popup" id="video_popup">
	<div class="popup-wrap">
		<div class="popup-inner">
			<div class="popup-content">
				<a href="javascript:;" class="popup-close"><img src="<?php echo TEMPLATEURL; ?>/assets/images/popup-close-icon.svg" alt=""></a>
				<div class="video-popup-wrap" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/popup-img.jpg');">
					<div class="video-wrap">
						<iframe src="<?php echo get_field( 'video_url', 'option' ); ?>"></iframe>
					</div>
					<div class="video-play">
						<a href="javascript:;"><span><img src="<?php echo TEMPLATEURL; ?>/assets/images/play-button.svg"></span><?php _e( 'play video', 'yokohama' ); ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- help popup end -->
<?php endif; endif; endif; ?>
<?php if ( get_field( 'contact_email', 'option' ) && get_field( 'contact_phone_number', 'option' ) ) : ?>
<!-- help popup start -->
<div class="popup help-popup" id="help_popup">
	<div class="popup-wrap">
		<div class="popup-inner">
			<div class="popup-content">
				<a href="#" class="popup-close"><img src="<?php echo TEMPLATEURL; ?>/assets/images/popup-close-icon.svg" alt=""></a>
				<div class="assessment-box help-popup-content">
					<div class="title">
						<h2 class="h1"><?php _e( 'CONTACT US', 'yokohama' ); ?></h2>
						<?php if ( get_field( 'help_text', 'option' ) ) : ?>
							<h3 class="h3"><?php the_field( 'help_text', 'option' ); ?></h3>
						<?php endif; ?>
						<h3 class="h3"><a href="mailto:<?php the_field( 'contact_email', 'option' ); ?>"><?php the_field( 'contact_email', 'option' ); ?></a> <?php _e( 'or call', 'yokohama' ); ?> <a href="tel:<?php the_field( 'contact_phone_number', 'option' ); ?>"><?php the_field( 'phone_number_label', 'option' ); ?></a></h3>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- help popup end -->
<?php endif; ?>
<!-- footer start -->
<div class="footer-section">
	<div class="container container-lg">
		<div class="footer-text"><?php echo wp_sprintf( __( '&copy; %1$d Yokohama Tire Corporation. All Rights Reserved.', 'yokohama' ), date_i18n( 'Y' ) ); ?></div>
	</div>
</div>
<!-- footer end -->
<?php if ( ! is_user_logged_in() ) : ?>
<!-- popup start -->
<div class="popup form-popup<?php echo ! is_user_logged_in() ? ' open' : ''; ?>" id="signup">
	<div class="popup-wrap">
		<div class="popup-inner">
			<div class="popup-content">
				<!-- <a href="#" class="popup-close"><img src="<?php // echo TEMPLATEURL; ?>/assets/images/popup-close-icon.svg" alt=""></a> -->
				<div class="popup-form">
					<div class="form-logo">
						<?php if ( get_field( 'sign_in_logo', 'option' ) ) : ?>
						<?php echo wp_get_attachment_image( get_field( 'sign_in_logo', 'option' ), 'full' ); ?>
						<?php else : ?>
							<img src="<?php echo TEMPLATEURL; ?>/assets/images/logo-white.svg" alt="yokohama">
						<?php endif; ?>
					</div>
					<div class="form-content">
						<div class="alert alert-danger" role="alert" hidden></div>
						<div class="form-title"><?php _e( 'SIGN IN', 'yokohama' ); ?></div>
						<div class="form-text"><?php _e( 'Welcome To Your Yk-ctx Training.', 'yokohama' ); ?></div>
						<div class="form-wrap">
							<form method="post" id="login_form">
								<input type="hidden" name="action" value="yokohama_signup">
								<?php wp_nonce_field( 'yokohama_employee_id', 'signup_nonce' ); ?>
								<div class="form-group">
									<input type="text" class="form-control" name="employee_id" placeholder="<?php esc_attr_e( 'Employee ID', 'yokohama' ); ?>">
									<div class="cv-spinner mt-3" hidden>
										<span class="spinner"></span>
									</div>
								</div>
								<?php if ( have_rows( 'sign_in_region', 'option' ) ) : ?>
									<div class="form-group">
										<select class="selectpicker form-control" name="region">
											<option selected disabled><?php _e( 'Region', 'yokohama' ); ?></option>
											<?php while( have_rows( 'sign_in_region', 'option' ) ) : the_row(); ?>
												<option value="<?php the_sub_field( 'region' ) ?>"><?php the_sub_field( 'region' ) ?></option>
											<?php endwhile; ?>
										</select>
									</div>
								<?php endif; ?>
								<div class="form-group">
									<input type="text" class="form-control" name="store" placeholder="<?php esc_attr_e( 'Store', 'yokohama' ); ?>">
								</div>
								<div class="submit-cta">
									<button type="submit" class="cta-btn"><span><?php _e( 'submit', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt=""></span><!-- <img src="<?php // echo TEMPLATEURL; ?>/assets/images/cta-bg.svg" class="cta-bg svg" alt=""> --></button>
									<div class="cv-spinner mt-3" hidden>
										<span class="spinner"></span>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- popup end -->
<?php endif; ?>
<?php wp_footer(); ?>

</body>
</html>

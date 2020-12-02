<?php
/**
 * Template Name: Tire Discount
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content tire-discount-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="tire-discount-section">
			<div class="container">
				<div class="title-section text-white">
					<?php if ( get_field( 'sub_title' ) ) : ?>
						<div class="title">
							<h1 class="h1"><?php the_field( 'sub_title' ); ?></h1>
						</div>
					<?php endif; ?>
					<div class="content-wrap">
						<?php
							while( have_posts() ) : the_post();
								the_content();
							endwhile;
						?>
					</div>
				</div>
				<?php if ( have_rows( 'discount' ) ) : ?>
					<div class="tire-discount">
						<div class="tire-discount-bg" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image2.jpg');"></div>
						<div class="tire-discount-inner">
							<div class="tire-discount-wrap d-flex justify-content-between">
								<?php while( have_rows( 'discount' ) ) : the_row(); ?>
									<div class="tire-discount-box">
										<div class="img-wrap">
											<?php echo wp_get_attachment_image( get_sub_field( 'tire_image' ), 'full' ); ?>
										</div>
										<?php if ( have_rows( 'tire_discount' ) ) : ?>
											<div class="tire-discount-content">
												<ul class="bullet-list style1">
													<?php while( have_rows( 'tire_discount' ) ) : the_row(); ?>
														<li><?php the_sub_field( 'tire_discount_text' ); ?></li>
													<?php endwhile; ?>
												</ul>
											</div>
										<?php endif; ?>
									</div>
								<?php endwhile; ?>
							</div>
						</div>
					</div>
				<?php endif; ?>
				<div class="cta-wrap cta-inline">
					<a href="<?php echo yokohama_get_page_by_template( 'page-templates/market-overview.php' ); ?>" class="cta-btn cta-sm"><span><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow prev svg" alt="Prev"><?php _e( 'Prev', 'yokohama' ); ?></span></a>
					<a href="<?php echo yokohama_get_page_by_template( 'page-templates/training.php' ); ?>" class="cta-btn cta-sm"><span><?php _e( 'Next', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt="Next"></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

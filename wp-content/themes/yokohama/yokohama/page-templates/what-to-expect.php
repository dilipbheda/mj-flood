<?php
/**
 * Template Name: What to expect
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content what-to-expect-page">
	<div class="main-content-wrap content-top">
		<?php get_template_part( 'template-parts/content', 'inner-banner' ); ?>
		<div class="what-to-expect-wrap">
			<div class="container">
				<?php if ( have_rows( 'what_to_expect' ) ) : ?>
					<?php while( have_rows( 'what_to_expect' ) ) : the_row(); ?>
						<div class="two-cols-section d-flex flex-wrap align-items-center justify-content-between<?php echo get_row_index() % 2 == 0 ? ' flex-row-reverse' : ''; ?>">
							<div class="col-left">
								<div class="img-wrap img-shadow">
									<?php echo wp_get_attachment_image( get_sub_field( 'image' ), 'full' ); ?>
								</div>
							</div>
							<div class="col-right">
								<div class="col-box-content">
									<div class="title">
										<?php if ( get_sub_field( 'sub_title' ) ) : ?>
											<div class="subtitle"><?php the_sub_field( 'sub_title' ); ?></div>
										<?php endif; ?>
										<h2 class="h1"><?php the_sub_field( 'title' ); ?></h2>
									</div>
									<div class="content-wrap content-sm">
										<?php the_sub_field( 'description' ); ?>
									</div>
								</div>
							</div>
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
			</div>
			<div class="section-cta">
				<div class="container">
					<a href="<?php echo yokohama_get_page_by_template( 'page-templates/training.php' ); ?>" class="cta-btn"><span><?php echo _e( 'Start', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL . '/assets/images/right-arrow-white.svg'; ?>" class="cta-arrow svg" alt=""></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

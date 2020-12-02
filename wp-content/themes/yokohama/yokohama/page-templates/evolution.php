<?php
/**
 * Template Name: Evolution
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content evolution-page">
	<div class="main-content-wrap content-top">
		<?php get_template_part( 'template-parts/content', 'inner-banner' ); ?>
		<?php if ( have_rows( 'evolution_timeline' ) ) : ?>
			<div class="evolution-timeline">
				<div class="container">
					<div class="evolution-timeline-inner">
						<div class="evolution-timeline-wrap d-flex">
							<?php while ( have_rows( 'evolution_timeline' ) ) : the_row(); ?>
								<div class="timeline-box">
									<div class="img-wrap">
										<?php echo wp_get_attachment_image( get_sub_field( 'image' ), 'full' ); ?>
									</div>
									<div class="timeline-text"><?php the_sub_field( 'title' ); ?> <br><?php the_sub_field( 'year' ); ?></div>
								</div>
							<?php endwhile; ?>
						</div>
					</div>
				</div>
			</div>
		<?php endif; ?>
		<div class="evolution-wrap">
			<div class="container">
				<div class="title text-center mt-5">
					<h2 class="h1"><?php _e( 'Growth Of The Yk Brand', 'yokohama' ); ?></h2>
				</div>
				<?php if ( have_rows( 'evolution_content' ) ) : ?>
					<?php while( have_rows( 'evolution_content' ) ) : the_row(); ?>
						<div class="two-cols-section d-flex flex-wrap align-items-center justify-content-between<?php echo get_row_index() % 2 == 0 ? ' flex-row-reverse' : ''; ?>">
							<div class="col-left">
								<div class="img-wrap img-shadow">
									<?php echo wp_get_attachment_image( get_sub_field( 'image' ), 'full' ); ?>
								</div>
							</div>
							<div class="col-right">
								<div class="col-box-content">
									<div class="title">
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
					<a href="<?php echo yokohama_get_page_by_template( 'page-templates/what-to-expect.php' ); ?>" class="cta-btn"><span><?php _e( 'What to expect', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL . '/assets/images/right-arrow-white.svg'; ?>" class="cta-arrow svg" alt=""></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

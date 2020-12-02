<?php
/**
 * Template Name: Our Story
 *
 * @package WordPress
 */

get_header(); ?>
<!-- main content start -->
<div class="main-content our-story-page">
	<div class="main-content-wrap content-top">
		<?php get_template_part( 'template-parts/content', 'inner-banner' ); ?>
		<div class="our-story-wrap">
			<?php if ( have_rows( 'yh_our_story' ) ) : ?>
				<?php while( have_rows( 'yh_our_story' ) ) : the_row(); ?>
					<div class="full-cols-section d-flex flex-wrap align-items-center<?php echo get_row_index() % 2 == 0 ? '' : ' reverse-cols'; ?>">
						<div class="col-left">
							<?php if ( get_sub_field( 'image' ) ) : ?>
								<div class="img-wrap img-backdrop<?php echo get_row_index() % 2 == 0 ? '' : ' img-reverse-backdrop'; ?>">
									<?php echo wp_get_attachment_image( get_sub_field( 'image' ), 'full' ); ?>
								</div>
							<?php endif; ?>
						</div>
						<div class="col-right">
							<div class="col-box-content">
								<?php if ( get_sub_field( 'title' ) ) : ?>
									<div class="title">
										<?php if ( get_sub_field( 'sub_title' ) ) : ?>
											<div class="subtitle"><?php the_sub_field( 'sub_title' ); ?></div>
										<?php endif; ?>
										<h2 class="h1"><?php the_sub_field( 'title' ); ?></h2>
									</div>
								<?php endif; ?>
								<?php if ( get_sub_field( 'description' ) ) : ?>
									<div class="content-wrap content-sm">
										<?php the_sub_field( 'description' ); ?>
									</div>
								<?php endif; ?>
							</div>
						</div>
					</div>
				<?php endwhile; ?>
			<?php endif; ?>
			<div class="section-cta">
				<div class="container">
					<a href="<?php echo yokohama_get_page_by_template( 'page-templates/evolution.php' ); ?>" class="cta-btn"><span><?php _e( 'Evolution', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL . '/assets/images/right-arrow-white.svg'; ?>" class="cta-arrow svg" alt=""></span></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();
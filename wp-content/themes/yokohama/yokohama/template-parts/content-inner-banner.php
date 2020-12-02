<?php
/**
 * Inner banner
 *
 * @package WordPress
 */
$banner_image = TEMPLATEURL . '/assets/images/banner-bg1.jpg';
if ( has_post_thumbnail() ) {
	$banner_image = get_the_post_thumbnail_url( get_the_ID(), 'full' );
}
?>
<div class="banner-section d-flex align-items-center" style="background-image: url(<?php echo $banner_image; ?>);">
	<div class="banner-wrap">
		<div class="container">
			<?php the_title( '<div class="title title-line"><h1 class="h1">', '</h1></div>' ); ?>
		</div>
	</div>
</div>

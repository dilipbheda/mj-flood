<?php
/**
 * Template Name: Home
 */

get_header(); ?>

<?php if ( get_field( 'banner_title', 'option' ) && get_field( 'banner_image', 'option' ) ) : ?>
<!-- Hero section Start-->
<section class="hero-banner">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 order-md-2">
                <div class="divImg">
                    <?php echo wp_get_attachment_image( get_field( 'banner_image', 'option' ), 'full' ); ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="banner-contant">
                    <h1><?php the_field( 'banner_title', 'option' ); ?></h1>
                    <?php
                        if ( get_field( 'banner_description', 'option' ) ) :
                            the_field( 'banner_description', 'option' );
                        endif;
                    ?>
                    <?php if ( get_field( 'banner_button_text', 'option' ) ) : ?>
                        <a href="<?php echo get_field( 'banner_button_url', 'option' ) ? get_field( 'banner_button_url', 'option' ) : '#'; ?>" class="btn"><?php the_field( 'banner_button_text', 'option' ); ?></a>
                    <?php endif; ?>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- Hero section End-->
<?php endif; ?>

<?php
$services = get_posts(
	array(
		'post_type' => 'services',
		'posts_per_page' => 5,
		'fields' => 'ids',
	)
);
if ( ! empty( $services ) ) : ?>
<!-- What we do section Start-->
<section class="whatWeDo-section">
    <div class="container-fluid px-0">
    	<div class="row no-gutters">
            <div class="col-12 text-center">
                <h2><?php _e( 'What we do', 'mj-flood-tech' ); ?></h2>
            </div>
        </div>
        <div class="comman-shape">
        	<div class="row no-gutters">
	        	<?php if ( isset( $services[0] ) && ! empty( $services[0] ) ) :
	        		$service_1 = get_post( $services[0] );
	        	?>
		            <div class="col-md-6">
		                <?php echo get_the_post_thumbnail( $service_1, 'full' ); ?>
		            </div>
		            <div class="col-md-3">
		                <div class="services-list yellow">
		                    <h3><?php echo get_the_title( $service_1 );  ?></h3>
		                    <?php echo get_the_excerpt( $service_1 ); ?>
		                    <div class="btns">
		                    	<a href="<?php echo get_the_permalink( $service_1 ); ?>" class="btn"><?php _e( 'See more', 'mj-flood-tech' );?></a>
		                    </div>
		                </div>
		            </div>
		        <?php endif; ?>

	            <?php if ( isset( $services[1] ) && ! empty( $services[1] ) ) :
	        		$service_2 = get_post( $services[1] );
	        	?>
		            <div class="col-md-3">
		                <?php echo get_the_post_thumbnail( $service_2, 'full' ); ?>
		            </div>
		            <div class="col-md-3">
		                <div class="services-list yellow">
		                    <h3><?php echo get_the_title( $service_2 );  ?></h3>
		                    <?php echo get_the_excerpt( $service_2 ); ?>
		                    <div class="btns">
		                    	<a href="<?php echo get_the_permalink( $service_2 ); ?>" class="btn"><?php _e( 'See more', 'mj-flood-tech' );?></a>
		                    </div>
		                </div>
		            </div>
	            <?php endif; ?>

	            <?php if ( isset( $services[2] ) && ! empty( $services[2] ) ) :
	        		$service_3 = get_post( $services[2] );
	        	?>
		            <div class="col-md-3">
		                 <?php echo get_the_post_thumbnail( $service_3, 'full' ); ?>
		            </div>
		            <div class="col-md-6">
		                <div class="services-list">
		                    <h3><?php echo get_the_title( $service_3 );  ?></h3>
			                    <?php echo get_the_excerpt( $service_3 ); ?>
			                    <div class="btns">
			                    	<a href="<?php echo get_the_permalink( $service_3 ); ?>" class="btn"><?php _e( 'See more', 'mj-flood-tech' );?></a>
			                    </div>
		                </div>
		            </div>
		        <?php endif; ?>

	            <?php if ( isset( $services[3] ) && ! empty( $services[3] ) ) :
	        		$service_4 = get_post( $services[3] );
	        	?>
		            <div class="col-md-3 order-md-2">
		                 <?php echo get_the_post_thumbnail( $service_4, 'full' ); ?>
		            </div>
		            <div class="col-md-6">
		                <div class="services-list justify-content-md-center">
		                     <h3><?php echo get_the_title( $service_4 );  ?></h3>
			                    <?php echo get_the_excerpt( $service_4 ); ?>
			                    <div class="btns">
			                    	<a href="<?php echo get_the_permalink( $service_4 ); ?>" class="btn"><?php _e( 'See more', 'mj-flood-tech' );?></a>
			                    </div>
		                </div>
		            </div>
            	<?php endif; ?>

	            <?php if ( isset( $services[4] ) && ! empty( $services[4] ) ) :
	        		$service_5 = get_post( $services[4] );
	        	?>
		            <div class="col-md-3 order-md-9">
		                <div class="services-list service-five yellow">
		                    <h3><?php echo get_the_title( $service_5 );  ?></h3>
		                   <?php echo get_the_excerpt( $service_5 ); ?>
		                    <div class="btns">
		                    	<a href="<?php echo get_the_permalink( $service_5 ); ?>" class="btn"><?php _e( 'See more', 'mj-flood-tech' );?></a>
		                    </div>
		                </div>
	            	</div>
	            <?php endif; ?>
        	</div>
        </div>
    </div>
</section>
<!-- What we do section End-->
<?php endif; ?>


<!-- Value we deliver section Start-->
<section class="valueDeliver-section">
    <div class="container">
        <div class="row">
            <?php
                while( have_posts() ) {
                    the_post();
                    the_content();
                }
            ?>
        </div>
    </div>
</section>
<!-- Value we deliver section End-->

<?php 
$our_partners = new WP_Query(
	array(
		'post_type' => 'our-partners',
		'posts_per_page' => 10,
	)
);
if ( $our_partners->have_posts() ) :
?>
<!-- Our partners section Start-->
<section class="our-partners-section">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2><?php _e( 'Our partners', 'mj-flood-tech' ) ?></h2>
            </div>
            <div class="col-12 partners-logos">
                <?php while ( $our_partners->have_posts() ) : $our_partners->the_post(); ?>
                <div class="logo-list">
                    <a href="javascript:;"><?php the_post_thumbnail( 'full' ); ?></a>
                </div>
                <?php endwhile; ?>
            </div>
            <div class="col-12 text-center">
                <a href="<?php echo mj_get_page_by_template( 'page-template/our-partners.php' ); ?>" class="btn"><?php _e( 'View more', 'mj-flood-tech' ); ?></a>
            </div>
        </div>
    </div>
</section>
<!-- Our partners section End-->
<?php endif; wp_reset_postdata(); ?>

<?php
	$casestudy = new WP_Query(
		array(
			'post_type' => 'case-study',
			'posts_per_page' => 4,
		)
	);
if ( $casestudy->have_posts() ) :
$count = 1;
$count_logo = 1;
?>
<!-- Case Study section Start-->
<section class="case-study-section comman-shape">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2><?php _e( 'Case study', 'mj-flood-tech' ) ?></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4 mb-md-0">
            	<ul class="nav nav-pills" id="myTab" role="tablist">
	                <?php while ( $casestudy->have_posts() ) : $casestudy->the_post(); ?>
	                    <li class="nav-item">
	                        <a class="nav-link<?php echo $count_logo == 1 ? ' active' : ''; ?>" id="one-tab" data-toggle="tab" href="#cs_<?php the_ID(); ?>" role="tab"
	                            aria-controls="one" aria-selected="true">
	                            <?php
	                            	if ( get_field( 'cs_logo' ) ) {
	                            		echo wp_get_attachment_image( get_field( 'cs_logo' ), 'full' );
	                            	}
	                            ?>	
	                        </a>
	                    </li>
	            	<?php $count_logo++; endwhile; ?>
                </ul>
            </div>
            <div class="col-md-8">
                <div class="tab-content" id="myTabContent">
                    <?php while ( $casestudy->have_posts() ) : $casestudy->the_post(); ?>
	                    <div class="tab-pane fade<?php echo $count == 1 ? ' active show' : ''; ?>" id="cs_<?php the_ID(); ?>" role="tabpanel" aria-labelledby="one-tab">
	                        <div class="content">
	                            <?php if ( get_field( 'sub_title' ) ) : ?>
	                            	<h6><?php the_field( 'sub_title' );  ?></h6>
	                            <?php endif; ?>
	                            <h5><?php the_title(); ?></h5>
	                            <?php the_content(); ?>
	                            <a href="<?php the_permalink(); ?>" class="btn"><?php _e( 'View more', 'mj-flood-tech'); ?></a>
	                        </div>
	                        <?php if ( has_post_thumbnail() ) : ?>
		                        <div class="divImg">
		                            <?php the_post_thumbnail( 'full' ); ?>
		                        </div>
		                    <?php endif; ?>
	                    </div>
	                <?php $count++; endwhile; ?>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Case Study section End-->
<?php endif; wp_reset_postdata(); ?>

<?php
$blog = new WP_Query(
	array(
		'post_type' => 'post',
		'posts_per_page' => 3,
	)
);
if ( $blog->have_posts() ) :
?>
<!-- News and events section Start-->
<section class="news-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2><?php _e( 'News and events', 'mj-flood-tech' ); ?></h2>
            </div>
        </div>
        <div class="news-main">
            <div class="row">
            	<?php while ( $blog->have_posts() ) : $blog->the_post(); ?>
	                <div class="col-md-4 mb-4 mb-md-0">
	                    <div class="news-list">
	                        <div class="newsImg">
	                            <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'full' ); ?></a>
	                        </div>
	                        <div class="newsContant">
	                            <div class="date">
	                                <span><?php the_time( 'd M Y' ); ?></span>
	                                <span>Read Time: 9 mins</span>
	                            </div>
	                            <h5><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
	                            <?php the_content(); ?>
	                            <a href="<?php the_permalink(); ?>" class="btn"><?php _e( 'Read more', 'mj-flood-tech' ); ?></a>
	                        </div>
	                    </div>
	                </div>
	            <?php endwhile; wp_reset_postdata(); ?>
            </div>
            <div class="row mt-5">
                <div class="col-12 text-center">
                    <a href="<?php echo get_permalink( get_option( 'page_for_posts' ) ); ?>" class="btn"><?php _e( 'View more', 'mj-flood-tech' ); ?></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- News and events section End-->
<?php endif; ?>
<?php
    if ( is_active_sidebar( 'sidebar-2' ) ) {
        dynamic_sidebar( 'sidebar-2' );
    }
?>
<!-- Request Consultation section Start-->
<!-- <section class="request-secttion">
    <div class="container">
        <div class="row">
            <div class="col-md-8 m-auto text-center">
                <h2>Request Consultation</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                <a href="#" class="btn">Find out more</a>
            </div>
        </div>
    </div>
</section> -->
<!-- Request Consultation section End-->

<?php
 get_footer();
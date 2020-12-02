<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Yoko_Hama
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<!-- Theme Color -->
	<meta name="theme-color" content="#FFF">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="stylesheet preload prefetch" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" as="style" type="text/css" crossorigin="anonymous">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<!-- header start -->
<div class="header-wrap">
	<header>
		<div class="container container-lg">
			<div class="header-inner d-flex justify-content-between align-items-center">

				<div class="logo">
					<a href=""><?php echo wp_get_attachment_image( get_field( 'header_logo', 'option' ), 'full' ); ?></a>
				</div>

				<?php if ( have_rows( 'tire_logos', 'option' ) ) : ?>
					<div class="header-logos d-flex ml-auto">
						<?php while( have_rows( 'tire_logos', 'option' ) ) : the_row(); ?>
							<span><?php echo wp_get_attachment_image( get_sub_field( 'tire_logo' ), 'full' ); ?></span>
						<?php endwhile; ?>
					</div>
				<?php endif; ?>

				<div class="header-right d-flex align-items-center">

					<div class="header-user">
						<?php if ( is_user_logged_in() ) :
							$user_info = get_user_by( 'ID', get_current_user_id() );
						?>
						<a href="<?php echo is_user_logged_in() ? 'javascript:;' : '#signup'; ?>" class="popup-open<?php echo is_user_logged_in() ? ' is-logged' : ''; ?>"><?php echo $user_info->user_login; ?> <img src="<?php echo TEMPLATEURL; ?>/assets/images/down-arrow-white.svg" alt=""></a>
						<?php else : ?>
							<a href="<?php echo is_user_logged_in() ? 'javascript:;' : '#signup'; ?>" class="popup-open<?php echo is_user_logged_in() ? ' is-logged' : ''; ?>"><?php _e( 'Login', 'yokohama' ); ?> <img src="<?php echo TEMPLATEURL; ?>/assets/images/down-arrow-white.svg" alt=""></a>
						<?php endif; ?>
						<ul class="header-user-menu">
							<?php if ( is_user_logged_in() ) : ?>
								<li><a href="<?php echo yokohama_get_page_by_template( 'page-templates/our-story.php' ) ?>"><?php _e( 'Our Story', 'yokohama' ); ?></a></li>
								<li><a href="<?php echo yokohama_get_page_by_template( 'page-templates/training.php' ) ?>"><?php _e( 'Home', 'yokohama' ); ?></a></li>
								<li><a href="<?php echo wp_logout_url( home_url( '/' ) ); ?>"><?php _e( 'Logout', 'yokohama' ); ?></a></li>
							<?php endif; ?>
						</ul>
					</div>

					<div class="header-help">
						<a href="#help_popup" class="popup-open"><img src="<?php echo TEMPLATEURL; ?>/assets/images/help-icon.svg" alt="Help"></a>
					</div>

				</div>

			</div>
		</div>
	</header>
</div>
<!-- header end -->

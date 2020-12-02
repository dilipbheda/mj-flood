<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package MJ_Flood_Technology
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="<?php echo TEMPLATEURL; ?>/assets/images/favicon.ico">
    <link rel="icon" href="<?php echo TEMPLATEURL; ?>/assets/images/favicon.ico" type="image/x-icon">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<header>
        <div class="nav-menu">
            <div class="container">
                <div class="nav-main d-flex align-items-center justify-content-between">
                    <div class="brand-navbar">
                        <a href="<?php echo esc_url( home_url() ); ?>" class="navbar-brand" ><?php echo wp_get_attachment_image( get_theme_mod( 'custom_logo' ), 'full' ); ?></a>
                    </div>
                    <div class="navRight d-flex align-items-center">
                        <div class="nav-search">
                            <form>
                                <input class="d-none" type="text" placeholder="Search..." name="search">
                                <button type="button"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <?php if ( has_nav_menu( 'menu-1' ) ) : ?>
                        <nav class="navbar collapse navbar-collapse p-0" id="navbarToggle">
                            <?php
                                wp_nav_menu(
                                    array(
                                        'theme_location' => 'menu-1',
                                        'container' => 'ul',
                                        'menu_class' => 'navbar-nav align-items-center flex-row',
                                    )
                                );
                            ?>
                        </nav>
                        <?php endif; ?>
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbarToggle"
                            aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </header>

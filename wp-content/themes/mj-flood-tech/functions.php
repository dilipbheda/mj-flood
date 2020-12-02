<?php
/**
 * MJ Flood Technology functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package MJ_Flood_Technology
 */

if ( ! function_exists( 'mj_flood_tech_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function mj_flood_tech_setup() {

		define( 'TEMPLATEURL', get_template_directory_uri() );

		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on MJ Flood Technology, use a find and replace
		 * to change 'mj-flood-tech' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'mj-flood-tech', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus(
			array(
				'menu-1' => esc_html__( 'Header', 'mj-flood-tech' ),
				'menu-2' => esc_html__( 'Footer - Solutions', 'mj-flood-tech' ),
				'menu-3' => esc_html__( 'Footer - Partners', 'mj-flood-tech' ),
				'menu-4' => esc_html__( 'Footer - Company', 'mj-flood-tech' ),
				'menu-5' => esc_html__( 'Footer - Legal', 'mj-flood-tech' ),
			)
		);

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'style',
				'script',
			)
		);

		// Set up the WordPress core custom background feature.
		add_theme_support(
			'custom-background',
			apply_filters(
				'mj_flood_tech_custom_background_args',
				array(
					'default-color' => 'ffffff',
					'default-image' => '',
				)
			)
		);

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support(
			'custom-logo',
			array(
				'height'      => 250,
				'width'       => 250,
				'flex-width'  => true,
				'flex-height' => true,
			)
		);
	}
endif;
add_action( 'after_setup_theme', 'mj_flood_tech_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function mj_flood_tech_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'mj_flood_tech_content_width', 640 );
}
add_action( 'after_setup_theme', 'mj_flood_tech_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function mj_flood_tech_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'mj-flood-tech' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'mj-flood-tech' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);

	register_sidebar(
		array(
			'name'          => esc_html__( 'Request Consultation', 'mj-flood-tech' ),
			'id'            => 'sidebar-2',
			'description'   => esc_html__( 'Add widgets here.', 'mj-flood-tech' ),
			'before_widget' => '<section class="request-secttion"><div class="container"><div class="row"><div class="col-md-8 m-auto text-center">',
			'after_widget'  => '</section></div></div></div>',
			'before_title'  => '<h2>',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'mj_flood_tech_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function mj_flood_tech_scripts() {
	wp_enqueue_style( 'mj-flood-tech-style', get_stylesheet_uri() );

	//CSS
	wp_enqueue_style( 'bootstrap', TEMPLATEURL . '/assets/css/bootstrap.css' );
	wp_enqueue_style( 'fontawesome', TEMPLATEURL . '/assets/css/fontawesome.css' );
	wp_enqueue_style( 'swiper-min', TEMPLATEURL . '/assets/css/swiper.min.css' );
	wp_enqueue_style( 'main-css', TEMPLATEURL . '/assets/css/main.css' );
	wp_enqueue_style( 'responsive', TEMPLATEURL . '/assets/css/responsive.css' );

	//JS
	wp_enqueue_script( 'jquery-popper', TEMPLATEURL .'/assets/js/popper.min.js', array( 'jquery' ), '', true );
	wp_enqueue_script( 'jquery-bootstrap', TEMPLATEURL .'/assets/js/bootstrap.min.js', array( 'jquery-popper' ), '', true );
	wp_enqueue_script( 'jquery-swiper', TEMPLATEURL .'/assets/js/swiper.min.js', array( 'jquery-bootstrap' ), '', true );
	wp_enqueue_script( 'mjtheme-general', TEMPLATEURL .'/assets/js/general.js', array( 'jquery-swiper' ), '', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'mj_flood_tech_scripts' );

/**
 * Allow media uploads.
 *
 * @param array $mimes File types.
 * @return array.
 */
function mj_flood_tech_mime_types( $mimes ) {
	$mimes['svg'] = 'image/svg+xml';
	return $mimes;
}
add_filter( 'upload_mimes', 'mj_flood_tech_mime_types' );

/**
 * Register ACF Option page.
 */
function mj_floo_tech_acf_op_init() {
	// Check function exists.
	if ( function_exists( 'acf_add_options_page' ) ) {
		// Register options page.
		acf_add_options_page(
			array(
				'page_title'    => __( 'Theme Options', 'mj-flood-tech' ),
				'menu_title'    => __( 'Theme Options', 'mj-flood-tech' ),
				'menu_slug'     => 'theme-setting',
				'capability'    => 'edit_posts',
				'redirect'      => false,
				'position'		=> 75,
				'icon_url'		=> 'dashicons-insert',
			)
		);
	}
}
add_action( 'acf/init', 'mj_floo_tech_acf_op_init' );

/**
 * Get page URL using template name.
 *
 * @param string $template Template Name.
 * @param bool   $url Get post link Default true.
 * @return string
 */
function mj_get_page_by_template( $template = '', $url = true ) {
	$pages = get_posts(
		array(
			'post_type' => 'page',
			'fields' => 'ids',
			'meta_key' => '_wp_page_template',
			'meta_value' => $template,
		)
	);
	if ( ! empty( $pages ) && $url ) {
		return get_the_permalink( reset( $pages ) );
	} else {
		return reset( $pages );
	}
	return '';
}

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Create Custom post type `case-study`
 */
require get_template_directory() . '/inc/post-types/case-study.php';

/**
 * Create Custom post type `our-partners`
 */
require get_template_directory() . '/inc/post-types/our-partners.php';

/**
 * Create Custom post type `services`
 */
require get_template_directory() . '/inc/post-types/services.php';
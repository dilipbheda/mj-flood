<?php
/**
 * Yoko Hama functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Yoko_Hama
 */

if ( ! function_exists( 'yokohama_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function yokohama_setup() {

		define( 'TEMPLATEURL', get_template_directory_uri() );

		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Yoko Hama, use a find and replace
		 * to change 'yokohama' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'yokohama', get_template_directory() . '/languages' );

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
				'menu-1' => esc_html__( 'Primary', 'yokohama' ),
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
				'yokohama_custom_background_args',
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
add_action( 'after_setup_theme', 'yokohama_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function yokohama_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'yokohama_content_width', 640 );
	// Disable admin bar for employees.
	if ( current_user_can( 'employees' ) ) {
		show_admin_bar( false );
	}
}
add_action( 'after_setup_theme', 'yokohama_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function yokohama_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'yokohama' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'yokohama' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'yokohama_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function yokohama_scripts() {
	wp_enqueue_style( 'theme-style', get_stylesheet_uri(), array(), '' );

	// Move WordPress JS in footer.
	wp_scripts()->add_data( 'jquery', 'group', 1 );
	wp_scripts()->add_data( 'jquery-core', 'group', 1 );
	wp_scripts()->add_data( 'jquery-migrate', 'group', 1 );

	/**
	 * Enqueue javascript CDN Default: theme dir path
	 */

	// Enqueue popper JS.
	$popper_js = 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js';
	if ( yokohama_check_is_valid_url( $popper_js ) ) {
		wp_enqueue_script( 'jquery-popper', $popper_js, array( 'jquery' ), '', true );
	} else {
		wp_enqueue_script( 'jquery-popper', TEMPLATEURL . '/assets/js/popper.min.js', array( 'jquery' ), '', true );
	}

	// Enqueue bootstrap JS.
	$bootstrap_js = 'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js';
	if ( yokohama_check_is_valid_url( $bootstrap_js ) ) {
		wp_enqueue_script( 'jquery-bootstrap', $bootstrap_js, array( 'jquery' ), '', true );
	} else {
		wp_enqueue_script( 'jquery-bootstrap', TEMPLATEURL . '/assets/js/bootstrap.min.js', array( 'jquery' ), '', true );
	}

	// Enqueue bootstrap select JS.
	$bootstrap_select_js = 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.14/js/bootstrap-select.min.js';
	if ( yokohama_check_is_valid_url( $bootstrap_select_js ) ) {
		wp_enqueue_script( 'jquery-bootstrap-select', $bootstrap_select_js, array( 'jquery' ), '', true );
	} else {
		wp_enqueue_script( 'jquery-bootstrap-select', TEMPLATEURL . '/assets/js/bootstrap-select.min.js', array( 'jquery' ), '', true );
	}

	// Enqueue fancybox JS.
	$fancybox_js = 'https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.2/jquery.fancybox.min.js';
	if ( yokohama_check_is_valid_url( $fancybox_js ) ) {
		wp_enqueue_script( 'jquery-fancybox', $fancybox_js, array( 'jquery' ), '', true );
	} else {
		wp_enqueue_script( 'jquery-fancybox', TEMPLATEURL . '/assets/js/fancybox.min.js', array( 'jquery' ), '', true );
	}

	// Enqueue slick JS.
	$slick_js = 'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js';
	if ( yokohama_check_is_valid_url( $slick_js ) ) {
		wp_enqueue_script( 'jquery-slick', $slick_js, array( 'jquery' ), '', true );
	} else {
		wp_enqueue_script( 'jquery-slick', TEMPLATEURL . '/assets/js/slick.min.js', array( 'jquery' ), '', true );
	}
	// Enqueue countdown JS.
	wp_enqueue_script( 'jquery-countdown', TEMPLATEURL . '/assets/js/jquery.countdownTimer.min.js', array( 'jquery' ), '', true );
	// Theme setting JS.
	wp_enqueue_script( 'jquery-apexcharts', TEMPLATEURL . '/assets/js/apexcharts.js', array( 'jquery' ), '', true );
	wp_enqueue_script( 'yokohama', TEMPLATEURL . '/assets/js/setting.js', array( 'jquery' ), '', true );
	wp_enqueue_script( 'yokohama-quiz', TEMPLATEURL . '/assets/js/theme-yokohama.js', array( 'jquery' ), '', true );
	// Localize JavaScript Data.
	$chart_page_id = yokohama_get_page_by_template( 'page-templates/product-overview-chart.php', false );
	wp_localize_script( 'yokohama-quiz', 'YH',
		array(
			'ajax_url' => admin_url( 'admin-ajax.php' ),
			'_nonce'   => wp_create_nonce( '_yh_quiz_test' ),
			'redirect_to' => yokohama_get_page_by_template( 'page-templates/assessment-thank-you.php' ),
			'ChartData' => array(
				'category' => get_field( 'product_category', $chart_page_id ),
				'sub_category' => get_field( 'sub_category', $chart_page_id ),
				'data' => get_field( 'chart_data', $chart_page_id ),
			),
		)
	);
	// Chart data.
	wp_localize_script( 'yokohama', 'YH',
		array(
			'ChartData' => array(
				'category' => get_field( 'product_category', $chart_page_id ),
				'sub_category' => get_field( 'sub_category', $chart_page_id ),
				'data' => get_field( 'chart_data', $chart_page_id ),
			),
		)
	);

	/**
	 * Enqueue CSS CDN Default: theme dir path
	 */

	// Enqueue bootstrap CSS.
	$bootstrap_css = 'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css';
	if ( yokohama_check_is_valid_url( $bootstrap_css ) ) {
		wp_enqueue_style( 'jquery-bootstrap', $bootstrap_css );
	} else {
		wp_enqueue_style( 'jquery-bootstrap', TEMPLATEURL . '/assets/css/bootstrap.min.css' );
	}

	// Enqueue bootstrap select CSS.
	$bootstrap_select_css = 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.14/css/bootstrap-select.min.css';
	if ( yokohama_check_is_valid_url( $bootstrap_select_css ) ) {
		wp_enqueue_style( 'jquery-bootstrap-select', $bootstrap_select_css );
	} else {
		wp_enqueue_style( 'jquery-bootstrap-select', TEMPLATEURL . '/assets/css/bootstrap-select.min.css' );
	}

	// Enqueue fancybox CSS.
	$fancybox_css = 'https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.2/jquery.fancybox.min.css';
	if ( yokohama_check_is_valid_url( $fancybox_css ) ) {
		wp_enqueue_style( 'jquery-fancybox', $fancybox_css );
	} else {
		wp_enqueue_style( 'jquery-fancybox', TEMPLATEURL . '/assets/css/jquery.fancybox.min.css' );
	}

	// Enqueue slick CSS.
	$slick_css = 'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css';
	if ( yokohama_check_is_valid_url( $slick_css ) ) {
		wp_enqueue_style( 'jquery-slick', $slick_css );
	} else {
		wp_enqueue_style( 'jquery-slick', TEMPLATEURL . '/assets/css/slick.min.css' );
	}
	// Default theme CSS.
	wp_enqueue_style( 'google-font', 'https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700' );
	wp_enqueue_style( 'font-awesome', TEMPLATEURL . '/assets/fonts/awesome/css/font-awesome.css' );
	wp_enqueue_style( 'helvetica', TEMPLATEURL . '/assets/fonts/helvetica/css/helvetica.css' );
	wp_enqueue_style( 'yokohama-style', TEMPLATEURL . '/assets/css/style.css' );
	wp_enqueue_style( 'yokohama-media', TEMPLATEURL . '/assets/css/media.css' );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'yokohama_scripts' );

/**
 * Admin enqueue script.
 */
function yokohama_admin_scripts() {
	wp_enqueue_style( 'yokohama-admin', TEMPLATEURL . '/assets/css/admin.css' );
	wp_enqueue_script( 'yokohama-admin', TEMPLATEURL . '/assets/js/admin.js', array( 'jquery' ), '', true );
}
add_action( 'admin_enqueue_scripts', 'yokohama_admin_scripts' );

/**
 * Register ACF Option page.
 */
function yokohama_acf_op_init() {
	// Check function exists.
	if ( function_exists( 'acf_add_options_page' ) ) {
		// Register options page.
		acf_add_options_page(
			array(
				'page_title'    => __( 'Yokohama Quiz', 'yokohama' ),
				'menu_title'    => __( 'Yokohama Quiz', 'yokohama' ),
				'menu_slug'     => 'yokohama-quiz',
				'capability'    => 'edit_posts',
				'redirect'      => false,
				'position'		=> 50,
				'icon_url'		=> 'dashicons-superhero',
				// 'update_button' => __( 'Update', 'yokohama' ),
				'updated_message' => __( 'Quiz saved successfully!', 'yokohama' ),
			)
		);

		// Register options page.
		acf_add_options_page(
			array(
				'page_title'    => __( 'Theme Options', 'yokohama' ),
				'menu_title'    => __( 'Theme Options', 'yokohama' ),
				'menu_slug'     => 'theme-setting',
				'capability'    => 'edit_posts',
				'redirect'      => false,
				'position'		=> 75,
				'icon_url'		=> 'dashicons-insert',
			)
		);
	}
}
add_action( 'acf/init', 'yokohama_acf_op_init' );

/**
 * Allow media uploads.
 *
 * @param array $mimes File types.
 * @return array.
 */
function yokohama_mime_types( $mimes ) {
	$mimes['svg'] = 'image/svg+xml';
	return $mimes;
}
add_filter( 'upload_mimes', 'yokohama_mime_types' );

/**
 * Verify quiz question.
 */
function yokohama_quiz_test() {
	// Verify AJXA nonce.
	check_ajax_referer( '_yh_quiz_test', 'security_nonce' );

	$response = array(
		'status' => 0,
	);

	// If check $_POST empty OR not.
	if ( ! empty( $_POST ) && isset( $_POST['quiz'] ) ) {
		$attempt_question = ! empty( $_POST['quiz'] ) ? $_POST['quiz'] : [];
		$attempt_question_keys = array_keys( $attempt_question );
		$attempt_question = array(
			end( $attempt_question_keys ) => end( $attempt_question ),
		);
		foreach ( $attempt_question as $question => $answer ) {
			$is_valid = yokohama_find_right_answers( $question, $answer );
			if ( ! empty( $is_valid ) ) {
				$response['status'] = 1;
			}
		}
		if ( isset( $_POST['save'] ) && $_POST['save'] ) {
			$user_id = get_current_user_id();
			$user_info = get_user_by( 'ID', $user_id );
			// save quiz data.
			$post_id = wp_insert_post(
				array(
					'post_type' => 'result',
					'post_title' => $user_info->user_login,
					'post_author' => $user_id,
					'post_status' => 'publish',
				)
			);
			// Update post data.
			update_post_meta( $post_id, '_quiz_result_data', $_POST['quiz'] );
		}
	}
	wp_send_json( $response );
	die();
}
add_action( 'wp_ajax_yokohama_quiz_test', 'yokohama_quiz_test' );
add_action( 'wp_ajax_nopriv_yokohama_quiz_test', 'yokohama_quiz_test' );

/**
 * Find login info.
 */
function yokohama_login_info() {
	$response = array(
		'status' => 0,
		'store'  => '',
		'region' => '',
	);
	if ( isset( $_POST['userlogin'] ) && ! empty( $_POST['userlogin'] ) ) {
		if ( username_exists( $_POST['userlogin'] ) ) {
			$logininfo = get_user_by( 'login', $_POST['userlogin'] );
			if ( $logininfo ) {
				// Update user meta.
				$region = get_user_meta( $logininfo->ID, 'region', true );
				$store = get_user_meta( $logininfo->ID, 'store', true );
				$response['status'] = 1;
				$response['store'] = ! empty( $store ) ? $store : '';
				$response['region'] = ! empty( $region ) ? $region : '';
			}
		}
	}
	wp_send_json( $response );
	die();
}
add_action( 'wp_ajax_yokohama_login_info', 'yokohama_login_info' );
add_action( 'wp_ajax_nopriv_yokohama_login_info', 'yokohama_login_info' );

/**
 * Verify sign up request.
 */
function yokohama_signup() {
	// Verify ajax nonce.
	check_ajax_referer( 'yokohama_employee_id', 'signup_nonce' );
	$employee_id = isset( $_POST['employee_id'] ) ? $_POST['employee_id'] : '';
	$region = isset( $_POST['region'] ) ? $_POST['region'] : '';
	$store = isset( $_POST['store'] ) ? $_POST['store'] : '';
	$is_valid_employee = false;
	$is_new = false;
	if ( username_exists( $employee_id ) ) {
		$is_valid_employee = true;
	} else {
		$is_valid_employee = wp_create_user( $employee_id, wp_generate_password( 12 ) );
		if ( $is_valid_employee ) {
			$is_new = true;
		}
	}
	// Default response.
	$response = array(
		'status' => 0,
		'message' => __( 'Something went wrong please try again.', 'yokohama' ),
	);
	// Valid employee login.
	if ( $is_valid_employee ) {
		$get_user = get_user_by( 'login', $employee_id );
		if ( $get_user ) {
			if ( $is_new ) {
				$get_user->set_role( 'employees' );
			}
			// Employee login.
			wp_set_current_user( $get_user->ID, $get_user->user_login );
			wp_set_auth_cookie( $get_user->ID );
			do_action( 'wp_login', $get_user->user_login );

			// Update user meta.
			update_user_meta( $get_user->ID, 'region', $region );
			update_user_meta( $get_user->ID, 'store', $store );
			set_transient( '_user_open_popup_' . $get_user->ID, 1, HOUR_IN_SECONDS );
			// Send AJAX response.
			$response = array(
				'status' => 1,
				'redirect_to' => home_url(),
				//'redirect_to' => add_query_arg( array( 'region' => $region, 'store' => $store ), yokohama_get_page_by_template( 'page-templates/assessment.php' ) ),
			);
		}
	}
	wp_send_json( $response );
	die();
}
add_action( 'wp_ajax_yokohama_signup', 'yokohama_signup' );
add_action( 'wp_ajax_nopriv_yokohama_signup', 'yokohama_signup' );

/**
 * Valid pre question.
 */
function yokohama_pre_question() {

	$response = array(
		'status' => 0,
		'redirect_to' => '',
	);

	// Check is valid post data.
	if ( ! empty( $_POST ) ) {
		$post_id = isset( $_POST['post_id'] ) ? $_POST['post_id'] : 0;
		$question_id = isset( $_POST['question_id'] ) ? $_POST['question_id'] : 0;
		$value = isset( $_POST['value'] ) ? $_POST['value'] : 0;
		$time = isset( $_POST['time'] ) ? $_POST['time'] : 0;
		$field_name = isset( $_POST['field_name'] ) ? $_POST['field_name'] : 0;
		if ( $post_id ) {
			$is_valid = yokohama_find_right_answers( $question_id, $value, true, $post_id );
			if ( ! empty( $is_valid ) ) {
				$response['status'] = 1;
			}
			if ( 'wwt_question' == $field_name ) {
				$response['redirect_to'] = yokohama_get_page_by_template( 'page-templates/wet-winter-traction-stars.php' );
			}
			if ( 'handling_question' == $field_name ) {
				$response['redirect_to'] = yokohama_get_page_by_template( 'page-templates/handling-stars.php' );
			}
			if ( 'lm_question' == $field_name ) {
				$response['redirect_to'] = yokohama_get_page_by_template( 'page-templates/long-mileage-stars.php' );
			}
			if ( 'ltl_question' == $field_name ) {
				$response['redirect_to'] = yokohama_get_page_by_template( 'page-templates/longer-tread-life-stars.php' );
			}
		}
		$store_value = array(
			'time' => $time,
		);
		if ( isset( $response['status'] ) && 1 == $response['status'] ) {
			$store_value['question_id'] = $question_id;
			$store_value['answer'] = $value;
		}
		if ( is_user_logged_in() ) {
			update_user_meta( get_current_user_id(), $field_name, $store_value );
		}
	}
	wp_send_json( $response );
	die();
}
add_action( 'wp_ajax_yokohama_pre_question', 'yokohama_pre_question' );
add_action( 'wp_ajax_nopriv_yokohama_pre_question', 'yokohama_pre_question' );

/**
 * Disallow admin access for employees.
 */
function yokohama_admin_init() {
	if ( ! wp_doing_ajax() && current_user_can( 'employees' ) ) {
		wp_redirect( home_url() );
		exit;
	}
}
add_action( 'admin_init', 'yokohama_admin_init' );

/**
 * Remove the content editor from ALL pages.
 */
function yokohama_remove_content_editor() {
	global $post;
	if ( $post ) {
		$page_template = get_post_meta( $post->ID, '_wp_page_template', true );
		$templates = array(
			'page-templates/evolution.php',
			'page-templates/our-story.php',
			'page-templates/what-to-expect.php',
			'page-templates/wet-winter-traction-questions.php',
			'page-templates/handling-questions.php',
			'page-templates/long-mileage-questions.php',
			'page-templates/longer-tread-life-questions.php',
		);
		if ( in_array( $page_template, $templates ) ) {
			remove_post_type_support( 'page', 'editor' );
		}
	}
}
add_action( 'admin_head', 'yokohama_remove_content_editor' );

/**
 * Count stars rating.
 *
 * @param string $key User meta key.
 */
function yokohama_stars_rating( $key, $post_id = 0 ) {
	if ( is_user_logged_in() ) {
		$data = get_user_meta( get_current_user_id(), $key, true );
		$valid_data = array(
			'time' => isset( $data['time'] ) ? $data['time'] : '',
			'stars' => 0,
		);

		// Rating count.
		if ( isset( $valid_data['time'] ) && ! empty( $valid_data['time'] ) ) {
			$timer = explode( ':', $valid_data['time'] );
			$timer = array_map( function( $t ) {
				return preg_replace( '/[^0-9]/', '', $t );
			}, $timer );

			$timer = join( '.', $timer );

			// Disaplay time.
			//$time = abs( $timer - 03.15 );
			$quiz_start_date = date_i18n( 'Y-m-d' );
			$quiz_end_date = date_i18n( 'Y-m-d' );
			$quiz_start_date = new DateTime( $quiz_start_date . ' 00.03.15' );
			$quiz_end_diff = $quiz_start_date->diff( new DateTime( $quiz_end_date . ' 00.' . $timer ) );
			//$valid_data['time'] = sprintf('%02dm:%02ds', (int) $time, fmod($time, 1) * 60 + 5 );
			$valid_data['time'] = sprintf('%02dm:%02ds', $quiz_end_diff->i, $quiz_end_diff->s );
			// Stars rating.
			$timer = floatval( $timer );
			//$stars = round( $timer * 2, 0, PHP_ROUND_HALF_DOWN );
			$user_time = $quiz_end_diff->i . '.' . $quiz_end_diff->s;
			$user_time = floatval( $user_time );
			if ( $user_time > 2.30  && $user_time < 3.15 ) {
				$stars = 1;
			} elseif( $user_time > 2.00  && $user_time < 2.29 ) {
				$stars = 2;
			} elseif( $user_time > 1.30  && $user_time < 1.59 ) {
				$stars = 3;
			} elseif( $user_time > 1.00 && 1.29 < $user_time ) {
				$stars = 4;
			} elseif( $user_time > 1 && $user_time < 1.30 ) {
				$stars = 4;
			} else {
				$stars = 5;
			}
			$stars = $stars > 5 ? 5 : $stars;
			$valid_data['stars'] = $stars;
		}

		// Onload verify answer.
		if ( $post_id ) {
			$question_id = isset( $data['question_id'] ) ? $data['question_id'] : '';
			$answer = isset( $data['answer'] ) ? $data['answer'] : '';
			$is_valid = yokohama_find_right_answers( $question_id, $answer, true, $post_id );
			if ( empty( $is_valid ) ) {
				$valid_data['stars'] = 0;
				return $valid_data;
			}
		}
		return $valid_data;
	}
	return false;
}

/**
 * Get quiz questions.
 *
 * @param bool $pre_question  Pre Question.
 * @param int $post_id  Post ID.
 * @return array
 */
function yokohama_get_quiz_question( $pre_question = false, $post_id = 0 ) {
	$quiz = [];
	if ( $pre_question ) {
		if ( have_rows( 'pre_question', $post_id ) ) {
			while ( have_rows( 'pre_question', $post_id ) ) {
				the_row();
				$unique_id = get_sub_field( 'question_id' );
				$answers = get_sub_field( 'answers' );
				$quiz[ $unique_id ] = array(
					'question' => get_sub_field( 'question' ),
					'answers' => $answers,
					'right_answer' => get_sub_field( 'right_answer' ),
				);
			}
		}
	} else {
		if ( have_rows( '_quiz_questions', 'option' ) ) {
			while ( have_rows( '_quiz_questions', 'option' ) ) {
				the_row();
				$unique_id = get_sub_field( 'question_id' );
				$answers = get_sub_field( 'answers' );
				$quiz[ $unique_id ] = array(
					'question' => get_sub_field( 'questions' ),
					'answers' => $answers,
					'right_answer' => get_sub_field( 'right_answer' ),
					'tip' => get_sub_field( 'answer_tip' ),
				);
			}
		}
	}
	return $quiz;
}

/**
 * Shuffle assoc array
 *
 * @param array $list Array List.
 * @return array
 */
function shuffle_assoc( $list ) {
	if ( ! is_array( $list ) ) {
		return $list;
	}
	$keys = array_keys( $list );
	shuffle( $keys );
	$random = array();
	foreach ( $keys as $key ) {
		$random[ $key ] = $list[ $key ];
	}
	return $random;
}

/**
 * Get quiz questions.
 *
 * @param array $question_id Question ID.
 * @param array $answer_id Answer ID.
 * @return array
 */
function yokohama_find_right_answers( $question_id = 0, $answer_id = 0, $pre_question = false, $post_id = 0 ) {
	if ( $question_id ) {
		$questions = yokohama_get_quiz_question( $pre_question, $post_id );
		if ( isset( $questions[ $question_id ] ) && $questions[ $question_id ] ) {
			$answers = $questions[ $question_id ]['answers'];
			$right_answer = (int) $questions[ $question_id ]['right_answer'];
			$find_right_answer = array_search( $answer_id, array_column( $answers, 'answer_id' ) );
			if ( false !== $find_right_answer && $right_answer === $find_right_answer ) {
				return array(
					'question' => $questions[ $question_id ]['question'],
					'answer'   => $answers[ $find_right_answer ]['answer'],
				);
			}
			return false;
		}
		return false;
	}
	return false;
}

/**
 * Check is valid URL not.
 *
 * @param string $url URL.
 * @return string
 */
function yokohama_check_is_valid_url( $url = '' ) {
	if ( defined( 'DISABLED_CDN_SCRIPT' ) && DISABLED_CDN_SCRIPT ) {
		return false;
	}
	if ( ! empty( $url ) ) {
		$file_headers = get_headers( $url );
		return strpos( $file_headers[0], '200' );
	}
	return false;
}

/**
 * Get page URL using template name.
 *
 * @param string $template Template Name.
 * @param bool   $url Get post link Default true.
 * @return string
 */
function yokohama_get_page_by_template( $template = '', $url = true ) {
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
 * Get last quiz result.
 */
function yokohama_thank_you_page_result() {
	if ( is_user_logged_in() ) {
		$result_id = get_posts(
			array(
				'post_type' => 'result',
				'fields' => 'ids',
				'posts_per_page' => 1,
				'author'        => get_current_user_id(),
			)
		);
		if ( ! empty( $result_id ) ) {
			$result_id = reset( $result_id );
			return get_post_meta( $result_id, '_quiz_result_data', true );
		}
	}
	return false;
}

/**
 * Count total attempt quiz.
 *
 * @return int Default 0.
 */
function yokohama_count_total_attempt_quiz() {
	if ( ! current_user_can( 'administrator' ) ) {
		$result_id = get_posts(
			array(
				'post_type' => 'result',
				'fields' => 'ids',
				'posts_per_page' => -1,
				'author'        => get_current_user_id(),
			)
		);
		return count( $result_id );
	}
	return 0;
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
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Register custom post type.
 */
require get_template_directory() . '/inc/post-types/market-overview.php';

/**
 * Register custom post type.
 */
require get_template_directory() . '/inc/post-types/quiz-result.php';

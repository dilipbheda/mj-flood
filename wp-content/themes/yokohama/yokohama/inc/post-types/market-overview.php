<?php

/**
 * Registers the `market_overview` post type.
 */
function market_overview_init() {
	register_post_type( 'market', array(
		'labels'                => array(
			'name'                  => __( 'Market Overview', 'yokohama' ),
			'singular_name'         => __( 'Market Overview', 'yokohama' ),
			'all_items'             => __( 'All Market Overview', 'yokohama' ),
			'archives'              => __( 'Market Overview Archives', 'yokohama' ),
			'attributes'            => __( 'Market Overview Attributes', 'yokohama' ),
			'insert_into_item'      => __( 'Insert into Market Overview', 'yokohama' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Market Overview', 'yokohama' ),
			'featured_image'        => _x( 'Featured Image', 'market', 'yokohama' ),
			'set_featured_image'    => _x( 'Set featured image', 'market', 'yokohama' ),
			'remove_featured_image' => _x( 'Remove featured image', 'market', 'yokohama' ),
			'use_featured_image'    => _x( 'Use as featured image', 'market', 'yokohama' ),
			'filter_items_list'     => __( 'Filter Market Overview list', 'yokohama' ),
			'items_list_navigation' => __( 'Market Overview list navigation', 'yokohama' ),
			'items_list'            => __( 'Market Overview list', 'yokohama' ),
			'new_item'              => __( 'New Market Overview', 'yokohama' ),
			'add_new'               => __( 'Add New', 'yokohama' ),
			'add_new_item'          => __( 'Add New Market Overview', 'yokohama' ),
			'edit_item'             => __( 'Edit Market Overview', 'yokohama' ),
			'view_item'             => __( 'View Market Overview', 'yokohama' ),
			'view_items'            => __( 'View Market Overview', 'yokohama' ),
			'search_items'          => __( 'Search Market Overview', 'yokohama' ),
			'not_found'             => __( 'No Market Overview found', 'yokohama' ),
			'not_found_in_trash'    => __( 'No Market Overview found in trash', 'yokohama' ),
			'parent_item_colon'     => __( 'Parent Market Overview:', 'yokohama' ),
			'menu_name'             => __( 'Market Overview', 'yokohama' ),
		),
		'public'                => true,
		'hierarchical'          => false,
		'publicly_queryable' 	=> false,
		'show_ui'               => true,
		'show_in_nav_menus'     => true,
		'supports'              => array( 'title' ),
		'has_archive'           => true,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-admin-site',
		'show_in_rest'          => true,
		'rest_base'             => 'market',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'market_overview_init' );

/**
 * Sets the post updated messages for the `market_overview` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `market_overview` post type.
 */
function market_overview_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['market'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Market Overview updated.', 'yokohama' ) ),
		2  => __( 'Custom field updated.', 'yokohama' ),
		3  => __( 'Custom field deleted.', 'yokohama' ),
		4  => __( 'Market Overview updated.', 'yokohama' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Market Overview restored to revision from %s', 'yokohama' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Market Overview published.', 'yokohama' ) ),
		7  => __( 'Market Overview saved.', 'yokohama' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Market Overview submitted. <a target="_blank" href="%s">Preview Market Overview</a>', 'yokohama' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Market Overview scheduled for: <strong>%1$s</strong>.', 'yokohama' ),
		date_i18n( __( 'M j, Y @ G:i', 'yokohama' ), strtotime( $post->post_date ) ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Market Overview draft updated. <a target="_blank" href="%s">Preview Market Overview</a>', 'yokohama' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'market_overview_updated_messages' );

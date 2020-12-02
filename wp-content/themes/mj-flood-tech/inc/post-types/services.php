<?php

/**
 * Registers the `services` post type.
 */
function services_init() {
	register_post_type( 'services', array(
		'labels'                => array(
			'name'                  => __( 'Services', 'mj-flood-tech' ),
			'singular_name'         => __( 'Services', 'mj-flood-tech' ),
			'all_items'             => __( 'All Services', 'mj-flood-tech' ),
			'archives'              => __( 'Services Archives', 'mj-flood-tech' ),
			'attributes'            => __( 'Services Attributes', 'mj-flood-tech' ),
			'insert_into_item'      => __( 'Insert into Services', 'mj-flood-tech' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Services', 'mj-flood-tech' ),
			'featured_image'        => _x( 'Featured Image', 'services', 'mj-flood-tech' ),
			'set_featured_image'    => _x( 'Set featured image', 'services', 'mj-flood-tech' ),
			'remove_featured_image' => _x( 'Remove featured image', 'services', 'mj-flood-tech' ),
			'use_featured_image'    => _x( 'Use as featured image', 'services', 'mj-flood-tech' ),
			'filter_items_list'     => __( 'Filter Services list', 'mj-flood-tech' ),
			'items_list_navigation' => __( 'Services list navigation', 'mj-flood-tech' ),
			'items_list'            => __( 'Services list', 'mj-flood-tech' ),
			'new_item'              => __( 'New Services', 'mj-flood-tech' ),
			'add_new'               => __( 'Add New', 'mj-flood-tech' ),
			'add_new_item'          => __( 'Add New Services', 'mj-flood-tech' ),
			'edit_item'             => __( 'Edit Services', 'mj-flood-tech' ),
			'view_item'             => __( 'View Services', 'mj-flood-tech' ),
			'view_items'            => __( 'View Services', 'mj-flood-tech' ),
			'search_items'          => __( 'Search Services', 'mj-flood-tech' ),
			'not_found'             => __( 'No Services found', 'mj-flood-tech' ),
			'not_found_in_trash'    => __( 'No Services found in trash', 'mj-flood-tech' ),
			'parent_item_colon'     => __( 'Parent Services:', 'mj-flood-tech' ),
			'menu_name'             => __( 'Services', 'mj-flood-tech' ),
		),
		'public'                => true,
		'hierarchical'          => false,
		'show_ui'               => true,
		'show_in_nav_menus'     => true,
		'supports'              => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
		'has_archive'           => true,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-media-spreadsheet',
		'show_in_rest'          => true,
		'rest_base'             => 'services',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'services_init' );

/**
 * Sets the post updated messages for the `services` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `services` post type.
 */
function services_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['services'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Services updated. <a target="_blank" href="%s">View Services</a>', 'mj-flood-tech' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'mj-flood-tech' ),
		3  => __( 'Custom field deleted.', 'mj-flood-tech' ),
		4  => __( 'Services updated.', 'mj-flood-tech' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Services restored to revision from %s', 'mj-flood-tech' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Services published. <a href="%s">View Services</a>', 'mj-flood-tech' ), esc_url( $permalink ) ),
		7  => __( 'Services saved.', 'mj-flood-tech' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Services submitted. <a target="_blank" href="%s">Preview Services</a>', 'mj-flood-tech' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Services scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Services</a>', 'mj-flood-tech' ),
		date_i18n( __( 'M j, Y @ G:i', 'mj-flood-tech' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Services draft updated. <a target="_blank" href="%s">Preview Services</a>', 'mj-flood-tech' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'services_updated_messages' );

<?php

/**
 * Registers the `our_partners` post type.
 */
function our_partners_init() {
	register_post_type( 'our-partners', array(
		'labels'                => array(
			'name'                  => __( 'Our Partners', 'mj-flood-tech' ),
			'singular_name'         => __( 'Our Partners', 'mj-flood-tech' ),
			'all_items'             => __( 'All Our Partners', 'mj-flood-tech' ),
			'archives'              => __( 'Our Partners Archives', 'mj-flood-tech' ),
			'attributes'            => __( 'Our Partners Attributes', 'mj-flood-tech' ),
			'insert_into_item'      => __( 'Insert into Our Partners', 'mj-flood-tech' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Our Partners', 'mj-flood-tech' ),
			'featured_image'        => _x( 'Featured Image', 'our-partners', 'mj-flood-tech' ),
			'set_featured_image'    => _x( 'Set featured image', 'our-partners', 'mj-flood-tech' ),
			'remove_featured_image' => _x( 'Remove featured image', 'our-partners', 'mj-flood-tech' ),
			'use_featured_image'    => _x( 'Use as featured image', 'our-partners', 'mj-flood-tech' ),
			'filter_items_list'     => __( 'Filter Our Partners list', 'mj-flood-tech' ),
			'items_list_navigation' => __( 'Our Partners list navigation', 'mj-flood-tech' ),
			'items_list'            => __( 'Our Partners list', 'mj-flood-tech' ),
			'new_item'              => __( 'New Our Partners', 'mj-flood-tech' ),
			'add_new'               => __( 'Add New', 'mj-flood-tech' ),
			'add_new_item'          => __( 'Add New Our Partners', 'mj-flood-tech' ),
			'edit_item'             => __( 'Edit Our Partners', 'mj-flood-tech' ),
			'view_item'             => __( 'View Our Partners', 'mj-flood-tech' ),
			'view_items'            => __( 'View Our Partners', 'mj-flood-tech' ),
			'search_items'          => __( 'Search Our Partners', 'mj-flood-tech' ),
			'not_found'             => __( 'No Our Partners found', 'mj-flood-tech' ),
			'not_found_in_trash'    => __( 'No Our Partners found in trash', 'mj-flood-tech' ),
			'parent_item_colon'     => __( 'Parent Our Partners:', 'mj-flood-tech' ),
			'menu_name'             => __( 'Our Partners', 'mj-flood-tech' ),
		),
		'public'                => true,
		'publicly_queryable' 	=> false,
		'hierarchical'          => false,
		'show_ui'               => true,
		'show_in_nav_menus'     => true,
		//'supports'              => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
		'supports'              => array( 'title', 'thumbnail' ),
		'has_archive'           => true,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-businessman',
		'show_in_rest'          => true,
		'rest_base'             => 'our-partners',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'our_partners_init' );

/**
 * Sets the post updated messages for the `our_partners` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `our_partners` post type.
 */
function our_partners_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['our-partners'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Our Partners updated. <a target="_blank" href="%s">View Our Partners</a>', 'mj-flood-tech' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'mj-flood-tech' ),
		3  => __( 'Custom field deleted.', 'mj-flood-tech' ),
		4  => __( 'Our Partners updated.', 'mj-flood-tech' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Our Partners restored to revision from %s', 'mj-flood-tech' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Our Partners published. <a href="%s">View Our Partners</a>', 'mj-flood-tech' ), esc_url( $permalink ) ),
		7  => __( 'Our Partners saved.', 'mj-flood-tech' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Our Partners submitted. <a target="_blank" href="%s">Preview Our Partners</a>', 'mj-flood-tech' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Our Partners scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Our Partners</a>', 'mj-flood-tech' ),
		date_i18n( __( 'M j, Y @ G:i', 'mj-flood-tech' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Our Partners draft updated. <a target="_blank" href="%s">Preview Our Partners</a>', 'mj-flood-tech' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'our_partners_updated_messages' );

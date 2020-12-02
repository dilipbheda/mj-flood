<?php

/**
 * Registers the `case_study` post type.
 */
function case_study_init() {
	register_post_type( 'case-study', array(
		'labels'                => array(
			'name'                  => __( 'Case Study', 'mj-flood-tech' ),
			'singular_name'         => __( 'Case Study', 'mj-flood-tech' ),
			'all_items'             => __( 'All Case Study', 'mj-flood-tech' ),
			'archives'              => __( 'Case Study Archives', 'mj-flood-tech' ),
			'attributes'            => __( 'Case Study Attributes', 'mj-flood-tech' ),
			'insert_into_item'      => __( 'Insert into Case Study', 'mj-flood-tech' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Case Study', 'mj-flood-tech' ),
			'featured_image'        => _x( 'Featured Image', 'case-study', 'mj-flood-tech' ),
			'set_featured_image'    => _x( 'Set featured image', 'case-study', 'mj-flood-tech' ),
			'remove_featured_image' => _x( 'Remove featured image', 'case-study', 'mj-flood-tech' ),
			'use_featured_image'    => _x( 'Use as featured image', 'case-study', 'mj-flood-tech' ),
			'filter_items_list'     => __( 'Filter Case Study list', 'mj-flood-tech' ),
			'items_list_navigation' => __( 'Case Study list navigation', 'mj-flood-tech' ),
			'items_list'            => __( 'Case Study list', 'mj-flood-tech' ),
			'new_item'              => __( 'New Case Study', 'mj-flood-tech' ),
			'add_new'               => __( 'Add New', 'mj-flood-tech' ),
			'add_new_item'          => __( 'Add New Case Study', 'mj-flood-tech' ),
			'edit_item'             => __( 'Edit Case Study', 'mj-flood-tech' ),
			'view_item'             => __( 'View Case Study', 'mj-flood-tech' ),
			'view_items'            => __( 'View Case Study', 'mj-flood-tech' ),
			'search_items'          => __( 'Search Case Study', 'mj-flood-tech' ),
			'not_found'             => __( 'No Case Study found', 'mj-flood-tech' ),
			'not_found_in_trash'    => __( 'No Case Study found in trash', 'mj-flood-tech' ),
			'parent_item_colon'     => __( 'Parent Case Study:', 'mj-flood-tech' ),
			'menu_name'             => __( 'Case Study', 'mj-flood-tech' ),
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
		'menu_icon'             => 'dashicons-book',
		'show_in_rest'          => true,
		'rest_base'             => 'case-study',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'case_study_init' );

/**
 * Sets the post updated messages for the `case_study` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `case_study` post type.
 */
function case_study_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['case-study'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Case Study updated. <a target="_blank" href="%s">View Case Study</a>', 'mj-flood-tech' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'mj-flood-tech' ),
		3  => __( 'Custom field deleted.', 'mj-flood-tech' ),
		4  => __( 'Case Study updated.', 'mj-flood-tech' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Case Study restored to revision from %s', 'mj-flood-tech' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Case Study published. <a href="%s">View Case Study</a>', 'mj-flood-tech' ), esc_url( $permalink ) ),
		7  => __( 'Case Study saved.', 'mj-flood-tech' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Case Study submitted. <a target="_blank" href="%s">Preview Case Study</a>', 'mj-flood-tech' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Case Study scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Case Study</a>', 'mj-flood-tech' ),
		date_i18n( __( 'M j, Y @ G:i', 'mj-flood-tech' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Case Study draft updated. <a target="_blank" href="%s">Preview Case Study</a>', 'mj-flood-tech' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'case_study_updated_messages' );

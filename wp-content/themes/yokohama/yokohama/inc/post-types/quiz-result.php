<?php

/**
 * Registers the `result` post type.
 */
function quiz_result_init() {
	register_post_type( 'result', array(
		'labels'                => array(
			'name'                  => __( 'Result', 'yokohama' ),
			'singular_name'         => __( 'Result', 'yokohama' ),
			'all_items'             => __( 'All Result', 'yokohama' ),
			'archives'              => __( 'Result Archives', 'yokohama' ),
			'attributes'            => __( 'Result Attributes', 'yokohama' ),
			'insert_into_item'      => __( 'Insert into Result', 'yokohama' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Result', 'yokohama' ),
			'featured_image'        => _x( 'Featured Image', 'result', 'yokohama' ),
			'set_featured_image'    => _x( 'Set featured image', 'result', 'yokohama' ),
			'remove_featured_image' => _x( 'Remove featured image', 'result', 'yokohama' ),
			'use_featured_image'    => _x( 'Use as featured image', 'result', 'yokohama' ),
			'filter_items_list'     => __( 'Filter Result list', 'yokohama' ),
			'items_list_navigation' => __( 'Result list navigation', 'yokohama' ),
			'items_list'            => __( 'Result list', 'yokohama' ),
			'new_item'              => __( 'New Result', 'yokohama' ),
			'add_new'               => __( 'Add New', 'yokohama' ),
			'add_new_item'          => __( 'Add New Result', 'yokohama' ),
			'edit_item'             => __( 'Edit Result', 'yokohama' ),
			'view_item'             => __( 'View Result', 'yokohama' ),
			'view_items'            => __( 'View Result', 'yokohama' ),
			'search_items'          => __( 'Search Result', 'yokohama' ),
			'not_found'             => __( 'No Result found', 'yokohama' ),
			'not_found_in_trash'    => __( 'No Result found in trash', 'yokohama' ),
			'parent_item_colon'     => __( 'Parent Result:', 'yokohama' ),
			'menu_name'             => __( 'Result', 'yokohama' ),
		),
		'public'                => true,
		'hierarchical'          => false,
		'show_ui'               => true,
		//'show_in_nav_menus'     => false,
		//'show_in_menu'     		=> false,
		'capabilities' => array(
			'create_posts' => 'do_not_allow',
		),
		'map_meta_cap' => true,
		'publicly_queryable' 	=> false,
		'supports'              => array( 'title' ),
		'has_archive'           => true,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => 55,
		'menu_icon'             => 'dashicons-pressthis',
		'show_in_rest'          => true,
		'rest_base'             => 'result',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'quiz_result_init' );

/**
 * Sets the post updated messages for the `quiz_result` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `quiz_result` post type.
 */
function quiz_result_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['result'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Result updated. <a target="_blank" href="%s">View Result</a>', 'yokohama' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'yokohama' ),
		3  => __( 'Custom field deleted.', 'yokohama' ),
		4  => __( 'Result updated.', 'yokohama' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Result restored to revision from %s', 'yokohama' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Result published. <a href="%s">View Result</a>', 'yokohama' ), esc_url( $permalink ) ),
		7  => __( 'Result saved.', 'yokohama' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Result submitted. <a target="_blank" href="%s">Preview Result</a>', 'yokohama' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Result scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Result</a>', 'yokohama' ),
		date_i18n( __( 'M j, Y @ G:i', 'yokohama' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Result draft updated. <a target="_blank" href="%s">Preview Result</a>', 'yokohama' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'quiz_result_updated_messages' );

/**
 * Register custom menu page.
 */
function quiz_result_register_menu() {
	global $submenu;
	add_submenu_page( 'yokohama-quiz', __( 'Result', 'hokohama' ), __( 'Result', 'hokohama' ), 'edit_posts', 'result', '__return_null' );
	if ( isset( $submenu['yokohama-quiz'] ) ) {
		$submenu['yokohama-quiz'][0][2] = add_query_arg( 'post_type', 'result', admin_url( 'edit.php' ) );
	}
}
//add_action( 'admin_menu', 'quiz_result_register_menu' );

/**
 * Add new post list columns.
 *
 * @param array $columns Table columns.
 * @return array
 */
function yokohama_columns_post_list( $columns ) {
	$date = $columns['date'];
	unset( $columns['date'] );
	$columns['title'] = __( 'Employee ID', 'yokohama' );
	$columns['region'] = __( 'Region', 'yokohama' );
	$columns['store'] = __( 'Store', 'yokohama' );
	$columns['score'] = __( 'Score', 'yokohama' );
	$columns['date'] = $date;
	return $columns;
}

/**
 * Add new post list columns.
 *
 * @param string $column_name Columns name.
 * @param int    $post_id Post ID.
 */
function yokohama_content_columns_post_list( $column_name, $post_id ) {
	if ( 'region' === $column_name || 'store' === $column_name ) {
		$author_id = get_post_field( 'post_author', $post_id );
		$user_info = get_user_by( 'ID', $author_id );
		if ( $user_info ) {
			if ( 'region' === $column_name ) {
				$region = get_user_meta( $user_info->ID, 'region', true );
				echo ! empty( $region ) ? $region : '';
			} elseif( 'store' === $column_name ) {
				$store = get_user_meta( $user_info->ID, 'store', true );
				echo ! empty( $store ) ? $store : '';
			}
		}
	} elseif ( 'score' === $column_name ) {
		$result_data = get_post_meta( $post_id, '_quiz_result_data', true );
		$result_data = ! empty( $result_data ) ? $result_data : [];
		$questions = [];
		foreach ( $result_data as $question => $answer ) {
			$is_valid = yokohama_find_right_answers( $question, $answer );
			$questions[] = $is_valid;
		}
		$total_valid = count( array_filter( $questions ) );
		echo wp_sprintf( '<span>%1$d/%2$d</span> %3$s', $total_valid, count( $questions ), __( 'Completed', 'yokohama' ) );
	}
}
add_filter( 'manage_result_posts_columns', 'yokohama_columns_post_list', 10 );
add_action( 'manage_result_posts_custom_column', 'yokohama_content_columns_post_list', 10, 2 );

/**
 * Register metabox.
 */
function yokohama_register_result_metabox() {
	add_meta_box( 'quiz-result', __( 'Quiz result', 'yokohama' ), 'yokohama_result_display_callback', 'result' );
}
add_action( 'add_meta_boxes_result', 'yokohama_register_result_metabox' );

function yokohama_result_display_callback( $post ) {
	$result_data = get_post_meta( $post->ID, '_quiz_result_data', true );
	$result_data = ! empty( $result_data ) ? $result_data : [];
	$questions = [];
	foreach ( $result_data as $question => $answer ) {
		$is_valid = yokohama_find_right_answers( $question, $answer );
		$questions[] = $is_valid;
	}
	$total_valid = count( array_filter( $questions ) );
	echo wp_sprintf( '<div style="text-align: %3$s;margin-top: 15px;"><strong><span>%1$d/%2$d</span> %3$s</strong></div>', $total_valid, count( $questions ), __( 'Completed', 'yokohama' ) );
	$all_question = yokohama_get_quiz_question();
	?>
	<table class="wp-list-table widefat fixed striped posts" style="margin-top: 15px;">
		<thead>
			<tr>
				<th>#</th>
				<th><?php _e( 'Question', 'yokohama' ); ?></th>
				<th><?php _e( 'Answers', 'yokohama' ); ?></th>
				<th><?php _e( 'Selected Answer', 'yokohama' ); ?></th>
			</tr>
		</thead>
		<tbody>
			<?php $count = 1;
				foreach ( $result_data as $question => $answer ) :
				$question_info = isset( $all_question[ $question ] ) ? $all_question[ $question ] : [];
				$all_answers = array_column( $question_info['answers'], 'answer' );
				$selected = array_search( $answer, array_column( $question_info['answers'], 'answer_id' ) );
				$question_info['right_answer'] = (int) $question_info['right_answer'];
			?>
				<tr>
					<td><?php echo $count; ?></td>
					<td><?php echo $question_info['question']; ?></td>
					<td>
						<?php if ( ! empty( $all_answers ) ) : ?>
							<ol style="list-style-type: upper-alpha;">
								<?php foreach ( $all_answers as $answer_value ) : ?>
									<li><?php echo $answer_value; ?></li>
								<?php endforeach; ?>
							</ol>
						<?php endif; ?>
					</td>
					<td class="selected-answer <?php echo $selected === $question_info['right_answer'] ? 'right-answer' : 'wrong-answer' ?>"><strong><?php echo isset( $question_info['answers'][ $selected ]['answer'] ) ? $question_info['answers'][ $selected ]['answer'] : '-'; ?></strong></td>
				</tr>
			<?php $count++; endforeach; ?>
		</tbody>
	</table>
	<?php
}

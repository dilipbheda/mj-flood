<?php
/**
 * Template Name: Start Assessment
 *
 * @package WordPress
 */

if ( ! is_user_logged_in() ) {
	wp_redirect( yokohama_get_page_by_template( 'page-templates/assessment.php' ) );
	exit;
}

$count_total = yokohama_count_total_attempt_quiz();
if ( ! is_user_logged_in() || $count_total >= 3 ) {
	wp_redirect( yokohama_get_page_by_template( 'page-templates/training.php' ) );
	exit;
}

$quiz = yokohama_get_quiz_question();
$quiz = shuffle_assoc( $quiz );
$quiz = array_slice( $quiz, 0, 10, true );
$total_question = count( $quiz );
get_header();
?>

<!-- main content start -->
<div id="overlay">
	<div class="cv-spinner">
		<span class="spinner"></span>
	</div>
</div>
<div class="main-content assessment-page" style="background-image: url('<?php echo TEMPLATEURL; ?>/assets/images/bg-image1.jpg');">
	<div class="main-content-wrap">
		<div class="assessment-section">
			<div class="container">
				<div class="section-title">
					<h2 class="h1 text-white"><?php get_the_title( $post->post_parent ); ?></h2>
				</div>
				<div class="assessment-question-box">
					<?php if ( $total_question ) : ?>
						<div class="result-bar">
							<div class="result-bar-wrap">
								<ul class="d-flex flex-wrap justify-content-center">
									<?php foreach ( range( 1, $total_question ) as $question_index ) : ?>
										<li data-result_bar_index="<?php echo $question_index; ?>">
											<div class="result-icon"></div>
										</li>
									<?php endforeach; ?>
								</ul>
							</div>
						</div>
					<?php endif; ?>
					<?php if ( ! empty( $quiz ) ) : $count = 1; ?>
						<?php foreach ( $quiz as $key => $q ) : ?>
							<div data-question_index="<?php echo $count; ?>" class="question-group<?php echo $count == $total_question ? ' is-last' : ''; ?>"<?php echo $count >= 2 ? ' hidden' : ''; ?>>
								<div class="title text-center">
									<h1 class="h3"><?php echo $q['question']; ?></h1>
								</div>
								<?php if ( isset( $q['answers'] ) && ! empty( $q['answers'] ) ) : ?>
									<div class="questions-wrap">
										<ul class="d-flex flex-wrap">
											<?php foreach( $q['answers'] as $answer_id => $answer ) : ?>
												<li>
													<div class="question-box">
														<input type="radio" name="quiz[<?php echo $key; ?>]" value="<?php echo $answer['answer_id']; ?>">
														<label><?php echo $answer['answer']; ?></label>
													</div>
												</li>
											<?php endforeach; ?>
										</ul>
									</div>
								<?php endif; ?>
							<?php if ( isset( $q['tip'] ) && ! empty( $q['tip'] ) ) : ?>
								<div class="question-tips">
									<?php echo wp_sprintf( __( '<span>Tip:</span> %1$s', 'yokohama' ), $q['tip'] ); ?>
								</div>
							<?php endif; ?>
							</div>
						<?php $count++; endforeach; ?>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

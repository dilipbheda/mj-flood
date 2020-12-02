<?php
/**
 * Template Name: Handling - Question
 *
 * @package WordPress
 */

get_header(); ?>
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
					<h2 class="h1 text-white"><?php _e( 'Superior Snow Traction', 'yokohama' ); ?></h2>
				</div>
				<div class="question-timer">
					<div class="question-timer-inner">
						<div class="question-timer-wrap d-flex align-items-center">
							<div class="question-time">
								<div id="timer">0m:0s</div> <span><?php _e( 'LEFT', 'yokohama' ); ?></span>
								<button id="pauseButton" hidden>Stop</button>
							</div>
						</div>
					</div>
				</div>
				<div class="assessment-question-box style1">
					<?php
						$pre_question = yokohama_get_quiz_question( true, get_the_ID() );
						$pre_question = shuffle_assoc( $pre_question );
						$pre_question = array_slice( $pre_question, 0, 1, true );
					?>
					<?php if ( ! empty( $pre_question ) ) : ?>
						<?php foreach( $pre_question as $key => $question ) : ?>
							<div class="pre-question">
								<div class="title text-center">
									<h1 class="h3"><?php echo $question['question']; ?></h1>
								</div>
								<?php if ( isset( $question['answers'] ) && ! empty( $question['answers'] ) ) : ?>
									<div class="questions-wrap">
										<ul class="d-flex flex-wrap">
											<?php foreach( $question['answers'] as $answer_id => $answer ) : ?>
												<li>
													<div class="question-box exclude-quiz" data-field_name="handling_question" data-post_id="<?php echo get_the_ID() ?>" data-id="<?php echo $key; ?>">
														<input type="radio" name="pre_question" value="<?php echo $answer['answer_id']; ?>">
														<label><?php echo $answer['answer']; ?></label>
													</div>
												</li>
											<?php endforeach; ?>
										</ul>
									</div>
								<?php endif; ?>
							</div>
						<?php endforeach; ?>
					<?php endif; ?>
					<div class="cta-wrap cta-inline">
						<a href="javascript:;" class="cta-btn pre-question-next"><span><?php _e( 'Continue', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt="right arrow"></span></a>
						<a href="<?php echo add_query_arg( 'retry', true, get_the_permalink() ); ?>" class="cta-btn cta-bordered"><span><?php _e( 'Retry', 'yokohama' ); ?><img src="<?php echo TEMPLATEURL; ?>/assets/images/right-arrow-white.svg" class="cta-arrow svg" alt="right arrow"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- main content end -->
<?php
get_footer();

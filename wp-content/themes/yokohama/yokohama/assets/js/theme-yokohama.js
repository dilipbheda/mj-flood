jQuery( document ).ready( function( $ ) {
	// Verify question.
	$( '.question-box:not(.exclude-quiz)' ).on( 'change', 'input[type="radio"]:not(.done)', function() {
		var _ = $( this );
		var optionGroup = _.parents( '.question-group' );
		var questionIndex = optionGroup.data( 'question_index' );
		var data = $( 'input', optionGroup ).serialize();
		if ( optionGroup.hasClass( 'is-last' ) ) {
			data = $( 'input', $( '.assessment-question-box' ) ).serialize();
			data = data + '&save=true';
		}
		_.addClass( 'done' );
		var formData = data + '&action=yokohama_quiz_test&security_nonce=' + YH._nonce;
		// Send ajax DB request.
		$( "#overlay" ).fadeIn( 300 );
		$.post( YH.ajax_url, formData, function( response ) {
			var resultBarClass = response.status == 1 ? 'true' : 'false';
			$( 'li[data-result_bar_index="' + questionIndex + '"]' ).find( '.result-icon' ).addClass( resultBarClass );
			if ( optionGroup.hasClass( 'is-last' ) ) {
				setTimeout( function() {
					window.location = YH.redirect_to;
				}, 1000 );
			} else {
				optionGroup.attr( 'hidden', 'hidden' ).next( '.question-group' ).removeAttr( 'hidden' );
				setTimeout( function() {
					$( "#overlay" ).fadeOut( 300 );
				}, 500 );
			}
		}, 'json' )
		.fail( function() {
			setTimeout( function() {
				$( "#overlay" ).fadeOut( 300 );
			}, 500 );
			console.log( 'Ajax failed' );
		} );
	} );

	// Employee login process.
	var valid = [];
	$( '#login_form' ).on( 'input', 'input[name="employee_id"]', function() {
		valid = [];
		$( this ).removeClass( 'in-valid' ).removeClass( 'error' );
		if ( $( this ).val() != '' ) {
			var userLoginLatter = $( this ).val().replace(/\d+/g,'').length;
			var userLoginNumber = $( this ).val().replace(/[^0-9]/g,'').length;
			if ( userLoginLatter == 3 && userLoginNumber == 2 ) {
				$( this ).next( '.cv-spinner' ).removeAttr( 'hidden' );
				$( ".submit-cta .cta-btn" ).attr( 'disabled', true );
				$.post( YH.ajax_url, {
					action: 'yokohama_login_info',
					userlogin: $( this ).val(),
				}, function( response ) {
					if ( response.region != '' ) {
						jQuery('select[name="region"] option:contains("' + response.region + '")').attr( 'selected', true ).prop( 'selected', true );
						jQuery( 'select[name="region"]' ).selectpicker( 'refresh' );
						jQuery( 'select[name="region"]' ).parent( '.form-control' ).removeClass( 'error' );
					}
					if ( response.store != '' ) {
						$( 'input[name="store"]' ).val( response.store ).removeClass( 'error' );
					}
					$( '.cv-spinner' ).attr( 'hidden', 'hidden' );
					$( ".submit-cta .cta-btn" ).removeAttr( 'disabled' );
				}, 'json' )
				.fail( function() {
					$( '.cv-spinner' ).attr( 'hidden', 'hidden' );
					$( ".submit-cta .cta-btn" ).removeAttr( 'disabled' );
					console.log( 'Login Userlogin Error!' );
				} );
			} else {
				$( this ).addClass( 'error' ).addClass( 'in-valid' );
				valid.push( 'employee_id' );
			}
		}
	} );
	// Submit form.
	$( '#login_form' ).on( 'submit', function() {
		var employeeID = $( 'input[name="employee_id"]', $( this ) );
		var region = $( 'select[name="region"]', $( this ) );
		var store = $( 'input[name="store"]', $( this ) );
		// Custome validation.
		$( '.error:not(.in-valid)' ).removeClass( 'error' );
		jQuery( '#login_form' ).parents( '.popup-form' ).find( '.alert-danger' ).attr( 'hidden', 'hidden' );
		if ( employeeID.val() == '' ) {
			employeeID.addClass( 'error' );
			valid.push( 'employee_id' );
		}
		// Region
		if ( region.val() == null ) {
			region.parent( '.form-control' ).addClass( 'error' );
			valid.push( 'region' );
		}
		// Store
		if ( store.val() == '' ) {
			store.addClass( 'error' );
			valid.push( 'store' );
		}
		if ( valid.length == 0 ) {
			$( ".submit-cta .cv-spinner" ).removeAttr( 'hidden' );
			$( ".submit-cta .cta-btn" ).attr( 'disabled', true );
			$.post( YH.ajax_url, $( '#login_form' ).serialize(), function( response ) {
				if ( response.status == 1 ) {
					window.location = response.redirect_to;
				} else {
					jQuery( '#login_form' ).parents( '.popup-form' ).find( '.alert-danger' ).html( response.message ).removeAttr( 'hidden' );
				}
				$( ".submit-cta .cv-spinner" ).attr( 'hidden', 'hidden' );
				$( ".submit-cta .cta-btn" ).removeAttr( 'disabled' );
			}, 'json' )
			.fail( function() {
				$( ".submit-cta .cv-spinner" ).attr( 'hidden', 'hidden' );
				$( ".submit-cta .cta-btn" ).removeAttr( 'disabled' );
				console.log( 'Login Ajax Error!' );
			} )
		}
		return false;
	} );

	// Prequestion validation.
	$( document ).on( 'change', 'input[name="pre_question"]', function() {
		var _this = $( this );
		var selectedValue = _this.val();
		_this
		.parents( 'ul' )
		.find( 'input:radio' )
		.attr( 'disabled', true );

		$( '#pauseButton' ).click();
		$( "#overlay" ).fadeIn( 300 );
		// Send ajax request.
		var data = {
			action: 'yokohama_pre_question',
			post_id: _this.parent( 'div' ).data(  'post_id' ),
			question_id: _this.parent( 'div' ).data(  'id' ),
			field_name: _this.parent( 'div' ).data(  'field_name' ),
			value: selectedValue,
			time: $( '#timer' ).text(), 
		};
		$.post( YH.ajax_url, data, function( response ) {
			if ( response.status == 1 ) {
				_this.parent( 'div' ).find( 'label' ).addClass( 'true' );
			} else {
				_this.parent( 'div' ).find( 'label' ).addClass( 'false' );
			}
			$( '.pre-question-next' ).attr( 'href', response.redirect_to );
			setTimeout( function() {
				$( "#overlay" ).fadeOut( 300 );
			}, 500 );
		}, 'json' )
		.fail( function() {
			setTimeout( function() {
				$( "#overlay" ).fadeOut( 300 );
			}, 500 );
			console.log( 'Login Ajax Error!' );
		} );
	} );

	if ( $( '#timer' ).length ) {
		$( "#timer" ).countdowntimer( {
			minutes : 3,
			seconds : 15,
			size : "lg",
			regexpMatchFormat: "([0-9]{1,2}):([0-9]{1,2})",
			regexpReplaceWith: "$1m:$2s",
			pauseButton : "pauseButton",
			timeUp: function() {
				jQuery( 'input[type="radio"]' ).attr( 'disabled', 'disabled' );
			},
		} );
	}
} );
jQuery( document ).ready( function( $ ) {
	setTimeout( function() {
		$( ".ui-sortable" ).on( "sortstop", function( event, ui ) {
			if ( ui.item.parents( 'div[data-name="answers"]' ).length ) {
				ui.item.parents( 'div[data-name="answers"]' )
				.next( 'div[data-name="right_answer"]' )
				.find('option[value=""]')
				.attr( 'selected', true )
				.prop( 'selected', true );
			}
		} );
	}, 500 );
} );
<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package MJ_Flood_Technology
 */

?>

	<!-- footer Start-->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-12">
                        <div class="naviAdd">
                            <?php
                                if ( get_field( 'footer_about_us', 'option' ) ) :
                                    the_field( 'footer_about_us', 'option' );
                                endif;
                             ?>

                            <ul class="social-media">
                                <?php if ( get_field( 'twitter', 'option' ) ) : ?>
                                    <li><a href="<?php the_field( 'twitter', 'option' ); ?>" title="twitter"><i class="fab fa-twitter"></i></a></li>
                                <?php endif; ?>
                                
                                <?php if ( get_field( 'facebook', 'option' ) ) : ?>
                                    <li><a href="<?php the_field( 'facebook', 'option' ); ?>" title="facebook"><i class="fab fa-facebook-f"></i></a></li>
                                <?php endif; ?>

                                <?php if ( get_field( 'instagram', 'option' ) ) : ?>
                                    <li><a href="<?php the_field( 'instagram', 'option' ); ?>" title="instagram"><i class="fab fa-instagram"></i></a></li>
                                <?php endif; ?>

                                <?php if ( get_field( 'linkedin', 'option' ) ) : ?>
                                    <li><a href="<?php the_field( 'linkedin', 'option' ); ?>" title="linkedin"><i class="fab fa-linkedin"></i></a></li>
                                <?php endif; ?>

                                <?php if ( get_field( 'youtube', 'option' ) ) : ?>
                                    <li><a href="<?php the_field( 'youtube', 'option' ); ?>" title="youtube"><i class="fab fa-youtube"></i></a></li>
                                <?php endif; ?>

                            </ul>
                        </div>

                        <?php if ( has_nav_menu( 'menu-2' ) ) : ?>
                        <div class="naviAdd">
                            <h5><?php _e( 'Solutions', 'mj-flood-tech' ); ?></h5>
                            <?php 
                                wp_nav_menu(
                                    array(
                                        'theme_location' => 'menu-2',
                                        'container' => 'ul',
                                    )
                                );
                            ?>
                        </div>
                        <?php endif; ?>

                        <?php if ( has_nav_menu( 'menu-3' ) ) : ?>
                        <div class="naviAdd">
                            <h5><?php _e( 'Partners', 'mj-flood-tech' ); ?></h5>
                            <?php 
                                wp_nav_menu( 
                                    array(
                                        'theme_location' => 'menu-3',
                                        'container' => 'ul',
                                    )
                                 );
                            ?>
                        </div>
                        <?php endif; ?>

                        <?php if ( has_nav_menu( 'menu-4' ) ) : ?>
                        <div class="naviAdd">
                            <h5><?php _e( 'Company', 'mj-flood-tech' ); ?></h5>
                            <?php 
                                wp_nav_menu( 
                                    array(
                                        'theme_location' => 'menu-4',
                                        'container' => 'ul',
                                    )
                                 );
                            ?>
                        </div>
                        <?php endif; ?>

                        <?php if ( has_nav_menu( 'menu-5' ) ) : ?>
                        <div class="naviAdd">
                            <h5><?php _e( 'Legal', 'mj-flood-tech' ); ?></h5>
                            <?php 
                                wp_nav_menu( 
                                    array(
                                        'theme_location' => 'menu-5',
                                        'container' => 'ul',
                                    )
                                 );
                            ?>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyRight">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-md-left text-center">
                        <p>&copy;<?php echo wp_sprintf( __( 'MJ Flood Technology %1$s, registered in Ireland No 234128D', 'mj-flood-tech' ), date_i18n( 'Y' ) ); ?></p>
                    </div>
                    <div class="col-md-6 text-md-right text-center">
                        <p></p>
                        <p><?php _e( 'Designed & Developed by <u>Matrix Internet</u>', 'mj-flood-tech' ); ?></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end-->
<?php wp_footer(); ?>

</body>
</html>

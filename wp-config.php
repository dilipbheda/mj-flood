<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mj_flood_tech' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '/){Neu~K/A)7Gh!pv_Tnl= )!D*~C>H]l!Wc?=!)tEQy;cA79nuyb9nWeAzSYaQ8' );
define( 'SECURE_AUTH_KEY',  'V3A+Vw4&}BsrPx+2TX!4Tl!)(RMg&iqo:J y9;z$xi@ s4;;Eh]wEE}pE&tO?`P{' );
define( 'LOGGED_IN_KEY',    '?Pqxod)vT5o()3S]<UE7Z)cn|#9586.a[[+yZIe(:Dh<bS?:)NHZN|vE(-FKE,Tu' );
define( 'NONCE_KEY',        'ERZt0-<1yu{R#U?chZ4WR?m(Mc!$SFz+<l!+$HWiL~}k)}<e5H@.?~iwo)p6}>j/' );
define( 'AUTH_SALT',        'S#&|{Gcm(G/.w):bA?!Ur8#d`7tW`/)w2=q%~yy?!59,}0cO<^ M!&yl~>hJjhv ' );
define( 'SECURE_AUTH_SALT', '4p|qJQX$ohWE2D Z-7roekJuXcm3y=4cHvuZ`LBL.;{$Qi@!Ac &tfv,sX4_PL-?' );
define( 'LOGGED_IN_SALT',   'P9|!:00Ds`+t,fPX&_4<~}S4EcO,pGm6oo9-NC6RKDP&iZ5?20(|r@a?cJ`(Sn]!' );
define( 'NONCE_SALT',       'w_!_82=1mra{?:vY,pFAjOmPqG`J_QAeE-?.,;%q,+H$Yk.CEn<>xp!$+t/JdO+M' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'mj_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

define( 'ALLOW_UNFILTERED_UPLOADS', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

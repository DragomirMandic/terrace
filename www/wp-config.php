<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
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
define( 'DB_NAME', 'terrace' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'RA~D-m(&8W>[t8W?*qMw~tw>L|ubxPYdm:3P|EpwTY*$&Ni1qi*~nG[Rv{.XC&{X' );
define( 'SECURE_AUTH_KEY',  '[;0?6U.6=ywueT_:!rcAsrnr}) hyh=WNcuHF9CMV80#V(O2D2EVW#i@] 4?2Sz~' );
define( 'LOGGED_IN_KEY',    ' _a|ofA@(X^i~=:QSG?h?b2I^uqW9{}/%0v%8g&!LL+XOdwl}:MX8)v}D$xsa@um' );
define( 'NONCE_KEY',        '8o}+KN$))WtDQ8^R{W~08PFBZ|O>Ph:U*(]#/5^,yBn[u4T25cT%Ml?9_JWSbY0+' );
define( 'AUTH_SALT',        'u|VrQNg%,&PVrg=kxx1LNK@L!}8o^ey*h*:TP!`*=GN&c`yyM $(m|uUyIwwVUHv' );
define( 'SECURE_AUTH_SALT', 'ocl^N`^cGF0G&W6jdjOOXi)dcGawc3jU,8_YKoa4gADU{ rn.}Kd:7x{?4Mm5&R^' );
define( 'LOGGED_IN_SALT',   '-X{[HE_Gs(8.Z.n#TutUES<X4P]ylVx nk%U_yOP;5F>ZCn-akHUIMv.p1ng|)t<' );
define( 'NONCE_SALT',       'Uk]+S`~z-+mMPII2B00ZF6C_.}J*DpJgFtpVd7`U}Q{;Wv$a|&C6*|qk_R]/hqUN' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

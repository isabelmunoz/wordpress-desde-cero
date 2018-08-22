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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_desde_cero');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'z*Ope]7_+J7CM[AsDv]aD&>xO}{_A5iO^3NEBBor~Gslv^Wx2W%k>&`Z/1v2&^97');
define('SECURE_AUTH_KEY',  'yk%&u4V@(M_{WFAX;WkVk@f%BG?eX!].@ r4]LF.*e3/X(=5kq{o_35:^e68RqLe');
define('LOGGED_IN_KEY',    '$_ghw+z&y],dOe7JKM|o>uKc6qZ^#NA)7!=7|lXKp{j)p|!Y&=WAthqBENR?Fr|z');
define('NONCE_KEY',        'T?xeTmUl|)s1z:LTu&SOdi6bZuR;}`,%@tb4c UbQaF!=V@2L=:T[%9R@S:8>:%i');
define('AUTH_SALT',        'ey0#wQlQit78Jt6*0NE4]3cB);)!z~p+rkM8^zS$O_M)1!G50Dl43+BQ7L]({$K}');
define('SECURE_AUTH_SALT', 'e_`@4JbeAEvdmZjBSSV!x/EFf _Y7QxBQH>xGBm9YE=8fAeSJ~%IXuUFET) PN~L');
define('LOGGED_IN_SALT',   ' gs2g:LvhJJ%L-TK~xF,-@NeEz^H~<wd>z8h0y;?@DTKR7W&~nUiP<g$*G~q?qqF');
define('NONCE_SALT',       'FO+4Os)9jev%]VRHLhv,Ho<:hPRNLJP]9vtv5(Rm-@t`:EUg#mB6I)9tJb|4Nf%!');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'dl_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

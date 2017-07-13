<?php


// ** MySQL settings ** //
/** The name of the database for WordPress */
define('DB_NAME', 'blog');

/** MySQL database username */
define('DB_USER', 'ogkubl');

/** MySQL database password */
define('DB_PASSWORD', '~/w1ldW1ldBl0g!/');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('AUTH_KEY',         'qf4UR|)sp>K-|G?6I NO^{t(-,1v:kU;pjlZeG0_j)Wmf:E&$!@LN}VJR(G/HK)x');
define('SECURE_AUTH_KEY',  '-8{P=ViD9=NDEuhh:<89Ve5/(|BS*Fm-M&DgkDG9W_IU-cK?$D;,uz/6yS&k!TXw');
define('LOGGED_IN_KEY',    '03V-U,djxV_qqZ=|*1&Vdrh|{$}J-G*7.OO1zLg-H<+tW?k3Vr/F_Pa_&,2{!E+N');
define('NONCE_KEY',        '$+i k{MD GvK$}>%mh(Kl+7U-*QO(e6)cTde- P0je+G_!a_]-)M9yw<T*h9--)w');
define('AUTH_SALT',        'L[[dDK*VqW}O(yN)cJcFjz/+Whp,V4N)b?0l:L$(O|<uv5Y)x~~byzfz:y*pL~m2');
define('SECURE_AUTH_SALT', ':r3($%FCj+Hg4ZTb>eu:SCDX}D;^t!Tf>fgWUA.X23C#9r5~yRm?$LX4aso(}d(T');
define('LOGGED_IN_SALT',   '-^P&7C#EIchy!M71@W$=R@@;q3ir}s~t7rRA-y+euM/,Q48Bl)F1VeEEl?{a-RG[');
define('NONCE_SALT',       'wQasq^{]{/JCDD[WO]d?ntZvjx{7[$/Hxqrn7qQX3fg%.#Mwyj# xZ>*Zu3;kk~B');


$table_prefix = 'wp_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

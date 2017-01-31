<?php

/* ===================================================================================================
   GENERALES
=================================================================================================== */

define( 'ENV', 			getenv('ENV') );
define( 'BASE_URL',		getenv('BASE_URL') );
define( 'BASE_WEB',		getenv('BASE_WEB') );
define( 'SLASH',		'/' );
define( 'MOD_DATE',		getenv('MOD_DATE') );




/* ===================================================================================================
   DIRECTORIOS
=================================================================================================== */

// General
define( 'DIR_VENDOR', 'vendor' );

// CSS
define( 'DIR_CSS', BASE_URL.'css'.SLASH );

// Images
define( 'DIR_IMAGES', 		'images'.SLASH );
define( 'DIR_IMAGES_ABS', 	BASE_URL.DIR_IMAGES );

// Javascripts
define( 'DIR_JS', 				'js'.SLASH );
define( 'DIR_JS_ABS',			BASE_URL.DIR_JS );
define( 'DIR_JS_VENDOR', 		DIR_JS.DIR_VENDOR.SLASH );
define( 'DIR_JS_VENDOR_ABS', 	BASE_URL.DIR_JS_VENDOR.DIR_VENDOR.SLASH );

// Files
define( 'DIR_FILES', 		'files'.SLASH );
define( 'DIR_FILES_ABS', 	BASE_URL.DIR_FILES );

// Fonts
define( 'DIR_FONTS', 		DIR_FILES.'fonts'.SLASH );

// Vídeos
define( 'DIR_VIDEOS', 		DIR_FILES.'videos'.SLASH );
define( 'DIR_VIDEOS_ABS', 	BASE_URL.DIR_VIDEOS );

// Audios
define( 'DIR_AUDIOS', 		DIR_FILES.'audios'.SLASH );
define( 'DIR_AUDIOS_ABS', 	BASE_URL.DIR_AUDIOS );

// Descargas
define( 'DIR_DOWNLOADS', 		DIR_FILES.'downloads'.SLASH );
define( 'DIR_DOWNLOADS_ABS', 	BASE_URL.DIR_DOWNLOADS );





/* ===================================================================================================
   CSS
=================================================================================================== */

// Librerías externas

// Web
define( 'CSS_STYLE', 'style.min' );





/* ===================================================================================================
   JS
=================================================================================================== */

// Librerías externas
define( 'JS_BASIC', 'basic.min' );

// Web
define( 'JS_PLUGINS', 	'plugins.min' );
define( 'JS_MAIN', 		'main.min' );

<?php


/**
 * Establece el idioma
 *
 * @return [string] Idioma establecido
 */
function getLang() {
	$cookie_lang = isset($_COOKIE["lang"]) ? $_COOKIE["lang"] : '';
	if ($cookie_lang == '') {
	    $lang = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
	    $lang = substr($lang, 0, 2);
	} else {
	    $lang = $cookie_lang;
	}

	$parts_url = explode('/', $_SERVER["REQUEST_URI"]);
	$lang_url  = $parts_url[1];
	if ( ($lang_url!='') && ($lang_url!=$lang) && (in_array($lang_url, explode('|', LANGS))) ) {
		$lang = $lang_url;
	}

	setcookie('lang', $lang, time()+60*60*24*7, '/');
	return $lang;
}



/**
 * Obtiene el valor de la clave seleccionada en el array del idioma elegido
 *
 * @param  [string] $text   Valor deseado (separado por '.')
 * @param  [string] $idioma Array donde buscar (fichero idioma)
 */
function lang($text, $idioma='') {
	$lang = ($idioma != '') ? $idioma : getLang();
	$data = require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/lang/' . $lang . '.php';

    return getArrayValueFromString($text, $data);
}



/**
 * Extrae el valor de un array multidimensional a partir de un string separado por '.'
 *
 * @param  [string] $string Cadena que indica el valor a buscar en el array separada por '.'
 * @param  [array]  $array  Array con valores
 * @param  [array]  &$val   Valor actual
 * @return [string]
 */
function getArrayValueFromString($string, $array, &$val=array()) {
	$parts = explode('.', $string, 2);
	$val   = (empty($val)) ? $array[$parts[0]] : $val[$parts[0]];
	if (count($parts) >= 2) {
		return getArrayValueFromString($parts[1], $array, $val);
	} else {
		return $val;
	}
}




/**
 * Detecta si es un BOT de algún buscador
 *
 * @return boolean Es un bot (true) o no (false)
 */
function is_bot() {
    $bots = array(
        'Googlebot', 'Baiduspider', 'ia_archiver',
        'R6_FeedFetcher', 'NetcraftSurveyAgent', 'Sogou web spider',
        'bingbot', 'Yahoo! Slurp', 'facebookexternalhit', 'PrintfulBot',
        'msnbot', 'Twitterbot', 'UnwindFetchor',
        'urlresolver', 'Butterfly', 'TweetmemeBot'
    );

    foreach($bots as $b) {
        if( stripos( $_SERVER['HTTP_USER_AGENT'], $b ) !== false ) return true;
    }

    return false;
}



/**
 * Detección de navegadores antiguos con modernizr
 *
 * @return void
 */
function preventOlderBrowsers() {
	// Impide que los BOTS de los buscadores sean redirigidos a la página de UPS
	if ( !is_bot() ) {
	    // https://github.com/jamesgpearce/modernizr-server
	    //include_once 'php/lib/modernizr-server.php';

		// condiciones de modernizr
	    /*if ( !$modernizr->flexbox ) {
	    	header('location: ' . URL_UPS );
			exit;
	    }*/
	}
}



/**
 * Detecta dispositivos móviles
 *
 * @return boolean Es dispositivo móvil (true) o no (false)
 */
function isMobileOrTablet() {
	$iPod    = stripos($_SERVER['HTTP_USER_AGENT'],"iPod");
	$iPhone  = stripos($_SERVER['HTTP_USER_AGENT'],"iPhone");
	$iPad    = stripos($_SERVER['HTTP_USER_AGENT'],"iPad");
	$Android = stripos($_SERVER['HTTP_USER_AGENT'],"Android");
	$webOS   = stripos($_SERVER['HTTP_USER_AGENT'],"webOS");
	if( $iPod || $iPhone || $iPad || $Android ||  $webOS) {
		return TRUE;
	} else {
		return FALSE;
	}
}



// Detección de navegadores
//ini_set("memory_limit", "1024M");
//use phpbrowscap\Browscap;
/*
function preventOlderBrowsers() {
	$browscap = new Browscap('cache');
	$browscap->doAutoUpdate = false;
	$browser = $browscap->getBrowser();
	if ( ($browser->Browser == 'IE') && ($browser->MajorVer <= 8) ) {
		header('location: ' . URL_UPS );
		exit;
	}
}
*/



/**
 * Borra un directorio y todo su contenido
 *
 * @param  [string] $dir Path del directorio
 * @return [void]
 */
function deleteDir($dir) {
	$files = array_diff(scandir($dir), array('.','..'));
	foreach ($files as $file) {
		(is_dir("$dir/$file")) ? recurseRmdir("$dir/$file") : unlink("$dir/$file");
	}
	return rmdir($dir);
}



/**
 * Obtiene la IP del usuario
 *
 * @return [string] IP
 */
function getIP() {
	if ( isset($_SERVER['HTTP_CLIENT_IP']) && ! empty($_SERVER['HTTP_CLIENT_IP'])) {
	    $ip = $_SERVER['HTTP_CLIENT_IP'];
	} elseif ( isset($_SERVER['HTTP_X_FORWARDED_FOR']) && ! empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
	    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
	} else {
	    $ip = (isset($_SERVER['REMOTE_ADDR'])) ? $_SERVER['REMOTE_ADDR'] : '0.0.0.0';
	}

	$ip = filter_var($ip, FILTER_VALIDATE_IP);

	return ($ip === false) ? '0.0.0.0' : $ip;
}
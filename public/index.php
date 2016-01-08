<?php

// Carga todas las librerías PHP
include_once realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/assets/php/autoload.php';

// Iniciliza PHPDOTENV para usar las variables del fichero .env
$dotenv = new Dotenv\Dotenv(realpath(__DIR__ . DIRECTORY_SEPARATOR . '..'));
$dotenv->load();

// Constantes
include realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/constants.php';

// Funciones
include realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/functions.php';

// Para poder usar $_SESSION
if ( getenv('SESSION_START') ) {
	session_cache_limiter(false);
	session_start();
}

// Idiomas permitidos
define('LANGS', getenv('LANGS'));

// Idioma por defecto
define('DEFAULT_LANG', getenv('DEFAULT_LANG'));

// Lógica para asignar el idioma
define('LANG', getLang());

include_once realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/lang/' . LANG . '.php';

// Para poder usar Bases de Datos
if ( getenv('DB_USE') ) {
	ORM::configure('mysql:host='.getenv('DB_HOST').';dbname='.getenv('DB_NAME').';charset=utf8');
	ORM::configure('username', getenv('DB_USERNAME'));
	ORM::configure('password', getenv('DB_PASSWORD'));

	// Carga todas las clases
	$clases = array_diff( scandir(realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/database/'), array('..', '.') );
	foreach ($clases as $clase) {
		require_once realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/database/' . $clase;
	}
}

// Cargamos el Framework Slim
$settings = require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/settings.php';
$app      = new \Slim\App($settings);

// Extensiones
$extensions = array_diff( scandir(realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/extensions/'), array('..', '.') );
foreach ($extensions as $extension) {
	require_once realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/extensions/' . $extension;
}

// Dependencias
require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/dependencies.php';

// Middlewares
require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/middleware.php';

// Rutas
require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/app/routes.php';



// Go go go!
$app->run();

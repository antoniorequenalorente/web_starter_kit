<?php

// Dependency Injection Container - Configuration
$container = $app->getContainer();



/* =============================================================================================================
	Service providers
============================================================================================================= */

// ------
// Twig
// ------
$container['view'] = function ($c) {
	$settings = $c['settings']['view'];
	$view     = new \Slim\Views\Twig($settings['template_path'], $settings['twig']);

	// Add extensions
	$view->addExtension(new Slim\Views\TwigExtension($c['router'], $c['request']->getUri()));
	$view->addExtension(new Twig_Extension_Debug());
	$view->addExtension(new Lang_Twig_Extension());
	$view->addExtension(new Asset_Twig_Extension());

	return $view;
};


// ----------------
// Flash messages
// ----------------
$container['flash'] = function ($c) {
	return new \Slim\Flash\Messages;
};




/* =============================================================================================================
	Service factories
============================================================================================================= */

// ---------
// Monolog
// ---------
$container['logger'] = function ($c) {
	$settings = $c['settings']['logger'];
	$logger   = new \Monolog\Logger($settings['name']);

	$logger->pushProcessor(new \Monolog\Processor\UidProcessor());
	$logger->pushHandler(new \Monolog\Handler\StreamHandler($settings['path'], \Monolog\Logger::DEBUG));

	return $logger;
};




/* =============================================================================================================
	Action factories
============================================================================================================= */

/*$container['App\Action\HomeAction'] = function ($c) {
	return new App\Action\HomeAction($c['view'], $c['logger']);
};*/




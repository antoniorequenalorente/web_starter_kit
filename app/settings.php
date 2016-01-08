<?php

return [

	'settings' => [
		// View settings
		'view' => [
			'template_path' => __DIR__ . '/views',
			'twig'          => [
				'cache'       => realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/cache/twig',
				'debug'       => getenv('TWIG_DEBUG')  // true --> NO cachea las plantillas
			],
		],


		// Monolog settings
		'logger' => [
			'name' => 'app',
			'path' => realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/log/app.log',
		],
	],


	'dir' => [
		'images' => 'IMAGESSSSSS'
	]

];

<?php

/* ==============================================================================================================================
    RUTAS DE LA APLICACIÓN
=============================================================================================================================== */

$app->group('/{lang_url:['.str_replace(DEFAULT_LANG.'|', '', LANGS).']{0,2}}', function () {

	/* ----------------------------------------------------------------------------------------------------------
	    HOME
	 ------------------------------------------------------------------------------------------------------------*/
	$this->get( '[/]', function ($request, $response, $args) {

		// Redirige a la HOME del idioma correspondiente
		if ( ($args['lang_url']!=LANG) && ($args['lang_url']=='') && (LANG!=DEFAULT_LANG) ) {
			return $response->withRedirect( lang('url.home') );
		}

	    // Variables para pasar a la vista
	    $vars = array(
	    	'current_section' => 'home',
	        'metas' => array(
	            'title'       => '',
	            'description' => '',
	            'keywords'    => '',
	            'link'        => $this->request->getUri()->getBaseUrl() . $this->request->getUri()->getPath(),
		        'foto'        => '',
		        'foto_w'      => '',
		        'foto_h'      => '',
		        'foto_mime'   => ''
	        ),
			'class_html'    => '',
			'class_body'    => '',
			'css_vendor'    => array(
				//DIR_VENDOR => 'lib_extra_css'
			),
			'js_vars' => array(
				'sampleVar' => 'sampleValue123'
			),
			'js_vendor_head' => array(
				//'js_vendor_head',
			),
			'js_vendor' => array(
				//
			),
			'js_extra' => array(
				//
			)
	    );

	    // Cargamos la vista
	    $this->view->render($response, 'page_sample.twig', $vars);
	    return $response;
	});


	/* ----------------------------------------------------------------------------------------------------------
	    LISTADO DE PAÍSES
	 ------------------------------------------------------------------------------------------------------------*/
	$this->get( lang('url.home').lang('url.seccion.interior').'[/]', function ($request, $response, $args) {

		// Listado de países de la base de datos
		$paises = Pais::select('*')->find_array();

		// Variables para pasar a la vista
	    $vars = array(
	    	'current_section' => 'seccion.interior',
	        'metas' => array(
	            'title'       => '',
	            'description' => '',
	            'keywords'    => '',
	            'link'        => $this->request->getUri()->getBaseUrl() . $this->request->getUri()->getPath(),
		        'foto'        => '',
		        'foto_w'      => '',
		        'foto_h'      => '',
		        'foto_mime'   => ''
	        ),
			'class_html'    => '',
			'class_body'    => '',
			'css_vendor'    => array(
				//DIR_VENDOR => 'lib_extra_css'
			),
			'js_vars' => array(
				'sampleVar' => 'sampleValue123'
			),
			'js_vendor_head' => array(
				//'js_vendor_head',
			),
			'js_vendor' => array(

			),
			'js_extra' => array(
				'page_sample_2.min'
			),
			'paises' => $paises
	    );

	    // Cargamos la vista
	    $this->view->render($response, 'page_sample_2.twig', $vars);
	    return $response;
	});

});





/* ==============================================================================================================================
    LLAMADAS AJAX
=============================================================================================================================== */

$app->group('/ajax/', function () {

	/* --------------------------------------------------------------------------------------------------------------
	    CAMBIAR IDIOMA
	 ----------------------------------------------------------------------------------------------------------------*/
	$this->post('changelang', function ($request, $response, $args) {
		$result = array(
			'code' => 400,
			'url'  => ''
		);
		if ( $request->isPost() ) {
			$current_lang = $_COOKIE["lang"];
			$change_lang  = $request->getParam('lang', 'post');
			$url_go       = $request->getParam('url', 'post');
			if ($current_lang != $change_lang) {
				setcookie('lang', $change_lang, time()+60*60*24*7, '/');
				$result['code'] = 200;
				$result['url']  = $url_go;
			}
		}
		return $response->withJson($result);
	});

});





/* ==============================================================================================================================
    ERRORES
=============================================================================================================================== */

/* --------------------------------------------------------------------------------------------------------------
    ERROR 404
 ----------------------------------------------------------------------------------------------------------------*/
$container['notFoundHandler'] = function ($c) {
	return function ($request, $response) use ($c) {
		// Variables para pasar a la vista
	    $vars = array(
	        'metas' => array(
	            'title'       => '',
	            'description' => '',
	            'keywords'    => '',
	            'link'        => $c['request']->getUri()->getBaseUrl() . $c['request']->getUri()->getPath(),
		        'foto'        => '',
		        'foto_w'      => '',
		        'foto_h'      => '',
		        'foto_mime'   => ''
	        ),
			'class_html'    => 'html__error',
			'class_body'    => '',
			'css_vendor'    => array(
				//
			),
			'js_vars' => array(
				//
			),
			'js_vendor_head' => array(
				//
			),
			'js_vendor' => array(
				//
			),
			'js_extra' => array(
				//
			)
	    );
		return $c['view']->render($response, 'errors/404.twig', $vars)->withStatus(404);
	};
};

/* ============================================================================================================================ */

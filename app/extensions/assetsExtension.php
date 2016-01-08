<?php


class Asset_Twig_Extension extends Twig_Extension
{
	public function getFunctions()
	{
		return array(
			'asset' => new \Twig_Function_Method($this, 'asset'),
			'svg'   => new \Twig_Function_Method($this, 'svg'),
			'url'   => new \Twig_Function_Method($this, 'url'),
		);
	}


	public function asset($type, $name, $ext='', $route='')
	{
		$type = ($type=='img') ? 'images' : $type;
		$dir  = BASE_URL . $type . SLASH;
		if ( strlen($route) > 0 ) {
			$dir .= str_replace('.', '/', $route) . SLASH;
		}
		$dir .= ($ext!='') ? $name.'.'.$ext : $name.'.'.$type;

		return $dir;
	}


	public function svg($name, $clases='')
	{
		return '<svg class="' .$clases. '"><use xlink:href="' .DIR_IMAGES. 'images_SVG.svg#' .$name. '" /></svg>';
	}


	public function url($uri, $idioma='')
	{
		$lang = ($idioma != '') ? $idioma : getLang();
		$data = require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/lang/' . $lang . '.php';

		if ($lang == DEFAULT_LANG) {
			$url  = ($uri != 'home') ? BASE_URL . getArrayValueFromString('url.' . $uri, $data) : BASE_URL;
		} else {
			$url  = ($uri != 'home') ? BASE_URL . $lang . '/' . getArrayValueFromString('url.' . $uri, $data) : BASE_URL . $lang;
		}

		return $url;
	}


	public function getName()
	{
		return 'assets';
	}
}

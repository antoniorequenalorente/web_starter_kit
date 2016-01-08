<?php


class Lang_Twig_Extension extends Twig_Extension
{
    public function getFunctions()
    {
        return array(
           'lang' => new \Twig_Function_Method($this, 'translate'),
        );
    }

    public function translate($text, $idioma='')
    {
    	$lang = ($idioma != '') ? $idioma : getLang();
    	$data = require realpath(__DIR__ . DIRECTORY_SEPARATOR . '..') . '/lang/' . $lang . '.php';

        return getArrayValueFromString($text, $data);
    }

    public function getName()
    {
        return 'translate';
    }
}

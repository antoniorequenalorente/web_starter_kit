
'use strict';


/***************************************************************************************************
****************************************************************************************************
*****************************************************************************************************
*****************************************************************************************************
****************************************************************************************************/
/* --------------------------------------------------------------------------------------------------
 |
 | Define el entorno en el que estamos [local | desarrollo | produccion]
 |
 * ----------------------------------------------------------------------------------------------- */
var entorno = 'local';
/***************************************************************************************************
****************************************************************************************************
*****************************************************************************************************
*****************************************************************************************************
****************************************************************************************************/




/* ==================================================================================================================
	Dependencias
================================================================================================================== */
            	 	// npm install --save-dev gulp
var gulp 		 = require('gulp'),
				 	// npm install --save-dev browser-sync
	browserSync  = require('browser-sync'),
					// npm install --save-dev gulp-load-plugins
	$    		= require('gulp-load-plugins')({
	               	pattern: [
	               		'gulp-*',
	               		'gulp.*',
	               		'npm-*',
	               		'main-bower-files',
	               		'preen',
	               		'del',
	               		'svgSprite',
	               		'sprity',
	               		'gutil',
	               		'autoprefixer'
               		], // the glob(s) to search for
	               	//config: 'package.json',                                         // where to find the plugins, by default  searched up from process.cwd()
					scope         : ['dependencies', 'devDependencies', 'peerDependencies'], // which keys in the config to look within
					replaceString : /^gulp(-|\.)/,                                   // what to remove from the name of the module when adding it to the context
					camelize      : true,                                                 // if true, transforms hyphenated plugins names to camel case
					lazy          : true,                                                     // whether the plugins should be lazy loaded on demand
					rename        : {                                                       // a mapping of plugins to rename
						'gulp-ruby-sass'     : 'sass',
						'event-stream'       : 'es',
						'main-bower-files'   : 'mainBowerFiles',
						'task-listing'       : 'taskListing',
						'iconfont-css'       : 'iconfontCss',
						'glob-stream'        : 'gs',
						'npm-check-updates'  : 'ncu',
						'gulp-bundle-assets' : 'bundle',
						'autoprefixer'       : 'autoprefixer'
	                }
	            });




/* ==================================================================================================================
	Variables
================================================================================================================== */

// Directorios
var dirAssets = 'assets/';
var dirPublic = 'public/';

// Recursos
var assets = {
	css       : dirAssets + 'css/',
	cssVendor : dirAssets + 'css/vendor/',
	sass      : dirAssets + 'scss/',
	js        : dirAssets + 'js/',
	jsVendor  : dirAssets + 'js/vendor/',
	php       : dirAssets + 'libraries/',
	phpVendor : dirAssets + 'libraries/vendor/',
	images    : dirAssets + 'images/',
	fonticons : dirAssets + 'images/fonticons/',
	imagesSvg : dirAssets + 'images/svg/',
	iconsSvg  : dirAssets + 'images/sprite-svg/',
	iconsPng  : dirAssets + 'images/sprite-png/'
};

// Rutas
var paths = {
    main      : './',
    cache     : './cache/',
    css       : dirPublic + 'css/',
    cssVendor : dirPublic + 'css/vendor/',
    fonts     : dirPublic + 'files/fonts/',
    js        : dirPublic + 'js/',
    jsVendor  : dirPublic + 'js/vendor/',
    images    : dirPublic + 'images/',
    favicons  : dirPublic + 'images/favicons/',
};

// Tipos de ficheros
var fileType = {
	all    : '**/',
	sass   : '*.scss',
	css    : '*.css',
	cssMin : '*.min.css',
	js     : '*.js',
	images : '*.+(png|jpg|jpeg|gif|PNG|JPG|JPEG|GIF)',
	twig   : '*.twig',
	svg    : '*.svg',
	png    : '*.png'
};

// Ficheros
var files = {
	sassAll            :  assets.sass + fileType.all + fileType.sass,
	cssAssetsAll       :  assets.css + fileType.all + fileType.css,
	cssAssetsAllMin    :  assets.css + fileType.all + fileType.cssMin,
	cssAssetsAllNotMin :  '!' + assets.css + fileType.all + fileType.cssMin,
	cssPublic          :  paths.css + '*.css',
	fonticon           :  assets.fonticons + '*.svg',
	jsAssets           :  assets.js + '*.js',
	jsPublic           :  paths.js + '*.js',
	imagesAssets       :  assets.images + '**/*.+(png|jpg|gif)',
	imagesPublic       :  paths.images + '**/*.+(png|jpg|gif)',
	templates          :  paths.main + 'app/views/**/*.twig',
	imagesSvg          :  assets.imagesSvg + '*.svg',
	iconsSvg           :  assets.iconsSvg + '*.svg',
	iconsPng           :  assets.iconsPng + '*.png',
	favicon            :  assets.images + 'favicon.png'
};

// Ficheros JavaScript
var js = {
	jquery        : assets.jsVendor + 'jquery/dist/jquery.min.js',
	gsapJquery    : assets.jsVendor + 'gsap/src/minified/jquery.gsap.min.js',
	gsapTweenMax  : assets.jsVendor + 'gsap/src/minified/TweenMax.min.js',
	underscore    : assets.jsVendor + 'underscore/underscore-min.js',
	angular       : assets.jsVendor + 'angularjs/angular.min.js',
	svg4everybody : assets.jsVendor + 'svg4everybody/dist/svg4everybody.min.js'
};

// Ficheros CSS
var css = {

};

// Conjunto de librerías JavaScript básicas (generales / para todas las páginas)
var jsBasicLibraries = [
	js.jquery,
	js.underscore,
	js.gsapJquery,
	js.gsapTweenMax,
	js.svg4everybody
];

// Conjunto de librerías JavaScript de terceros
var	jsVendorLibraries = [
	js.angular
];

// Conjunto de documentos de estilos de terceros
var cssVendorLibraries = [

];



/* ==================================================================================================================
	Tareas
================================================================================================================== */

/**
 * [help]
 * Lista las tareas de Gulp
 */
gulp.task('help', $.taskListing);


/**
 * Tarea por defecto:
 * 		-> Actualizar el navegador cuando se producen cambios
 * 		-> Compilar los cambios en ficheros SCSS y compilarlos a CSS
 */
gulp.task('default', [
		//'composer-update',
		//'clean-scripts',
		'sprite-png',
		'fonticon',
		'css',
		//'js',
		'browser-sync'
	], function () {
	gulp.watch( files.imagesSvg, 	['images-svg'] );
	//gulp.watch( files.imagesPublic, ['images-min'] );
	gulp.watch( files.fonticon, 	['fonticon'] );
	gulp.watch( files.iconsPng, 	['sprite-png'] );
	gulp.watch( files.sassAll, 		['css'] );
	gulp.watch( files.jsAssets,	 	['js-test'] );
	//gulp.watch( files.iconsSvg, ['sprites'] );
});


/**
 * [browser-sync]
 * Actualiza el navegador cuando se producen cambios
 */
gulp.task('browser-sync', function() {
    browserSync.init(
    	[
	    	files.cssPublic,
	    	files.jsPublic,
	    	files.templates
    	],
    	{}
	);
});


/**
 * [clear]
 * Limpia la caché
 */
gulp.task('clear', function () {
	$.cached.caches = {};
});


/**
 * [clean]
 * Limpia todas las carpetas y ficheros de las rutas seleccionadas
 */
gulp.task('clean', ['clear'], function () {
    return $.del([
    		'!.keepme',
    		'cache/sass/*',
    		'cache/twig/*',
    		'logs/*'
		]).then(function (paths) {
		    console.log('Deleted files/folders:\n', paths.join('\n'));
		});
});


/**
 * [clean-all]
 * Limpia todas las carpetas y ficheros de las rutas seleccionadas
 */
gulp.task('clean-all', ['clean'], function () {
    return $.del([
    		'node_modules/**',
		]).then(function (paths) {
		    console.log('Deleted files/folders:\n', paths.join('\n'));
		});
});


/**
 * [composer-update]
 * Actualiza las dependencias PHP mediante composer
 */
gulp.task('composer-update', function () {
    $.composer('update', {});
});


/**
 * [get-scripts]
 * Instala las dependencias de Bower (los scripts)
 */
gulp.task('get-scripts', function() {
	return $.bower()
	      .pipe( gulp.dest( assets.jsVendor ) )
});


/**
 * [update-scripts]
 * Actualiza las dependencias de Bower (los scripts)
 */
gulp.task('update-scripts', function() {
	return $.bower( {cmd: 'update'} )
		  .pipe( gulp.dest( assets.jsVendor ) )
});


/**
 * [clean-scripts]
 * Instala las dependencias de Bower (los scripts), dejando solo los ficheros que hayamos definido en "bower.json"
 */
gulp.task("clean-scripts", ["update-scripts"], function (callback) {
    return $.preen.preen( {}, callback );
});


/**
 * [check-updates]
 * Comprueba si hay actualizaciones de paquetes en "package.json"
 */
gulp.task('check-updates', function () {
	$.ncu.run({
		packageFile  : 'package.json',
		silent       : false,
		errorLevel   : 1,
		jsonUpgraded : false
	}).then(function(upgraded) {
	    console.log('dependencies to upgrade:', upgraded);
	});
});


/**
 * [sass]
 * Compila los ficheros SASS
 */
gulp.task('sass', function () {
    var processors = [
    	$.autoprefixer( {
    		browsers: ['last 3 version']
    	} )
    ];
    return $.sass( assets.sass + 'style.scss',
        {
			precision       : 10,
			sourcemap       : false,
			compass         : true,
			style           : 'nested',
			cacheLocation   : paths.cache + 'sass',
			defaultEncoding : 'utf-8'
        })
        .on('error', function (err) {
        	console.log( err.message );
        })
        .pipe( $.postcss(processors) )
        .pipe( gulp.dest( assets.css ) );
});


/**
 * [css-vendor]
 * Mueve los estilos de terceros necesarios a "css/vendor"
 */
gulp.task('css-vendor', function () {
    return gulp.src( cssVendorLibraries )
		.pipe( $.cached( 'css-vendor' ) )
		.pipe( gulp.dest( assets.cssVendor ) );
});


/**
 * [copy-css-min]
 * Copia los ficheros CSS que ya están comprimidos al directorio final (public)
 */
gulp.task('copy-css-min', ['css-vendor'], function () {
	return gulp.src( files.cssAssetsAllMin )
		.pipe( gulp.dest( paths.css ) );
});


/**
 * [css]
 * Comprime los ficheros CSS y los mueve al directorio final (public)
 */
gulp.task('css', ['sass', 'copy-css-min'], function () {
    return gulp.src( [files.cssAssetsAll, files.cssAssetsAllNotMin] )
        .pipe( $.cached('css') )
        /*.pipe( $.sourcemaps.init({
			loadMaps : true,
			debug    : true
        }) )*/
        .pipe( $.cssnano() )
        //.pipe( $.sourcemaps.write('./') )
        .pipe( $.rename({
        	suffix: '.min'
        }))
        .pipe( gulp.dest( paths.css ) )
        .pipe( $.filesize() )
        .pipe( $.notify({
			title   : 'CSS',
			message : 'Listo',
			onLast  : true
        }) );
});


/**
 * [fonticon]
 * Crea una tipografía a partir de SVG's
 * Crea también las clases CSS necesarias en el fichero "app/assets/scss/base/_fonticon.scss"
 */
gulp.task('fonticon', function() {
	return gulp.src( files.fonticon )
		.pipe( $.iconfont({
			fontName      : 'fonticon',
			normalize     : true,
			//appendUnicode : true,
			formats       : ['ttf', 'eot', 'woff', 'woff2', 'svg'],
			timestamp     : Math.round(Date.now()/1000)
		}))
	    .on('glyphs', function(glyphs, options) {
			gulp.src( assets.sass + 'base/_fonticon-template.scss' )
	        .pipe( $.consolidate('lodash', {
				glyphs    : glyphs,
				fontName  : 'fonticon',
				fontPath  : '../files/fonts/',
				className : 'fi-'
	        }))
	        .pipe( $.rename({
	        	basename: '_fonticon'
	        }) )
	        .pipe(gulp.dest( assets.sass + 'base/' ));
	    })
	    .pipe(gulp.dest( paths.fonts ));
});


/**
 * [js-basic]
 * Unifica las librerías JavaScript de terceros necesarias, las comprime y las copia a "public/js/vendor/"
 */
gulp.task('js-basic', function() {
	return gulp.src( jsBasicLibraries )
		.pipe( $.cached('js-basic') )
		.pipe( $.concat('basic.js') )
		.pipe( gulp.dest( assets.jsVendor ) )
		.pipe( $.filesize() )
		.pipe( $.uglify() )
		.pipe( $.rename('basic.min.js') )
		.pipe( gulp.dest( paths.jsVendor ) )
		.pipe( $.filesize() );
});


/**
 * [js-vendor]
 * Mueve las librerías JavaScript de terceros necesarias a "public/js/vendor/" y las comprime
 */
gulp.task('js-vendor', function() {
	return gulp.src( jsVendorLibraries )
		.pipe( $.cached('js-vendor') )
		.pipe( gulp.dest( paths.jsVendor ) )
		.pipe( $.filesize() );
});


/**
 * [js]
 * Comprime los ficheros JavaScript
 */
gulp.task('js', ["js-vendor"], function() {
	return gulp.src( files.jsAssets )
		.pipe( $.cached('js') )
		.pipe( $.uglify() )
		.pipe( $.rename({
			suffix: '.min'
		}) )
		.pipe( $.sourcemaps.init({
			loadMaps: true
		}) )
    	.pipe( $.sourcemaps.write('./maps') )
		.pipe( gulp.dest( paths.js ) );
});


/**
 * [js-test]
 * Testea el código JavasCript y señaliza errores y advertencias
 */
gulp.task('js-test', ['js'], function() {
	return gulp.src( files.jsAssets )
	    .pipe( $.jshint() )
	    .pipe( $.jshint.reporter('jshint-stylish') );
});


/**
 * [sprite-png]
 * Genera un sprite con las imágenes PNG
 */
gulp.task('sprite-png', function () {
	var spriteData = gulp.src( files.iconsPng )
		.pipe( $.spritesmith({
			imgName   : 'sprite-png.png',
			cssName   : '_sprite-png.scss',
			cssVarMap : function (sprite) {
				sprite.name = 'sprite_' + sprite.name;
			},
			imgPath : '../images/sprite-png.png'
		}) );
	return spriteData.pipe( $.if('*.png', gulp.dest(paths.images), gulp.dest(assets.sass + 'base')) );
});


/**
 * [images-min]
 * Comprime las imágenes PNG, JPG y GIF
 */
gulp.task('images-min', function () {
    return gulp.src( [files.imagesPublic, '!'+paths.images+'sprite-png.png', '!'+paths.images+'favicons/**/*.*'] )
        .pipe( $.filesize() )
        .pipe(
        	$.imagemin({
				optimizationLevel : 3,		// for PNG
				progressive       : true,	// for JPG
				interlaced        : false	// for GIF
	        })
        )
        .pipe( $.filesize() )
        .pipe( gulp.dest( paths.images ) )
});


/**
 * [images-svg]
 * Combina ficheros SVG en un solo elemento de tipo <symbol>
 */
gulp.task('images-svg', function () {
    return gulp
        .src( files.imagesSvg )
        .pipe( $.svgmin({
            js2svg: {
                pretty: true
            }
        }))
        .pipe( $.svgstore() )
        .pipe( $.rename({
        	basename: 'images_SVG'
        }))
        .pipe( gulp.dest( paths.images ) );
});



/**
 * [favicons]
 * Crea favicons en todos los formatos
 */
gulp.task('favicons', function () {
	return gulp.src( files.favicon )
		.pipe( $.favicons({
			appName        : 'Web Starter Kit',
			appDescription : 'Estructura y ficheros para proyectos web',
			version        : '1.0',
			developerName  : 'Antonio Requena Lorente',
			developerURL   : 'https://es.linkedin.com/in/antoniorequenalorente',
			background     : '#000000',
			path           : 'images/favicons',
			url            : '/',
			display        : 'browser',
			orientation    : 'landscape',
			html           : paths.favicons + 'favicons.html',
			replace        : true,
			online         : true,
			logging        : true,
			icons          : {
				android      : true,	// Create Android homescreen icon. `boolean`
				appleIcon    : true,    // Create Apple touch icons. `boolean`
				appleStartup : true,    // Create Apple startup images. `boolean`
				coast        : true,    // Create Opera Coast icon. `boolean`
				favicons     : true,    // Create regular favicons. `boolean`
				firefox      : true,    // Create Firefox OS icons. `boolean`
				opengraph    : true,    // Create Facebook OpenGraph image. `boolean`
				twitter      : true,    // Create Twitter Summary Card image. `boolean`
				windows      : true,    // Create Windows 8 tile icons. `boolean`
				yandex       : true     // Create Yandex browser icon. `boolean`
            },
        }))
        .on( 'error', $.gutil.log )
        .pipe( gulp.dest( paths.favicons ) );
});

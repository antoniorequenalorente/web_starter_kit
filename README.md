# Introducción
**Estructura y ficheros base para la realización de proyectos web**.
Está basado en el *framework PHP Slim*, que se emplea como controlador principal y para el enrutamiento. Utiliza *plantillas Twig* para la creación de las páginas. Se usa *SASS* para los estilos y hay diferentes tareas con *Gulp* para la gestión de dependencias (tanto PHP como Javascript).

# Requisitos
* PHP >= 5.5
* Composer: [getcomposer.org](https://getcomposer.org/download/)
* Node.js: [nodejs.org](https://nodejs.org/en/)
* Bower: [bower.io](http://bower.io/#install-bower)

#Instalación
1. **Descargar el .ZIP** con todos los ficheros
2. **Descomprimirlo** en el directorio del proyecto *(PE: c:/wamp/www/web_starter_kit)*
3. Entrar por línea de comandos al directorio del proyecto:
	1. Ejecutar el comando ***npm install*** para instalar los paquetes necesarios
	2. Ejecutar la tarea ***gulp composer-update*** para descargar las dependencias PHP necesarias
	3. Ejecutar la tarea ***gulp get-scripts*** para descargar las dependencias JavaScript necesarias
	4. Ejecutar la tarea ***gulp js-basic*** para generar el fichero ``public/js/vendor/basic.min.js``
	5. Ejecutar la tarea ***gulp js*** para generar los ficheros JavaScript
	6. Ejecutar la tarea ***gulp fonticon*** para generar la tipografía iconográfica
	7. Ejecutar la tarea ***gulp images-svg*** para combinar los SVG's
	8. Ejecutar la tarea ***gulp sprite-png*** para combinar los PNG's en un sprite	
	9. Ejecutar la tarea ***gulp css*** para generar los estilos
4. Volcar el contenido de la base de datos de ejemplo ***(SAMPLE_database.sql)***
5. Renombrar el fichero ***.env.SAMPLE*** a ***.env*** y modificar sus variables *(recuerda que debes apuntar a la carpeta "public")*
6. Renombrar el fichero ***public/.htaccess.SAMPLE*** a ***.htaccess*** y configurarlo correctamente *(recuerda que debes apuntar a la carpeta "public")*

Con esto bastaría (siempre que se hayan configurado bien todos los parámetros) para hacer funcionar la página de ejemplo.

Es recomendable echar un vistazo al fichero ``gulpfile.js`` y ver los métodos que ofrece para trabajar durante el desarrollo.

#Estructura
[carpeta_open]: http://cdn.flaticon.com/png/16/25302.png "carpeta"
[fichero]: http://cdn.flaticon.com/png/16/70383.png "fichero"
![alt text][carpeta_open] **app**
<br>&#9492;&#9472;&nbsp;![alt text][carpeta_open] **assets**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **css**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **images**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **fonticons** &#187; *SVG's para formar la fuente tipográfica*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **sprite-png** &#187; *imágenes para generar el sprite PNG*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **sprite-svg**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **svg** &#187; *SVG's para combinarlos en un solo elemento tipo ``<symbol>``*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **js**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **php** &#187; *librerías PHP de terceros gestionadas por ``composer.json``*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **scss**
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **controllers**
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **database** &#187; *clases que se corresponden con las tablas de la base de datos*
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **extensions**
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **lang**
<br>&#9492;&#9472;&nbsp;![alt text][carpeta_open] **views** &#187; *plantillas para el 'front-end'*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **dev** &#187; *para usar durante el desarrollo*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **errors** &#187; *plantillas de páginas de error*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **partials** &#187; *partes troceadas de código*
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **constants.php**
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **dependecies.php**
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **functions.php**
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **middleware.php**
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **routes.php**
<br>&#9492;&#9472;&nbsp;![alt text][fichero] **settings.php**
<br>![alt text][carpeta_open] **cache**
<br>![alt text][carpeta_open] **logs**
<br>![alt text][carpeta_open] **node_modules**
<br>![alt text][carpeta_open] **public** &#187; *la parte pública de la aplicación*
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **css** &#187; *estilos personalizados*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **maps**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **vendor** &#187; *estilos de terceros*
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **files**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **audios**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **fonts**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **videos**
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **images**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **favicons**
<br>&#9500;&#9472;&nbsp;![alt text][carpeta_open] **js** &#187; *javascripts personalizados*
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;![alt text][carpeta_open] **maps**
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;![alt text][carpeta_open] **vendor** &#187; *javascripts de terceros*
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **.htaccess**
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **.browserconfig.xml**
<br>&#9500;&#9472;&nbsp;![alt text][fichero] **index.php** &#187; *controlador principal (todo pasa por aquí)*
<br>&#9492;&#9472;&nbsp;![alt text][fichero] **robots.txt**
<br>![alt text][fichero] **.bowersrc**
<br>![alt text][fichero] **.editorconfig**
<br>![alt text][fichero] **.env**
<br>![alt text][fichero] **.gitignore**
<br>![alt text][fichero] **bower.json**
<br>![alt text][fichero] **composer.json**
<br>![alt text][fichero] **config.rb**
<br>![alt text][fichero] **gulpfile.js**
<br>![alt text][fichero] **package.json**

#Base de datos (ORM)
Se emplean las librerías PHP [Idiorm](http://idiorm.readthedocs.org/) y [Paris](http://paris.readthedocs.org/)

#Estilos (SASS/SCSS)
Usa el [Framework de Wakkos](https://github.com/Wakkos/Wakkos-CSS-Framework) para SASS con ligeras modificaciones y con algunos añadidos, como por ejemplo la [librería de animaciones de Geoff Graham](https://github.com/geoffgraham/animate.scss).

#### Configuración (``lib/settings.scss``)
Desde este fichero se configuran los diferentes aspectos que influirán a la hora de compilar el CSS (colores, fuentes, tamaños, ...)

#### Nomenclatura (BEM)
Más info sobre la metodología BEM [aquí](http://webdesign.tutsplus.com/es/articles/an-introduction-to-the-bem-methodology--cms-19403)

Se emplean 2 mixins para estos casos:
* **@mixin e(name)** &#8594; *para los elementos*
* **@mixin m(name)** &#8594; *para los modificadores*

Por ejemplo:

```sass
.persona {
	// estilos para .persona
	@include m(mujer) {
		// estilos para .persona--mujer
	}
	@include e(mano) {
		// estilos para .persona__mano
		@include m(izquierda) {
			// estilos para .persona__mano--izquierda
		}
		@include m(derecha) {
			// estilos para .persona__mano--derecha
		}
	}
}
```
generaría como salida:

```css
.persona{}
.persona--mujer{}
.persona__mano{}
.persona__mano--izquierda{}
.persona__mano--derecha{}
```

#### Breakpoints
Los breakpoints se encuentran en ``lib/settings.scss``.

```sass
$breakpoints: (
    'bp_1' : 75em, // 1200px
    'bp_2' : 64em, // 1024px
    'bp_3' : 48em, //  768px
) !default;
```

Ejemplo:

```sass
.bloque {
	color: blue;
	@include respond-to(bp_2) {
		color: red;
	}
}
.otro_bloque {
	color: blue;
	@include respond-to(bp_3, min) {
		color: green;
	}	
}
```

devolvería:

```sass
.bloque {
	color: blue;
}
@media (max-width: 64em) {
	.bloque {
		color: red;
	}
}
@media (min-width: 48em) {
	.bloque {
		color: green;
	}
}
```

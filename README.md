# Introducción
**Estructura y ficheros base para la realización de proyectos web**.
Está basado en el *framework PHP Slim*, que se emplea como controlador principal y para el enrutamiento. Utiliza *plantillas Twig* para la creación de las páginas. Se usa *SASS* para los estilos y hay diferentes tareas con *Gulp* para la gestión de dependencias (tanto PHP como Javascript).

# Requisitos
* PHP >= 5.5
* Composer: [getcomposer.org](https://getcomposer.org/download/)
* Bower: [bower.io](http://bower.io/#install-bower)
* Node.js: [nodejs.org](https://nodejs.org/en/)

#Instalación

1. **Descargar el .ZIP** con todos los ficheros
2. **Descomprimirlo** en el directorio del proyecto *(PE: c:/wamp/www/web_starter_kit)*
3. Entrar por línea de comandos al directorio del proyecto:
	1. Ejecutar el comando ***npm install*** para instalar los paquetes necesarios
	2. Ejecutar la tarea ***gulp composer-update*** para descargar las dependencias PHP necesarias
4. Volcar el contenido de la base de datos ***(SAMPLE_database.sql)***
5. Renombrar el fichero ***.env.SAMPLE*** a ***.env*** y modificar sus variables
6. Renombrar el fichero ***public/.htaccess.SAMPLE*** a ***.htaccess*** y configurarlo correctamente

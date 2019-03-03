# Películas y Series Pendientes
## CRUD para entrega de trabajo de Programación 1º DAM (7 de Marzo)

El CRUD *Películas y Series Pendientes* me sirve para elegir de entre todas las series o películas que aún no haya visto, o simplemente volver a ver las que más me hayan gustado.

## Índice
Al entrar en la página tienes a elegir entre dos botones. El primero te lleva al CRUD de las series pendientes y el otro al de las películas pendientes.<br>
<br>
*index.jsp*
<img src="Fotos CRUD/Índice.png" alt="Índice">
## Películas
Aquí aparece una tabla con los datos de las películas que quiero ver. En la esquina superior derecha hay un botón, *"Añadir Película"*,
que activa un modal para añadir una película a la base de datos.<br>
Además, en la columna de más a la derecha aparecen dos iconos, el lápiz y la bomba, que respectivamente activan modales de edición de una película y de borrado de la misma.<br>
<br>
*Peliculas.jsp*
<img src="Fotos CRUD/Películas.png" alt="Películas">
## Series
Funciona exactamente igual que las películas, pero aplicado a las series pendientes. También tiene opción de añadido, edición y borrado.<br>
<br>
*Series.jsp*
<img src="Fotos CRUD/Series.png" alt="Series">
# Funciones
## Añadir película/serie:
Al pulsar el botón de añadir película/serie, aparece el siguiente modal. En él, tienes que escribir el nombre, género y saga de la serie o película, además de la duración en minutos, para las **películas**, o el número de capítulos, para las **series**.<br>
<br>
*nuevapelicula.jsp*<br>
<img src="Fotos CRUD/Añadir Película.png" alt="Añadir Película">
*nuevaserie.jsp*
<img src="Fotos CRUD/Añadir Serie.png" alt="Añadir Serie">
## Editar película / serie:
*actualizapelicula.jsp*<br>
<img src="Fotos CRUD/Editar Película.png" alt="Editar Película">
*actualizaserie.jsp*
<img src="Fotos CRUD/Editar Serie.png" alt="Editar Serie">
## Borrar película / serie:
*borrapelicula.jsp*
<img src="Fotos CRUD/Borrar Película.png" alt="Borrar Película">
*borraserie.jsp*
<img src="Fotos CRUD/Borrar Serie.png" alt="Borrar Serie">
## CSS y JavaScript:
**Tanto en *peliculas.jsp* como en *series.jsp* he utilizado una plantilla CRUD de Internet, que luego he ido actualizando.**<br>
main.css<br>
javascript.js<br>
**Este es el css que yo he creado:**<br>
index.css

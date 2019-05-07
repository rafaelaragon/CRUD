# Películas y Series Pendientes
## CRUD para entrega de trabajo de Programación 1º DAM (7 de Marzo)

Vídeos en los que explico mi CRUD:
- https://www.youtube.com/watch?v=akKfy3JpKEY&feature=youtu.be
- https://www.youtube.com/watch?v=8Q3AXF7Zqxs&feature=youtu.be

- pipo

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
Al pulsar el botón de añadir película/serie, aparece el siguiente modal. En él, tienes que escribir el nombre, género y saga de la serie o película, además de la duración en minutos, para las **películas**, o el número de capítulos, para las **series**Si aceptas, ésta se añadirá a la base de datos.<br>
<br>
*nuevapelicula.jsp*<br>
<img src="Fotos CRUD/Añadir Película.png" alt="Añadir Película">
*nuevaserie.jsp*
<img src="Fotos CRUD/Añadir Serie.png" alt="Añadir Serie">
## Editar película / serie:
Cuando pulsas el lápiz, se activa el siguiente modal. En él, tienes que sobreescribir el nombre, género y saga de la serie o película, además de la duración en minutos, para las **películas**, o el número de capítulos, para las **series**Si aceptas, ésta se actualizará en la base de datos.<br>
<br>
*actualizapelicula.jsp*<br>
<img src="Fotos CRUD/Editar Película.png" alt="Editar Película">
*actualizaserie.jsp*
<img src="Fotos CRUD/Editar Serie.png" alt="Editar Serie">
## Borrar película / serie:
Si pulsas en la bomba, se activa el siguiente modal. En él, se advierte que la serie o película seleccionada se va a borrar. Si aceptas, ésta se borrará de la base de datos.<br>
<br>
*borrapelicula.jsp*
<img src="Fotos CRUD/Borrar Película.png" alt="Borrar Película">
*borraserie.jsp*
<img src="Fotos CRUD/Borrar Serie.png" alt="Borrar Serie">
## CSS y JavaScript:
**Tanto en *peliculas.jsp* como en *series.jsp* he utilizado una plantilla CRUD de Internet, que luego he adaptado.**<br>
main.css<br>
javascript.js<br>
**Este es el css que yo he creado:**<br>
index.css<br>
Login.css **(¡Nuevo!)**
## Base de datos:
*Nota: el nombre de tanto la base de datos como de la tabla socio es provisional, ya que usé una plantilla. Ya que no compromete el CRUD, aún no lo he cambiado.*<br>
La base de datos, llamada *baloncesto.sql*, está formada por dos tablas; *socio (equivaldría a películas)* y *series*.<br>
**Socio** está formada por:<br>
- IdPel: La clave primaria de la película.<br>
- NomPel: El nombre completo de la película.<br>
- GenPel: El género, o géneros, de la película.<br>
- SagPel: La saga a la que pertenece la película. En caso de que pertenezca a alguna.<br>
- DurPel: La duración de la película, en minutos.<br>

**Series** está formada por:<br>
- IdSer: La clave primaria de la serie.<br>
- NomSer: El nombre completo de la serie.<br>
- GenSer: El género, o géneros, de la serie.<br>
- SagSer: La saga a la que pertenece la serie. En caso de que pertenezca a alguna.<br>
- NumCapSer: El número de capítulos de la serie. Si la serie tiene varias temporadas, se cuenta el número total de capítulos de todas las temporadas.<br>

**Usuarios** está formada por:<br>
- IdUsu: La clave primaria del usuario.<br>
- NomUsu: El nombre del usuario.<br>
- ConUsu: La contraseña, *encriptada*, del usuario.<br>



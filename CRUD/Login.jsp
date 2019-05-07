<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice</title>

        <!--Bootstrap 4-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <!--CSS-->
        <link rel="stylesheet" type="text/css" href="Login.css">

        <!--Favicon-->
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>

    <body>
        <img src="img/popcorn.png" class="rounded mx-auto d-block" alt="Palomitas" width="15%">
        <h1 class="text-center">Inicio de Sesión</h1>
        <div id="formulario">
            <form action="index.jsp"  method="post">
                <b>Nombre de Usuario:</b><br>
                <input type="text" name="nombre" placeholder="Usuario" required>
                <br>
                <b>Contraseña:</b><br>
                <input type="password" name="contrasena" placeholder="Contraseña" required>
                <br><br>
                <input class="btn btn-red mr-4 btn-lg" type="submit" value="Enviar">
            </form> 
            <%
              HttpSession sesion = request.getSession();
              String nombre = request.getParameter("nombre");
              String contraseña = request.getParameter("contrasena");
              sesion.setAttribute("nombre", nombre);
              sesion.setAttribute("contraseña", contraseña);
            %>
        </div>
    </body>
</html>
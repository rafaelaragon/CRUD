<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
        <link rel="stylesheet" type="text/css" href="index.css">

        <!--Favicon-->
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>
    <body>
        <img src="img/popcorn.png" class="rounded mx-auto d-block" alt="Palomitas" width="15%">
        <h1 class="text-center">Series y películas</h1>
        <%

          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto", "root", "");
          Statement s = conexion.createStatement();

          HttpSession sesion = request.getSession();
          String nombre = "";
          String contraseña = "";
          String nombreBD = "";
          String contraseñaBD = "";

          if (!sesion.isNew()) {
            nombre = request.getParameter("nombre");
            contraseña = request.getParameter("contrasena");
          }
          sesion.setAttribute("nombre", nombre);
          sesion.setAttribute("contrasena", contraseña);
          String query = "SELECT * FROM usuarios";

          MessageDigest md = MessageDigest.getInstance("MD5");
          md.update(contraseña.getBytes());
          String hash = DatatypeConverter.printHexBinary(md.digest());
          
          ResultSet lista = s.executeQuery(query);

          while (lista.next()) {
            nombreBD = lista.getString("NomUsu");
            contraseñaBD = lista.getString("ConUsu");
            if (sesion.getAttribute("nombre").equals(nombreBD) && MessageDigest.isEqual(hash.getBytes(), contraseñaBD.getBytes())) {
              break;
            }
          }

          if (sesion.getAttribute("nombre").equals(nombreBD) && MessageDigest.isEqual(hash.getBytes(), contraseñaBD.getBytes())) {
        %>
        <div class="row mt-5">
            <div class="btn col-md-4 offset-md-4" aria-label="Basic example">
                <span class="align-middle"><a href="Series.jsp" type="button" class="btn btn-red mr-4 btn-lg">Series</a></span>
                <span class="align-middle"><a href="Peliculas.jsp" type="button" class="btn btn-white ml-5 btn-lg">Películas</a></span>
            </div>
        </div>
        <h2 class="text-center"></h1>
        <h3 class="text-center"><a href="Logout.jsp" class="login">Cerrar sesión</a></h3>
        <%
        } else {
        %>
        <br>
        <% if (sesion.isNew()) { %>
        <h2 class="text-center">Para acceder al CRUD tienes que <a href="Login.jsp" class="login">Iniciar Sesión</a></h2>
            <%
            } else {
            %>
            <h2 class="text-center"><a href="Login.jsp" class="login">Iniciar Sesión</a></h2>
            <%
                }
              }
            %>
            <h4 class="text-center"><br>¿Aún no tienes una cuenta? <a href="registro.jsp" class="login">Regístrate</a></h4>
            </body>
            </html>
<%@page import="java.security.MessageDigest"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>

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
        <%
          request.setCharacterEncoding("UTF-8");

          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto", "root", "");
          Statement s = conexion.createStatement();

          HttpSession sesion = request.getSession();

          MessageDigest md = MessageDigest.getInstance("MD5");
          md.update(request.getParameter("ConUsu").getBytes());
          String hash = DatatypeConverter.printHexBinary(md.digest());

          String insercion = "INSERT INTO usuarios (IdUsu, NomUsu, ConUsu) ";
          insercion += "VALUES (NULL, '";
          insercion += request.getParameter("NomUsu") + "', '";
          insercion += hash + "')";

          //out.print(insercion);
          if (request.getParameter("ConUsu").equals(request.getParameter("ConUsu2"))) {
            s.execute(insercion);
        %>
        <img src="img/popcorn.png" class="rounded mx-auto d-block" alt="Palomitas" width="15%">
        <h1 class="text-center">Series y películas</h1>
        <h2 class="text-center align-middle">Usuario registrado con éxito<br><br></h2>
        <form action="index.jsp"  method="post">
            <input type = "hidden" name = "nombre" value = "<%sesion.getAttribute("nombre");%>" />
            <input type = "hidden" name = "contrasena" value = "<%sesion.getAttribute("contraseña");%>" />
            <input class="btn btn-red mr-4 btn-lg align-middle" type="submit" value="Volver">
        </form>
        <%
        } else {
        %>
        <img src="img/popcorn.png" class="rounded mx-auto d-block" alt="Palomitas" width="15%">
        <h2 class="text-center">Las contraseñas no coinciden<br><br> <a href="registro.jsp" class="login">Inténtalo de nuevo</a><br><br></h2>
        <form action="index.jsp"  method="post">
            <input type = "hidden" name = "nombre" value = "<%sesion.getAttribute("nombre");%>" />
            <input type = "hidden" name = "contrasena" value = "<%sesion.getAttribute("contraseña");%>" />
            <input class="btn btn-red mr-4 btn-lg" type="submit" value="Volver">
        </form>
        <%
          }
          conexion.close();
        %>
    </body>
</html>

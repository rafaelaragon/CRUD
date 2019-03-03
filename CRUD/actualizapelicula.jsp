<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          request.setCharacterEncoding("UTF-8");

          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto", "root", "");
          Statement s = conexion.createStatement();

          String actualizacion = "UPDATE socio SET NomPel='";
          actualizacion += request.getParameter("NomPel");
          actualizacion += "', GenPel='";
          actualizacion += request.getParameter("GenPel");
          actualizacion += "', SagPel='";
          actualizacion += request.getParameter("SagPel");
          actualizacion += "', DurPel=";
          actualizacion += request.getParameter("DurPel");
          actualizacion += " WHERE IdPel=";
          actualizacion += request.getParameter("actualizarPelicula");

          //out.print(actualizacion);
          s.execute(actualizacion);
          conexion.close();
        %>

        <script>
            //Redirecciona a la página principal
            location.replace("Peliculas.jsp");
        </script>

    </body>
</html>

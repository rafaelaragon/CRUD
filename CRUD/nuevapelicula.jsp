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

          String insercion = "INSERT INTO socio (IdPel, NomPel, GenPel, SagPel, DurPel) ";
          insercion += "VALUES (NULL, '";
          insercion += request.getParameter("NomPel") + "', '";
          insercion += request.getParameter("GenPel") + "', '";
          insercion += request.getParameter("SagPel") + "', ";
          insercion += request.getParameter("DurPel") + ")";

          //out.print(insercion);
          s.execute(insercion);
          conexion.close();
        %>

        <script>
            // Redirecciona a la página principal
            location.replace("Peliculas.jsp");
        </script>
    </body>
</html>

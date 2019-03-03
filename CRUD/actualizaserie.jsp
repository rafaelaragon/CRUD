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

          String actualizacion = "UPDATE series SET NomSer='";
          actualizacion += request.getParameter("NomSer");
          actualizacion += "', GenSer='";
          actualizacion += request.getParameter("GenSer");
          actualizacion += "', SagSer='";
          actualizacion += request.getParameter("SagSer");
          actualizacion += "', NumCapSer=";
          actualizacion += request.getParameter("NumCapSer");
          actualizacion += " WHERE IdSer=";
          actualizacion += request.getParameter("actualizarSerie");

          //out.print(actualizacion);
          s.execute(actualizacion);
          conexion.close();
        %>

        <script>
            //Redirecciona a la página principal
            location.replace("Series.jsp");
        </script>

    </body>
</html>

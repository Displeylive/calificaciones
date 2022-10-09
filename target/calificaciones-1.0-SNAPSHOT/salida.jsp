<%-- 
    Document   : salida
    Created on : 28 sep. de 2022, 03:42:04
    Author     : MARCO_T_EMERGENTES
--%>
<%@page import="com.emergentes.Calificaciones"%>
<%
    Calificaciones cal = (Calificaciones) request.getAttribute("cal");
     int a = Integer.parseInt(cal.getPrimero());
     int b = Integer.parseInt(cal.getSegundo());
     int c = Integer.parseInt(cal.getNotfinal());
     int s = a+b+c;
     String p ="";
     if(s >= 51 ){
     p = "APROBADO";}
     else{
     p = "REPROBADO";
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>DATOS RECIBIDOS</h1>
        <p>
            NOMBRE : <%= cal.getNombre()%> <br>
            MATERIA : <%= cal.getMaterias() %> <br>
            PRIMER PARCIAL : <%= cal.getPrimero() %> <br>
            SEGUNDO PARCIAL ;<%= cal.getSegundo() %> <br>
            EXAMEN FINAL :<%= cal.getNotfinal() %> <br>
            TOTAL :  <%= s %>      <br>
            RESULTADO ;  <%= p %>  <br>    
            </u
        </p>
        </center>
        <br>
        <a href="index.jsp">VOLVER</a>
    </body>
</html>

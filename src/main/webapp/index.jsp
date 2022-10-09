<%-- 
    Document   : index
    Created on : 28 sep. de 2022, 03:41:03
    Author     : MARCO_T_EMERGENTES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <section>  
        <center>
        <P>PRIMER PARCIAL TEM-742 <br>
        MARCO ANTONIO TAMBO ARCANI<br>
        CI 8373276<br>
        
        </P>
        </center>
    </section>
    </head>
    <body>     
    <center>
        <h1>    REGISTRO DE CALIFICACIONES  </h1>
        <p>llenar elregistro del estudiante</p>
        <form action="ProcesaServlet" method="POST">
          MATERIA <select name="materia" size="1">
            <option>            </option>
            <option>PROGRAMACION</option>
            <option>REDES</option>
            <option>CALCULO</option>
            <option>FISICA</option> </select><br>
        NOMBRE DE ESTUDIANTE  <input required type="text" name="nombre" value="" /> <br>
        PRIMER PARCIUAL (sobre 30 pts) <input required type="text" name="primero" value="" /><br>
        SEGUNDO PARCIAL (sobre 30 pts)  <input required type="text" name="segundo" value="" /><br>
        EXAMEN FINAL (sobre 40 pts) <input required type="text" name="notfinal" value="" /><br><br>
        <input type="submit" value="ENVIAR" />
        </form> 
        </center>
    </body>
</html>

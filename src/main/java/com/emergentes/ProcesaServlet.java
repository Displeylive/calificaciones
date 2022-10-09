
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServlet", urlPatterns = {"/ProcesaServlet"})
public class ProcesaServlet extends HttpServlet {
 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String materia = request.getParameter("materia"); 
         String nombre = request.getParameter("nombre");
         String primero = request.getParameter("primero");
         String segundo = request.getParameter("segundo");
         String notfinal = request.getParameter("notfinal");
       
        //crear el onjeto
        Calificaciones cal = new Calificaciones();
        //llenar datos en el objeto encu
       cal.setMaterias(materia);
       cal.setNombre(nombre);
       cal.setPrimero(primero);
       cal.setSegundo(segundo);
       cal.setNotfinal(notfinal);
       //colocamos el onjeto encu como atributo de request
       request.setAttribute("cal", cal);
       //enviarel objeto request a salida_en_op.jsp
       request.getRequestDispatcher("salida.jsp").forward(request, response);
    }
}

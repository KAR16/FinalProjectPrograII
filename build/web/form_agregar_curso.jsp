<%-- 
    Document   : form_agregar_curso
    Created on : 29 oct. 2021, 20:38:20
    Author     : Home
--%>


<%@page import="Curso.Conectar_Insertar"%>
<%@page import="Curso.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
   
    String spar_id_curso, spar_id_catedratico, spar_id_facultad;
    
    
    int par_id_curso,par_id_catedratico,par_id_facultad;
    String spar_nombre;
    
    spar_id_curso = request.getParameter("txt_id_curso");
    spar_id_catedratico = request.getParameter("txt_id_catedratico");
    spar_id_facultad = request.getParameter("txt_id_facultad");
    spar_nombre = request.getParameter("txt_nombre");
    

    if (spar_id_curso != null && spar_id_catedratico != null && spar_id_facultad!= null && spar_nombre != null ) {
        par_id_curso = Integer.parseInt(spar_id_curso);
        par_id_catedratico = Integer.parseInt(spar_id_catedratico);
        par_id_facultad = Integer.parseInt(spar_id_facultad);
       
        
        Conectar_Insertar conect_i = new Conectar_Insertar(par_id_curso, par_id_catedratico, par_id_facultad , spar_nombre);

        System.out.println(par_id_curso + par_id_catedratico + par_id_facultad  + spar_nombre);

        //response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERTAR</title>
    </head>
    <body>
        <h1>Ingrese los Datos</h1>

        <form name="Form_insertar" method="POST">

            <h2>ID CURSO <input type="text" name="txt_id_curso" required=""/></h2>
            <h2>ID CATEDRATICO <input type="text" name="txt_id_catedratico" required=""/></h2>
            <h2>ID FACULTAD <input type="text" name="txt_id_facultad" required=""/></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" /></h2>
 


            <input id="btnGuardar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>
    </body>
</html>




<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Contacto"%><!--50-Importar Clase-->
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ContactoDAO"%><!--51-Importar ClaseDAO-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title> 
    </head>
    <body>
        <%@include file="../../Template/Templete2.jsp" %>
        <div class="container">
            <h1>Contactos</h1><!--52-Cambiamos Nombre Clase-->
            <!--53-Cambiamos Nombre Controlador-->
            <a class="btn btn-info" href="ControladorContacto?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <!--54-Cambiamos Campos-->
                        <th class="text-center">ID CONTACTO</th>                        
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">APELLIDOS</th>
                        <th class="text-center">ASUNTO</th>
                        <th class="text-center">MENSAJE</th>
                        
                        <th class="text-center">ACCION</th>
                    </tr>
                </thead>
                <!--55-Cambiamos declaración del objeto-->
                <%
                    ContactoDAO dao=new ContactoDAO();// Modificamos
                    List<Contacto>list=dao.listar();// Modificamos
                    Iterator<Contacto>iter=list.iterator();// Modificamos
                    Contacto con = null;// Modificamos
                    while(iter.hasNext()){
                        con = iter.next();// Modificamos
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= con.getIdCon()%></td><!--56-Cambiamos objeto.getId()-->
                        <td class="text-center"><%= con.getNombres()%></td><!--57-Cambiamos objeto.getAtributo()-->
                        <td><%= con.getApellidos()%></td>
                        <td><%= con.getAsunto()%></td>
                        <td><%= con.getMensaje()%></td>
                        

                        <td class="text-center">
                            <!--59-Cambiamos Nombre Controlador y Cambiamos objeto.getId()-->
                            <a class="btn btn-primary" href="ControladorContacto?accion=editar&id=<%= con.getIdCon()%>">Editar</a>
                            <a class="btn btn-warning" href="ControladorContacto?accion=eliminar&id=<%= con.getIdCon()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
                 <%@include file="../../Template/Footer.jsp" %>
                
    </body>
</html>

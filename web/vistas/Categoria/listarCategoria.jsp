
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CategoriaDAO"%>

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
            <h1>Categorias</h1>
            <a class="btn bg-info" href="ControladorCategoria?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID CATEGORIA</th>
                        <th class="text-center">NOMBRE CATEGORIA</th>
                        <th class="text-center">DESCRIPCION</th>
                        
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    CategoriaDAO dao=new CategoriaDAO();
                    List<Categoria>list=dao.listar();
                    Iterator<Categoria>iter=list.iterator();
                    Categoria cat = null;
                    while(iter.hasNext()){
                        cat = iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= cat.getIdCat()%></td>
                        <td class="text-center"><%= cat.getNombreCat()%></td>
                        <td><%= cat.getDescripcion()%></td>
                      
                        <td class="text-center">
                            <a class="btn btn-primary" href="ControladorCategoria?accion=editar&id=<%= cat.getIdCat()%>">Editar</a>
                            <a class="btn btn-warning" href="ControladorCategoria?accion=eliminar&id=<%= cat.getIdCat()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>

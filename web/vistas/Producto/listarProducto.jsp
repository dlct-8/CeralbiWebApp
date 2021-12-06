
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
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
            <h1>Productos</h1>
            <a class="btn btn-info" href="ControladorProducto?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRE PRODUCTO</th>
                        <th class="text-center">DESCRIPCION</th>
                        <th class="text-center">MEDIDAS</th>
                        <th class="text-center">UNIDADES</th>
                        <th class="text-center">PRECIO COSTO</th>
                         <th class="text-center">PRECIO VENTA</th>
                        <th class="text-center">IMAGEN</th>
                        <th class="text-center">CATEGORIA</th>
                                                
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    ProductoDAO dao=new ProductoDAO();
                    List<Producto>list=dao.listar();
                    Iterator<Producto>iter=list.iterator();
                    Producto pro=null;
                    while(iter.hasNext()){
                        pro=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= pro.getIdPro()%></td>
                        <td class="text-center"><%= pro.getNombrePro()%></td>
                        <td><%= pro.getDescripcion()%></td>                                               
                        <td><%= pro.getMedidas()%></td>
                        <td><%= pro.getUnidades()%></td>
                        <td><%= pro.getPrecioCosto()%></td>
                        <td><%= pro.getPrecioVenta()%></td>
                        <td><%= pro.getImagenProd()%></td>
                        <td><%= pro.getIdCat()%></td>
                        
                        <td class="text-center">
                            <!-- Si quiere puede conservar id como llave para editar y eliminar-->
                            <a class="btn btn-primary" href="ControladorProducto?accion=editar&id=<%= pro.getIdPro()%>">Editar</a>
                            <a class="btn btn-warning" href="ControladorProducto?accion=eliminar&id=<%= pro.getIdPro()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>

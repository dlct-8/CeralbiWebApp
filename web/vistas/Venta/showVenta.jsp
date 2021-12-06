
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Venta"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.VentaDAO"%>
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
            <h1>Ventas</h1>
            <a class="btn btn-info" href="ControladorVenta?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">PEDIDO</th>
                        <th class="text-center">FECHA DE REALIZADO</th>
                        <th class="text-center">FECHA DE ENTREGA</th>
                        <th class="text-center">MEDIO DE PAGO</th>
                        <th class="text-center">METODO DE PAGO</th>
                        <th class="text-center">DIRECCION ENVIO</th>
                       
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    VentaDAO dao=new VentaDAO();
                    List<Venta>list=dao.listar();
                    Iterator<Venta>iter=list.iterator();
                    Venta objven=null;
                    while(iter.hasNext()){
                        objven=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= objven.getIdVent()%></td>
                        <td class="text-center"><%= objven.getIdPed()%></td>
                        <td><%= objven.getFechaReal()%></td>
                        <td><%= objven.getFechaEntreg()%></td>
                        <td><%= objven.getIdmed()%></td>
                        <td><%= objven.getIdmet()%></td>
                        <td><%= objven.getDirEnvio()%></td>                        
                        
                        <td class="text-center">
                            <!-- Si quiere puede conservar id como llave para editar y eliminar-->
                            <a class="btn btn-primary" href="ControladorVenta?accion=editar&id=<%= objven.getIdVent()%>">Editar</a>
                            <a class="btn btn-warning" href="ControladorVenta?accion=eliminar&id=<%= objven.getIdVent()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>

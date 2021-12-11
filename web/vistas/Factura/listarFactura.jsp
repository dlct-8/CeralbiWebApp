
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Factura"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FacturaDAO"%>
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
            <h1>Facturas</h1>
            <a class="btn btn-info" href="ControladorFactura?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">EMISION</th>
                        <th class="text-center">VENCIMIENTO</th>
                        <th class="text-center">CLIENTE</th>
                        <th class="text-center">VENDEDOR</th>
                        <th class="text-center">PEDIDO</th>
                        <th class="text-center">IMPUESTOS</th>

                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    FacturaDAO dao=new FacturaDAO();
                    List<Factura>list=dao.listar();
                    Iterator<Factura>iter=list.iterator();
                    Factura fac=null;
                    while(iter.hasNext()){
                        fac=iter.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= fac.getIdfac()%></td>
                        <td class="text-center"><%= fac.getEmision()%></td>
                        <td><%= fac.getVencimiento()%></td>
                        <td><%= fac.getIdCli()%></td>
                        <td><%= fac.getIdVen()%></td>
                        <td><%= fac.getIdPed()%></td>
                        <td><%= fac.getImpuestos()%></td>

                        <td class="text-center">
                            <!-- Si quiere puede conservar id como llave para editar y eliminar-->
                            <a class="btn btn-primary" href="ControladorFactura?accion=editar&id=<%= fac.getIdfac()%>">Editar</a>
                            <a class="btn btn-warning" href="ControladorFactura?accion=eliminar&id=<%= fac.getIdfac()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>

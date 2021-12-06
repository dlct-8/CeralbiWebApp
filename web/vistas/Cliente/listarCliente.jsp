
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Cliente</title>
    </head>
    <body>
       <%@include file="../../Template/Templete2.jsp" %>
        <div class="container">
            <h1>Clientes</h1>
            <a class="btn btn-info" href="ControladorCliente?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">APELLIDOS</th>
                        <th class="text-center">TIPO DOCUMENTO</th>
                        <th class="text-center">NUMERO DE DOCUMENTO</th>
                        <th class="text-center">TELEFONO</th>
                        <th class="text-center">CORREO</th>
                        <th class="text-center">DIRECCION</th>
                        
                       
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    ClienteDAO dao=new ClienteDAO();
                    List<Cliente>list=dao.listar();
                    Iterator<Cliente>iter=list.iterator();
                    Cliente cli = null;
                    while(iter.hasNext()){
                        cli=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= cli.getIdCli()%></td>
                        <td class="text-center"><%= cli.getNombres()%></td>
                        <td><%= cli.getApellidos()%></td>
                        <td><%= cli.getIdTipo()%></td>
                        <td><%= cli.getNumerodoc()%></td>
                        <td><%= cli.getTelefono()%></td>
                        <td><%= cli.getCorreo()%></td>
                        <td><%= cli.getDireccion()%></td>
                        
                        
                        <td class="text-center">
                            <!-- Si quiere puede conservar id como llave para editar y eliminar-->
                            <a class="btn btn-primary" href="ControladorCliente?accion=editar&id=<%= cli.getIdCli()%>">Editar</a>
                            <a class="btn btn-warning" href="ControladorCliente?accion=eliminar&id=<%= cli.getIdCli()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>

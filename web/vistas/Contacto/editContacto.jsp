
<%@page import="Modelo.Contacto"%> <!--65-Cambiamos la clase -->
<%@page import="ModeloDAO.ContactoDAO"%><!--66-Cambiamos la claseDAO-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <!--67-Cambiamos la declaracón del objeto-->
              <%
              ContactoDAO dao = new ContactoDAO();// Modificamos
              int id=Integer.parseInt((String)request.getAttribute("idCon"));//Modificamos IdAtr
              Contacto c=(Contacto)dao.list(id);// Modificamos
          %>
            <h1>Modificar Contacto</h1> <!--68-Cambiamos el nombre de la pag-->
            <!--69-Cambiamos nombre del controlador txt-->
            <form action="ControladorContacto">
                <!--70-Cambiamos los campos y el objeto.getAtributo()-->
                
                Nombres: <br>
                <input class="form-control" type="text" name="txtNombres" value="<%= c.getNombres()%>"><br>
                Apellidos: <br>
                <input class="form-control" type="text" name="txtApellidos" value="<%= c.getApellidos()%>"><br>
                Asunto: <br>
                <input class="form-control" type="text" name="txtAsunto" value="<%= c.getAsunto()%>"><br>
                Mensaje: <br>
                <input class="form-control" type="text" name="txtMensaje" value="<%= c.getMensaje()%>"><br>
                
              
                <input type="hidden" name="txtid" value="<%= c.getIdCon()%>"><!--71-Cambiamos el obj.getId()-->
                <input class="button_css_ed" type="submit" name="accion" value="Actualizar"> 
                <!--72-Cambiamos nombre del controlador-->
                <a href="ControladorContacto?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>

<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto)request.getAttribute("miproducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo Registro" : "Editar Registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>">
            <table>
                <tr>
                    <td>Descripción</td>
                    <td><input type="text" name="descripcion" value="<%= item.getDescripcion() %>"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="number" name="cantidad" value="<%= item.getCantidad() %>"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="number" name="precio" step="any" value="<%= item.getPrecio() %>"></td>
                </tr>
                <tr>
                    <td>Categoría</td>
                    <td><input type="text" name="categoria" value="<%= item.getCategoria() %>"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

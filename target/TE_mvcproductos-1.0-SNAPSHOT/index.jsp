<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <div class="contenedor">    
        <table border="1" cellspacing="0">
            <tr>
                <td>
                    <p>PRIMER PARCIAL TEM-742</p>
                    <p>Nombre: Ever Quispe Choquehuanca</p>
                    <p>Carnet: 9955018</p>
                </td>
            </tr>
        </table>
        
        <h1>Listado de Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Registro</a>
        <table border="1" cellspacing="0">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoría</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Producto item : lista) {


            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%=item.getId()%>">Modificar</a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>" 
                       onclick="return confirm('Esta seguro de Eliminar el Registro?');">Eliminar</a></td>
            </tr>
            <%      }
                }
            %>

        </table>
    </div>
    </body>
</html>
<%-- 
    Document   : index.jsp
    Created on : 4 de out. de 2021, 08:55:37
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>border="1" style="width: 580px; height: 100px; margin-left: 28%
       <br>
       Usuarios Conectados:
       <%if(application.getAttribute("cont")!=null){%>
       <%= application.getAttribute("cont") %>
       <%}else{%>
       0
       <%}%>
       <br>
       <%if(nomeusuario!=null){%> 
       <table border="1" style="width: 580px; height: 100px; margin-left: 28%">
           <%if(application.getAttribute("usuariosConect")!=null){%>
            <% NomesUsuarios = (ArrayList) application.getAttribute("usuariosConect");%>
            <tr>
                <%for(int i = 0; i < NomesUsuarios.size(); i++){%>
                <td style="text-align: center"><%= NomesUsuarios.get(i) %></td>
                <%}%>
            </tr>
            <%}%>
       </table>
        <%}else{%>
        <h2 style="color : crimson">É necessário fazer Login para acessar o conteúdo!</h2>
        <%}%>
    </body>
</html>

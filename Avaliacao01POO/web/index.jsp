<%-- 
    Document   : index.jsp
    Created on : 3 de out. de 2021, 22:58:02
    Author     : Larry
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br>
        <h2>Usuários Conectados: <% if(application.getAttribute("cont")!=null){%>
        <%= application.getAttribute("cont") %></h2>
        
        <%}else{%>
        0
        <%}%>
        <% if(nomeusuario!=null){%>
        <table border="1" style="width: 580px; height: 100px; margin-left: 28%; background-color: darkseagreen"">
            <%if(application.getAttribute("usuariosConect")!=null){%>
            <% NomesUsuarios = (ArrayList) application.getAttribute("usuariosConect");%>
            <%for(int i = 0; i < NomesUsuarios.size(); i++){%>
            <tr>
                <td><%= NomesUsuarios.get(i) %></td>
            </tr>
            <%}%>
        </table>
        <%}%>
        <%}else{%>
        <h2 style="color : crimson">É necessário fazer Login para acessar o conteúdo!</h2>
        <%}%>
    </body>
</html>

<%-- 
    Document   : Larissa-dica-megasena.jsp
    Created on : 3 de out. de 2021, 23:00:14
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 2</title>
    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>
       <br>
       <% if(nomeusuario!=null){%>
       <table border="1" style="width: 580px; height: 100px; margin-left: 28%; background-color: darkseagreen">
           <tr>
        <%for(int s = 0; s < 5; s++){%>
            <td style="text-align: center"><%= Vetor[s] %></td>
        <%}%>
           <tr>
       </table>
        <%}else{%>
        <h2 style="color : crimson">É necessário fazer Login para acessar o conteúdo!</h2>
        <%}%>
    </body>
</html>

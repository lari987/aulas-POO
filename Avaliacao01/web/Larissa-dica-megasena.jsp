<%-- 
    Document   : Larissa-dica-megasena.jsp
    Created on : 27 de set. de 2021, 16:07:49
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina 2</title>
    </head>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <body>
        <% if(username!=null){%>
        <br>
        <h2 style="text-align: center">Números Sorteados para <%= username %></h2>
        <table border="1" style="width: 580px; height: 100px; margin-left: 28%; background-color: darkseagreen">
            <tr>
                <% for(int j = 0; j < 5; j++){%>
                <td style="text-align: center"><%= Vetor[j] %></td>
                <%}%> 
            </tr>
        </table>
            <%}else{%>
            <h2 style="color: red">Necessário fazer login para ver o conteudo!</h2>
            <%}%>
    </body>
</html>

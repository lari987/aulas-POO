<%-- 
    Document   : Larissa-dica-megasena
    Created on : 4 de out. de 2021, 09:06:53
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
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br>
          <%if(nomeusuario!=null){%>
          <table border="1" style="width: 580px; height: 100px; margin-left: 28%;">
              <tr>
         <%for(int k = 0; k < 6; k++){%>
            <td style="text-align: center"><%= Vetor[k] %></td>
            <%}%>
              </tr>
          </table>
           <%}else{%>
            <h2 style="color: crimson">Necessário fazer login para ver o conteudo!</h2>
            <%}%>
    </body>
</html>

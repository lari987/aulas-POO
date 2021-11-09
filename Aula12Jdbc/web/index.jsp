<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 16:39:56
    Author     : Larry
--%>


<%@page import="db.Tasks"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - To-do list</title>
    </head>
    <body>
        <h1>Larissa - JDBC</h1>
        <h2>To-do List</h2>
        <%if(DbListener.exception!=null){%>
        <div style="color:red">
            Erro na criação do banco de dados:
            <%= DbListener.exception.getMessage() %>
        </div>
        <%}%>
        <table>
            <%for(String task: Tasks.getTasks()){%>
            <td><%= task %></td>
            <%}%>
        </table>
    </body>
</html>

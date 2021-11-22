<%-- 
    Document   : users
    Created on : 22 de nov. de 2021, 14:46:00
    Author     : Larry
--%>

<%@page import="db.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String requestError = null;
    ArrayList<User> users = new ArrayList<>();
    try{
        users = User.getUsers();
    }catch(Exception ex){
        requestError = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio - MyFinance$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Usuarios</h1>
        <%if(requestError!=null){%>
        <div style="color: red"><%= requestError %></div>
        <%}%>
        <%for(User user: users){%>
        <div><%= user.getLogin() %></div>
        <%}%>
    </body>
</html>

<%-- 
    Document   : index.jsp
    Created on : 20 de set. de 2021, 17:06:05
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
      int[] vetor = new int [6];
      
      
      if(request.getParameter("login")!=null){
      String UserName = request.getParameter("username");
      session.setAttribute("username", UserName);
      response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("logout")!=null){
       session.removeAttribute("username");
       response.sendRedirect(request.getRequestURI());
    }
    String nomeusuario = (String) session.getAttribute("username");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <form>
            <br>
            <%if(session.getAttribute("username")==null){%>
            Nome: <input type="text" name="username"/>
            Senha: <input type="number" name="password"/>
            <input type="submit" name="login" value="LOGIN"/>
            <%}else{%>
            Bem Vindo, <%= nomeusuario %>
             <input type="submit" name="logout" value="LOGOUT"/>
            <%}%>
        </form>
        <br>
        <% if(session.getAttribute("username")!=null){%>
        <table border="1">
            <tr>
                <th>Número</th>
            </tr>
            <%for(int i = 0; i < 6; i++) {%>
            <tr>
                <% vetor[i] = ((int)(100*Math.random())); %>
                <td><%= vetor[i] %></td>
            </tr>
            <%}%>
        </table>
        <%}%>
        <hr/>
    </body>
</html>

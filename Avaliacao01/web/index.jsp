<%-- 
    Document   : index.jsp
    Created on : 27 de set. de 2021, 16:01:19
    Author     : Larry
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Inicio</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
                
        Usuários online na Aplicação:
       <%if(application.getAttribute("cont") != null){ %>
       <%=application.getAttribute("cont")%>
       <%}else{%>
        0
       <%}%>
       
       <%if(username!=null){%>
       <table>
           
           <th>ID</th>
           <th>Onlines no momento</th>
           
           <%if(application.getAttribute("usuariosConect") != null){
               NomesUsuarios = (ArrayList) application.getAttribute("usuariosConect");
           for(int i=0; i< NomesUsuarios.size(); i++){
                %> 
           <tr> 
               <td><%=i+1%></td>
               <td><%= NomesUsuarios.get(i)%></td>
           </tr>
           <%}%>
       </table>
       <%}%>
       <%}else{%>
            <h2 style="color: red">Necessário fazer login para ver o conteudo!</h2>
            <%}%>
    </body>
</html>

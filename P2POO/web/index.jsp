<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 15:16:05
    Author     : Larry
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
    if (request.getParameter("add")!=null){
      String taskName = request.getParameter("taskName");
      Tasks.addTask(taskName);//nome da classe, metodo para add a string taskName.
      response.sendRedirect(request.getRequestURI());
      }
      if (request.getParameter("remove")!=null){
      String taskName = request.getParameter("taskName");
      Tasks.removeTask(taskName);
      response.sendRedirect(request.getRequestURI());
      }
      taskList = Tasks.getTasks();
    }catch(Exception ex){
      requestException = ex;
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Inicio</h1>
        <% if(session.getAttribute("username")!=null){%>
        <%if(requestException!=null){%>
        <div style="color:red">
            Erro na leitura ou criação de tarefas:
            <%= requestException.getMessage() %>
        </div>
        <%}%>
        <hr/>
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <br>
        <table border="1">
            <tr>
                <th>Nome da Tarefa</th>
                <th>Nome do Usuario</th>
                <th>ID do Usuario</th>
            </tr>
            <%for(String taskName: Tasks.getTasks()){%>
            <tr>
            <td><%= taskName %></td>
            <td><%= session.getAttribute("username") %></td>
            <td><%= session.getAttribute("id") %></td>
            <td>
                <form>
                    <input type="hidden" name="taskName" value="<%= taskName %>"/>
                    <input type="submit" name="remove" value="Remover"/>
                </form>
            </td>
            </tr>
            <%}%>
        </table>
        <%}else{%>
        <h2 style="color: red">Voce não tem permissão para ver o conteúdo!</h2>
        <%}%>
    </body>
</html>

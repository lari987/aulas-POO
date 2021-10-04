<%-- 
    Document   : index.jsp
    Created on : 30 de set. de 2021, 18:13:04
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   int counter = 0;
   if(application.getAttribute("counter")==null){//counter não é um atributo de aplicação vai virar agora!
      application.setAttribute("counter", counter);//salvei ele na aplicação
    }
    counter = (int) application.getAttribute("counter");//le o counter como ja sendo um atributo de aplicação
    ++counter;
    application.setAttribute("counter", counter);
    
   String context = request.getParameter("context"); //ele le o que foi salvo no context e guarda nessa var
   String name = request.getParameter("name");//ele le oq foi salvo no name atraves do parametro
   int sessionCounter = 1;
   
   if(request.getParameter("enviar")!=null){
     
     if(context.equals("request"))
      request.setAttribute("name", name); 
      
    else if(context.equals("session")){
      session.setAttribute("name", name);//grava o nome na sessão se o context cair na sessao
      session.setAttribute("counter", sessionCounter);//gravando na sessão o counter
       
    }else if(context.equals("application"))
      application.setAttribute("name", name);
  
    }else{
       if(session.getAttribute("counter")!=null){
       sessionCounter = (int) session.getAttribute("counter");//lendo na sessão
       ++sessionCounter;
       session.setAttribute("counter", sessionCounter);
      }
    }
   
   String requestName = null; 
   String sessionName = null; 
   String applicationName = null; 
   String error = null;
   try{
       if(request.getAttribute("name")!=null){ //tem um atributo salvo na requisição?
   //leitura do atributo nome requisição
         requestName = (String) request.getAttribute("name");
        }
    }catch(Exception ex){error = ex.getMessage();}
    try{
       if(session.getAttribute("name")!=null){ //tem um atributo salvo na sessão??
   //leitura do atributo nome na sessão
         sessionName = (String) session.getAttribute("name");//ele salva o nome na sessão
        }
    }catch(Exception ex){error = ex.getMessage();}
    try{
       if(application.getAttribute("name")!=null){
   //leitura do atributo nome no contexto
         applicationName = (String) application.getAttribute("name");
         }
    }catch(Exception ex){error = ex.getMessage();}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ContextApp</title>
    </head>
    <body>
        <h1>ContextApp</h1>
        <h2>Índice</h2>
    <form>
        Contexto:
        <select name="context">
            <option value="session">Sessão</option>
            <option value="request">Requisição</option>
            <option value="application">Aplicação</option>
        </select>
        Nome: <input type="text" name="name"/>
        <input type="submit" name="enviar" value="enviar"/>
    </form>
        </hr>
        <h2>Requisições feitas na aplicação: <%= counter %></h2>
        
        <% if(requestName!=null){%>
        <hr/>
        <h3>Atributo de Requisição</h3>
        <h3><%= requestName %></h3>
        <%}%>
        <% if(sessionName!=null){%>
        <hr/>
        <h3>Atributo de Sessão</h3>
        <h3><%= sessionName %></h3>
        <h3>Requisições de Sessão:<%= sessionCounter %></h3>
        <%}%>
        <% if(applicationName!=null){%>
        <hr/>
        <h3>Aplicação</h3>
        <h3><%= applicationName %></h3>
        <%}%>
    </body>
</html>

<%-- 
    Document   : Calendario
    Created on : 3 de set. de 2021, 10:59:50
    Author     : Larry
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String errorMessage = null;
    int dia = 0, mes = 0, ano = 0;

    try{
     mes = Integer.parseInt(request.getParameter("mes"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro mes";
    }
    try{
     ano = Integer.parseInt(request.getParameter("ano"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro ano";
    }
%>
<html style="background-color: powderblue">
    <head>
        <title>JSP - Calendário</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            
        </style>
    </head>
    <body>
        <h3><a href="index.html">Voltar</a></h3>
        <br>
        <%
        int bissexto = 0;  
        
        if( ( (ano % 4 == 0) && (ano % 100 != 0) ) || (ano % 400 == 0) ){
          bissexto = 1;
        }
		
        else{
    	 bissexto = 0;
        }
        
        Calendar c = Calendar.getInstance();
        c.set(Calendar.YEAR, ano);
        c.set(Calendar.MONTH, mes-1);
        c.set(Calendar.DAY_OF_MONTH, 1);
        int diaDaSemana = c.get(Calendar.DAY_OF_WEEK);
        
        int[] tamanhoDoMes = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        String[] meses = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
            
        
        if (bissexto == 1){
           tamanhoDoMes[1] = 29;
        }
        int[][] matriz = new int[6][7];
        int num = 0;
        
        int linha = 0; 
        for(int coluna = 0; coluna < 7; coluna++){
        if (coluna < diaDaSemana-1){
              matriz[linha][coluna] = 0;
        }
        else{
            ++num;
             matriz[linha][coluna] = num;
            }
        }
    
    int cont = num;
       for(int i = 1; i < 6; i++){
        for(int j = 0; j < 7; j++){
        
            ++cont;
            matriz[i][j] = cont;
            
            if (cont > tamanhoDoMes[mes - 1]){
            matriz[i][j] = 0;
            }
        }
    }
      
      String vazio = "";
       %>
       
       <h2 style=" margin-left: 28%; text-align: center; background-color: azure; width: 580px; height: 30px"><%= meses[mes-1] %>/<%= ano %></h2>
       <table style="background-color: powderblue; width: 580px; height: 300px; margin-left: 28%">
           
           <tr>
               <th>Dom</th>
               <th>Seg</th>
               <th>Ter</th>
               <th>Qua</th>
               <th>Qui</th>
               <th>Sex</th>
               <th>Sáb</th>
           </tr>
           <%for(int k = 0; k < 6; k++){%>
           <tr>
               <%for(int v = 0; v < 7; v++){%>
               
                <%if(matriz[k][v] == 0){%>
                <td><%= vazio %></td>
                <%}else{%>
                <td style="text-align: center"><%= matriz[k][v] %></td>
                <%}%>
               
                <%}%>
           </tr>
           <%}%>
       </table> 
    </body>
</html>
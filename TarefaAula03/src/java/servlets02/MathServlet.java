/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets02;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Larry
 */
@WebServlet(name = "MathServlet", urlPatterns = {"/math.html"})
public class MathServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MathServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h4><a href='index.html'>Voltar</a></h4><br>");
            out.println("<h3>Resultado da Operação:</h3>");
           
            int opcao = 0;
            double n1, n2 = 0;
            try{
                opcao = Integer.parseInt(request.getParameter("opcao"));
                n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
                
                switch(opcao){
                    
                    case 1: 
                        out.println("<h4>"+n1+" + "+n2+" = "+(n1+n2)+"</h4>");
                        break;
                    case 2:
                        out.println("<h4>"+n1+" - "+n2+" = "+(n1-n2)+"</h4>");
                        break;
                    case 3:
                        out.println("<h4>"+n1+" x "+n2+" = "+(n1*n2)+"</h4>");
                        break;
                    case 4: 
                        out.println("<h4>"+n1+" / "+n2+" = "+(n1/n2)+"</h4>");
                        break;
                    default:
                       out.println("<h4 style='color:red'>Opção não encontrada!!!</h4>");
                        break;
                }
                
            }catch(Exception ex){
                out.println("<p style='color:red'>Erro em ler parametros: "+ex.getMessage()+"</p>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

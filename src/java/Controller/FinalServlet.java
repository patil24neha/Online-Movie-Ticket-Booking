/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import MyBean.Ticket;
import Model.FinalMasterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class FinalServlet extends HttpServlet
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);
        if(session==null)
         response.sendRedirect("Login.jsp");
        else if(session.getAttribute("user")==null)
        response.sendRedirect("Login.jsp");
        else
        {

       List<Ticket> addlist=new ArrayList<Ticket>();

      FinalMasterDAO mdao=new FinalMasterDAO();

     addlist=mdao.getFinalInfo();
     request.setAttribute("Final",addlist);
     RequestDispatcher view=request.getRequestDispatcher("final.jsp");
     view.forward(request, response);
        try
        {

        }
        finally
        {
            out.close();
        }
        }
    }
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

 /**
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    // </editor-fold>

}

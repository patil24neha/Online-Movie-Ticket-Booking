/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.SeatInfo;
import MyBean.Seat;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Neha
 */
@WebServlet(name="BookTicketController", urlPatterns={"/BookTicketController"})
public class BookTicketController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        try {
            String muvi = request.getParameter("mname");
            String time = request.getParameter("time");
            String day = request.getParameter("day");
            String date = request.getParameter("mdate");
            System.out.println("********B4 book" +muvi+" "+time+" "+day);
           SeatInfo info = new SeatInfo();
		ArrayList<Seat> seats = info.getSeats();
		System.out.println(seats.size());
		request.setAttribute("seats", seats);
                request.setAttribute("muvi", muvi);
                request.setAttribute("time", time);
                request.setAttribute("day", day);
                request.setAttribute("mdate", date);
		RequestDispatcher rd = request.getRequestDispatcher("showSeats.jsp");
		rd.forward(request, response);
        } finally {
            out.close();
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

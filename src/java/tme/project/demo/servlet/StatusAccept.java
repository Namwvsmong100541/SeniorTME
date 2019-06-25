/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tme.project.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tme.project.demo.model.Ticket;

/**
 *
 * @author LENOVO
 */
public class StatusAccept extends HttpServlet {

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
        String target = "/StatusAccept.jsp";
        String code = "";
        String alert = "";
        String ticket_message = "";
        String ticket_status = request.getParameter("status");
        String ticket_id = request.getParameter("id");
        HttpSession session = request.getSession(false);
        String position = (String) session.getAttribute("member_position");

        if (session != null) {
            if (session.getAttribute("member_id") != null && session.getAttribute("isLoged").equals("yes")) {
                if (position.equals("1")) {
                    if (ticket_id != null && ticket_status != null) {
                        if (Ticket.update(Integer.parseInt(request.getParameter("id")), 
                                Integer.parseInt(request.getParameter("status")))) {
                            ticket_message = "Update complete!";
                            code = "success";
                            alert = "Success!";
                        } else {
                            ticket_message = "Update incomplete!";
                            code = "warning";
                            alert = "Warning!";
                        }
                    }
                } else {
                    code = "Error";
                    alert = "Error!";
                    ticket_message = "Wrong Position.";
                    target = "/ListTickets.jsp";
                }

            } else {
                code = "Error";
                alert = "Error!";
                ticket_message = "Re-Login Pleased.";
                target = "/Login.jsp";
            }
        } else {
            code = "Error";
            alert = "Error!";
            ticket_message = "Re-Login Pleased.";
        }

        request.setAttribute("message", ticket_message);
        request.setAttribute("code", code);
        request.setAttribute("alert", alert);
        List<Ticket> tickets = Ticket.getAllTickets();
        request.setAttribute("tickets", tickets);

        getServletContext().getRequestDispatcher(target).forward(request, response);
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

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
import tme.project.demo.datasource.PasswordUtil;
import tme.project.demo.model.Member;
import tme.project.demo.model.Ticket;

/**
 *
 * @author Antonymz
 */
public class Register extends HttpServlet {

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
        String target = "/Register.jsp";
        String code = null;
        String alert = null;
        String message = null;
        if (request.getParameter("submit") != null) {
            try {
                String name = request.getParameter("name");
                String surname = request.getParameter("surname");
                long student_ID = Long.parseLong(request.getParameter("student_ID"));
                String gender = request.getParameter("gender");
                String faculty = request.getParameter("faculty");
                String email = request.getParameter("email");
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String rePassword = request.getParameter("repassword");
                if (password.equals(rePassword)) {
                    password = PasswordUtil.getKeepPassword(password);
                    Member mb = new Member(name, surname, student_ID, gender, faculty, email, username, password, 0);
                    if (mb.addMember()) {
                     //   EmailUtil.sendRegister(mb);
                        code = "success";
                        alert = "Register complete!";
                        message = "Please log in now...";
                    } else {
                        code = "success";
                        alert = "Success!";
                        message = "Username , StudentId or e-mail is USED!.";
                    }
                    target = "/login.jsp";
                } else {
                    code = "warning";
                    alert = "Warning!";
                    message = "Password didn't match...";
                }
            } catch (Exception ex) {
                System.out.println("Catch ex regis: " + ex);
            }

            request.setAttribute("code", code);
            request.setAttribute("alert", alert);
            request.setAttribute("message", message);
        }

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

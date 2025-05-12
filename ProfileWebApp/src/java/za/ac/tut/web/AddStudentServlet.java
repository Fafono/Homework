/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.InputStream;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author Sakhumzi
 */
@MultipartConfig
public class AddStudentServlet extends HttpServlet {
    @EJB
    private StudentFacadeLocal sfl;

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
        Part part = request.getPart("picture");
        byte[] profilePic = getImageBytes(part);
        String name = (String)request.getParameter("name");
        String surname = (String)request.getParameter("surname");
        Integer age = Integer.valueOf(request.getParameter("age"));
        Double marks = Double.valueOf(request.getParameter("marks"));
        char gender = (char)request.getParameter("gender").charAt(0);
        Long studNum = Long.valueOf(request.getParameter("studentNumber"));
        
        Student stud = createStudent(studNum, name, surname, age, marks, profilePic, gender);
        sfl.create(stud);
        request.setAttribute("student", stud);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_student_outcome.jsp");
        disp.forward(request, response);
    }
    
    private Student createStudent(Long studNum, String name, String surname, Integer age, Double marks, byte[] pic,char gender){
        Student s = new Student();
        s.setAge(age);
        s.setId(studNum);
        s.setGender(gender);
        s.setId(studNum);
        s.setName(name);
        s.setSurname(surname);
        s.setPercMarkObtained(marks);
        s.setProfile(pic);
        return s;
    }
    
    private byte[] getImageBytes(Part part) throws IOException {
        InputStream is = part.getInputStream();
        byte[] buffer = new byte[is.available()];
        is.read(buffer);
        return buffer;
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

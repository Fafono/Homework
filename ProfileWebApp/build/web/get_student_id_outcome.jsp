<%-- 
    Document   : get_student_id_outcome
    Created on : 23 Apr 2025, 19:44:17
    Author     : Sakhumzi
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student ID Outcome Page</title>
    </head>
    <body>
        <h1>Get student using ID outcome</h1>
        <%
            Student student = (Student)request.getAttribute("student");
            byte[] pic = student.getProfile();
            String profilePic = "data:image/*;base64," + Base64.getEncoder().encodeToString(pic);
        %>
        <table>
            <tr>
                <td></td>
                <td>
                    <img src="<%=profilePic%>" width="100" height="100" alt="Profile Picture"/>
                </td>
            </tr>
            <tr>
                <td>Student number: </td>
                <td><%=student.getId()%></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><%=student.getName()%></td>
            </tr>
            <tr>
                <td>Surname: </td>
                <td><%=student.getSurname()%></td>
            </tr>
            <tr>
                <td>Age: </td>
                <td><%=student.getAge()%></td>
            </tr>
            <tr>
                <td>Gender: </td>
                <td><%=student.getGender()%></td>
            </tr>
            <tr>
                <td>Marks</td>
                <td><%=student.getPercMarkObtained()%></td>
            </tr>
        </table>
        <p>
            Please click <a href="menu.jsp">here</a> to return to menu or <a href="index.html">here</a>
            to return main page.
        </p>
    </body>
</html>

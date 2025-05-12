<%-- 
    Document   : get_student_using_age_outcome
    Created on : 23 Apr 2025, 20:39:13
    Author     : Sakhumzi
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using Age Page</title>
    </head>
    <body>
        <h1>Get student using age outcome</h1>
        <%
            List<Student> list = (List<Student>)request.getAttribute("list");
        %>
        <p>
            Students list
        </p>
        <table>
            <%
                for(Student s: list){
                    byte[] pic = s.getProfile();
                    String profilePic = "data:image/*;base64," + Base64.getEncoder().encodeToString(pic);
                    Long id = s.getId();
                    String name = s.getName();
                    String surname = s.getSurname();
                    Integer age = s.getAge();
                    char gender = s.getGender();
                    Double marks = s.getPercMarkObtained();
                    %>
                    <tr>
                        <td>
                            <img src="<%=profilePic%>" width="100" height="100" alt="Profile Picture"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Student number: </td>
                        <td><%=id%></td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td><%=name%></td>
                    </tr>
                    <tr>
                        <td>Surname: </td>
                        <td><%=surname%></td>
                    </tr>
                    <tr>
                        <td>Age: </td>
                        <td><%=age%></td>
                    </tr>
                    <tr>
                        <td>Gender: </td>
                        <td><%=gender%></td>
                    </tr>
                    <tr>
                        <td>Marks: </td>
                        <td><%=marks%></td>
                    </tr>
                    <%
                }
            %>
        </table>
        <p>
            Please click <a href="menu.jsp">here</a> to return to menu or <a href="index.html">here</a>
            to return main page.
        </p>
    </body>
</html>

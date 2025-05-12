<%-- 
    Document   : get_statistic_outcome
    Created on : 23 Apr 2025, 18:50:50
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
        <title>Get Statistics Outcome Page</title>
    </head>
    <body>
        <h1>Get statistics outcome</h1>
        <%
            List<Student> list = (List<Student>)request.getAttribute("student");
            Integer cnt = (Integer)request.getAttribute("cnt");
            Double lowestMark = (Double)request.getAttribute("lowestMark");
            Double highestMark = (Double)request.getAttribute("highestMark");
            Double avgMark = (Double)request.getAttribute("avgMark");
            Long cntPassed = (Long)request.getAttribute("cntPassed");
            Long cntFailed = (Long)request.getAttribute("cntFailed");
            Long cntMales = (Long)request.getAttribute("cntMales");
            Long cntFemale = (Long)request.getAttribute("cntFemale");
            Long cntMalePassed = (Long)request.getAttribute("cntMalePassed");
            Long cntFemalePassed = (Long)request.getAttribute("cntFemalePassed");
            Long cntMaleFailed = (Long)request.getAttribute("cntMaleFailed");
            Long cntFemaleFailed = (Long)request.getAttribute("cntFemaleFailed");
        %>
        <table>
            <tr>
                <td>Number of students who wrote the test: </td>
                <td><%=cnt%></td>
            </tr>
            <tr>
                <td>Number of students that passed: </td>
                <td><%=cntPassed%></td>
            </tr>
            <tr>
                <td>Number of students that failed: </td>
                <td><%=cntFailed%></td>
            </tr>
            <tr>
                <td>Number of male students: </td>
                <td><%=cntMales%></td>
            </tr>
            <tr>
                <td>Number of female students: </td>
                <td><%=cntFemale%></td>
            </tr>
            <tr>
                <td>Number of male students that passed: </td>
                <td><%=cntMalePassed%></td>
            </tr>
            <tr>
                <td>Number of female students that passed: </td>
                <td><%=cntFemalePassed%></td>
            </tr>
            <tr>
                <td>Number of male students that failed: </td>
                <td><%=cntMaleFailed%></td>
            </tr>
            <tr>
                <td>Number of female students that failed: </td>
                <td><%=cntFemaleFailed%></td>
            </tr>
            <tr>
                <td>Highest mark: </td>
                <td><%=highestMark%></td>
            </tr>
            <tr>
                <td>Lowest mark: </td>
                <td><%=lowestMark%></td>
            </tr>
            <tr>
                <td>Average mark: </td>
                <td><%=avgMark%></td>
            </tr>
        </table>
        <p>
            Below is the class list:
        </p>
        <table>
            <%
                for(int i =0; i < list.size(); i++){
                    Student s = list.get(i);
                    Long id = s.getId();
                    String name = s.getName();
                    String surname = s.getSurname();
                    Integer age = s.getAge();
                    Double marks = s.getPercMarkObtained();
                    char gender = s.getGender();
                    byte[] pics = s.getProfile();
                    String profilePicture = "data:image/*;base64," + Base64.getEncoder().encodeToString(pics);
                    %>
                    <tr>
                        <td>
                            <img src="<%=profilePicture%>" width="100" height="100" alt="Profile picture"/>
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

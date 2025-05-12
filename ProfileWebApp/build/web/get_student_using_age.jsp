<%-- 
    Document   : get_student_using_age
    Created on : 23 Apr 2025, 20:26:55
    Author     : Sakhumzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using Age Page</title>
    </head>
    <body>
        <h1>Get student using age</h1>
        <p>
            Please enter the age range of students.
        </p>
        <form action="GetStudentUsingAgeServlet.do" method="POST">
            <table>
                <tr>
                    <td>First age: </td>
                    <td><input type="text" name="firstAge"/></td>
                </tr>
                <tr>
                    <td>Second age: </td>
                    <td><input type="text" name="secondAge"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET STUDENT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>

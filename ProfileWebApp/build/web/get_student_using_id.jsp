<%-- 
    Document   : get_student_using_id
    Created on : 23 Apr 2025, 19:27:34
    Author     : Sakhumzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using ID Page</title>
    </head>
    <body>
        <h1>Get student using ID</h1>
        <p>
            Please enter the student number of the student.
        </p>
        <form action="GetStudentIDServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student number: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET STUDENT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>

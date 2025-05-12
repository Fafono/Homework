<%-- 
    Document   : get_student_using_name_surname
    Created on : 23 Apr 2025, 19:58:09
    Author     : Sakhumzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Student Using Name And Surname Page</title>
    </head>
    <body>
        <h1>Get student using name and surname</h1>
        <p>
            Please enter the name and surname of the student.
        </p>
        <form action="GetStudentUsingNameSurnameServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Surname: </td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET STUDENT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>

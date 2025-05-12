<%-- 
    Document   : add_student
    Created on : 23 Apr 2025, 17:49:33
    Author     : Sakhumzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add student</h1>
        <p>
            Please enter the details of the student below.
        </p>
        <form action="AddStudentServlet.do" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>Student number: </td>
                    <td><input type="text" name="studentNumber"/></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Surname: </td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <select name="gender">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Age: </td>
                    <td><input type="text" name="age"/></td>
                </tr>
                <tr>
                    <td>Marks: </td>
                    <td><input type="text" name="marks"/></td>
                </tr>
                <tr>
                    <td>Image:</td>
                    <td><input type="file" name="picture" accept="image/*"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD STUDENT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>

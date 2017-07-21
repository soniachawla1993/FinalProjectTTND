<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/17/2017
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
    <h1>Sending e-mail</h1>
    <form method="post" action="/forgotpassword">
        <table border="0" width="80%">
            <tr>
                <td>Enter your username:</td>
                <td><input type="text" name="username" size="65" /></td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Send E-mail" />
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>

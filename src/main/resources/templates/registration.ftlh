<!DOCTYPE html>
<html>
<head>
    <title>PROGKURSES</title>
</head>
<body>
<h1>PROGKURSES</h1><hr>
<h4>Registration</h4>
<form action="/registration" method="post">
    User name:<input type="text" name="UserName"><br><br>
    Email:<input type="email" name="email"><br><br>
    Phone number:<input type="text" name="PhoneNumber"><br><br>
    Password:<input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" name="Sign in"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>

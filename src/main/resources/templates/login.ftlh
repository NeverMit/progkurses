<!DOCTYPE html>
<html>
<head>
    <title>PROGKURSES</title>
</head>
<body>
<h1>PROGKURSES</h1><hr>
<h4>Authorisation</h4>
<form action="/login" method="post">
    Email:<input type="email" name="username"><br><br>
    Password:<input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" name="Sign up"/>
</form>
<a href="/registration">Register</a>
</body>
</html>


<!DOCTYPE html>
<html>
<head>
    <title>PROGKURSES</title>
</head>
<body>
<h1>PROGKURSES</h1><hr>
<h4>Detailed information about the course</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Course name: </b>${product.title}<br>
<b>Course description: </b>${product.description}<br>
<b>Course price: </b>${product.price}<br>
<b>Course teacher: </b>${product.teacherName}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete"/>
</form>
</body>
</html>
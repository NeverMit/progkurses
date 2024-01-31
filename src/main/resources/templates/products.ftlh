<!DOCTYPE html>
<html>
<head>
    <title>PROGKURSES</title>
</head>
<body>
<h1>PROGKURSES</h1>
<hr>
<h4>Programming courses</h4>
<form action="/" method="get">
    Search by name:<input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b>
            ${product.price} rub/month. | <a href="/product/${product.id}">More...</a>
        </p>
    </div>
    <#else>
    <h3>No courses</h3>
</#list>
<hr>
<h3>Create new course</h3>
<form action="/product/create" method="post">
    Course name:<input type="text" name="title"/><br><br>
    Course description:<input type="text" name="description"/><br><br>
    Course price:<input type="number" name="price"/><br><br>
    Course teacher:<input type="text" name="teacherName"/><br><br>
    <input type="submit" value="Add course"/>
</form>
</body>
</html>
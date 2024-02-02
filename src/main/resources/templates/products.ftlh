<!DOCTYPE html>
<html>
<head>
    <title>PROGKURSES</title>
</head>
<body>
<h1>PROGKURSES</h1><hr>
<#if user.email??>
    <h3>User name:<i>${user.email}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" name="Sign out"/>
    </form>
<#else>
    <a href="/login">Enter</a></h1>
</#if>
<hr>
<h4>Programming courses</h4>
<form action="/" method="get">
    Search by name:<input type="text" name="title">
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
<#if user.email??>
    <hr>
    <h3>Create new course</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Course name:<input type="text" name="title"/><br><br>
        Course description:<input type="text" name="description"/><br><br>
        Course price:<input type="number" name="price"/><br><br>
        First photo:<input type="file" name="file1"><br><br>
        Second photo:<input type="file" name="file2"><br><br>
        Third photo:<input type="file" name="file3"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add course"/>
    </form>
</#if>
</body>
</html>
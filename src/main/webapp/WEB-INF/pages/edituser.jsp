<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <include:head-include/>
</head>
<body>
<include:main-navbar/>

<div class="row">
    <div class="col-md-3 col-md-offset-4">
        <div class="well well-lg">
            <form name="user" action="${pageContext.request.contextPath}/list/save" method="post">
                <p>Name:</p>
                <input name="id" type="hidden" value="${user.id}"/>
                <input name="name" type="text" value="${user.name}" placeholder="user name"/><br>

                <p>Login:</p>
                <input name="secondName" type="text" value="${user.secondName}"/><br>

                <p>Password:</p>
                <input name="password" type="text" value="${user.password}"/><br>

                <p>Email:</p>
                <input name="email" type="text" value="${user.email}"/><br>

                <p></p>
                <input type="submit" class="btn btn-primary" value="Update">
            </form>
        </div>

    </div>
</div>
</div>
</body>
</html>

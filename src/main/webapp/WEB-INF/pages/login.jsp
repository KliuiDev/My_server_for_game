<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <form name="login" action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
                <br>

                <p>Login:</p>
                <input id="j_username" name="j_username" type="text"/>
                <br>

                <p>Password:</p>
                <input id="j_password" name="j_password" type="password"/><br>
                <br><input type="submit" class="btn btn-default" value="Submit">
                <a class="navbar-right" href="${pageContext.request.contextPath}/registration.htm">Register</a>
            </form>
        </div>
    </div>
</div>
</div>

<div id="login-error">${error}</div>

</body>
</html>

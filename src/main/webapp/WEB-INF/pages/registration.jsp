<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <include:head-include/>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <include:main-navbar/>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 col-md-offset-4">
            <div class="well well-lg">
                <h1>Registration</h1>

                <form name="dd" action="${pageContext.request.contextPath}/registration/save.htm" method="get">
                    <br>

                    <p>Name:</p>
                    <input name="firstname" type="text" placeholder="${exeptionname}" value="${valuename}"/>
                    <br>

                    <p>Login: </p>
                    <input name="secondName" type="text" placeholder="${exeptionlogin}" value="${valuelogin}"/>
                    <br>

                    <p>Password:</p>
                    <input name="password" type="text" placeholder="${exeptionpassword}" value="${valuepassword}"/>
                    <br>

                    <p>Email: </p>
                    <input name="email" type="text" placeholder="${exeptionemail}" value="${valueemail}"/><br>

                    <br><input type="submit" class="btn btn-primary" value="OK">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
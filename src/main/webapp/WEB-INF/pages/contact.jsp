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
            <form>
                <br><img alt="Kliui Andrey" type="img" src="${pageContext.request.contextPath}/img/myphoto.jpg" width="240"
                         height="500">
                <br>
                <br>

                <p>Developer: Kliui Andrey</p>
                <br>

                <p>Location: Ukraine, Kharkiv.</p>
                <br>

                <p>E-Mail: andreuklui@mail.ru</p>
                <br>

                <p>Skype: andreu.k.xarkov</p>
            </form>
        </div>
    </div>
</div>
</div>

<div id="login-error">${error}</div>

</body>
</html>
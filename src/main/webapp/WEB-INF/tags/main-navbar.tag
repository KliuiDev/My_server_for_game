<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div>


    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/game.htm">Game</a>
        <sec:authorize ifAnyGranted="ROLE_ADMIN">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/list">ListAdmin</a>
        </sec:authorize>

        <a class="navbar-brand" href="${pageContext.request.contextPath}/listscore">Records</a>
        <a class="navbar-brand" href="${pageContext.request.contextPath}/contact.htm">Contacts</a>

        <div>
            <sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
                <a class="btn btn-warning btn-lg navbar-right"
                   href="${pageContext.request.contextPath}/login.htm">login</a>
            </sec:authorize>
            <sec:authorize ifNotGranted="ROLE_ANONYMOUS">
                <a class="btn btn-warning btn-lg navbar-right"
                   href="${pageContext.request.contextPath}/logout">logout</a>
            </sec:authorize>
        </div>
    </nav>
</div>


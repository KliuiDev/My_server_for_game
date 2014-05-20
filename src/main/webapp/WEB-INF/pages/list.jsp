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
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-info">
            <form name="list" action="${pageContext.request.contextPath}/andry/list" method="get">
                <c:if test="${not empty people}">
                    <table class="table table-bordered">
                        <th width="10%">Id</th>
                        <th width="15%">name</th>
                        <th width="10%">login</th>
                        <th width="10%">password</th>
                        <th width="10%">Score</th>
                        <th width="10%">Email</th>
                        <th width="10%">action</th>
                        <c:forEach var="user" items="${people}">
                            <tr>
                                <td class="active">${not empty user.id ? user.id : 'null'} </td>
                                <td class="active">${not empty user.name ? user.name : 'null'}</td>
                                <td class="active">${not empty user.secondName ? user.secondName : 'null'}</td>
                                <td class="active">${not empty user.password ? user.password : 'null'}</td>
                                <td class="active">${not empty user.score ? user.score : 'null'}</td>
                                <td class="active">${not empty user.email? user.email : 'null'}</td>
                                <td class="active"><a class="btn btn-danger btn-xs btn-block"
                                                      href="${pageContext.request.contextPath}/list/delete/${user.id}">Delete</a>
                                    <a class="btn btn-success btn-xs btn-block"
                                       href="${pageContext.request.contextPath}/list/edit/${user.id}">Edit</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
            </form>
        </div>
    </div>
</div>

</form>

</body>
</html>

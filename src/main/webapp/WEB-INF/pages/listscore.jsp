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
            <form name="list" action="${pageContext.request.contextPath}/andry/listscore" method="get">
                <c:if test="${not empty people}">
                    <table class="table table-bordered">
                        <th width="10%">id</th>
                        <th width="15%">name</th>
                        <th width="10%">Score</th>
                        <c:forEach var="user" items="${people}" varStatus="number">
                            <tr>
                                <td class="active">${number.index+1} </td>
                                <td class="active">${not empty user.name ? user.name : 'null'}</td>
                                <td class="active">${not empty user.score ? user.score : 'null'}</td>
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

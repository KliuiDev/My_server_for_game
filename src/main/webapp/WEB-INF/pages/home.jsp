<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="include" tagdir="/WEB-INF/tags" %>

<html>
<head>

    <include:head-home-include/>
    <script type="text/javascript">
        var global = {
            contextPath: "${pageContext.request.contextPath}"
        };
        jQuery(document).on("ready", function () {
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/game/load",
                dataType: "text"
            }).success(function (data) {
                jQuery(".best-container").first().text(data);
            });
        });

    </script>

</head>
<body data-twttr-rendered="true">
<include:main-navbar/>

<div class="container">

    <div class="heading">
        <h1 class="title">2048</h1>

        <div class="scores-container">
            <div class="score-container">
                <div class="score-addition"></div>
            </div>
            <div class="best-container"></div>
        </div>
    </div>

    <div class="above-game">
        <p class="game-intro">
            Join the numbers and get to the
            <strong>2048 tile!</strong>
        </p>
        <a class="restart-button">New Game</a>
    </div>

    <div class="game-container">
        <div class="game-message">
            <p>Game over!</p>
            <div class="lower">
                <a class="keep-playing-button">Keep going</a>
                <a class="retry-button">Try again</a>

                <div class="score-sharing"></div>
            </div>
        </div>

        <div class="grid-container">
            <div class="grid-row">
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
            </div>
            <div class="grid-row">
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
            </div>
            <div class="grid-row">
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
            </div>
            <div class="grid-row">
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
                <div class="grid-cell"></div>
            </div>
        </div>
        <div class="tile-container">
            <div class="tile tile-4 tile-position-1-1 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-16 tile-position-2-1 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-2 tile-position-2-2 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-2 tile-position-3-1 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-32 tile-position-3-2 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-8 tile-position-3-3 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-4 tile-position-3-4 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-32 tile-position-4-1 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-16 tile-position-4-2 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-2 tile-position-4-3 tile-new">
                <div class="tile-inner"></div>
            </div>
            <div class="tile tile-4 tile-position-4-4 tile-new">
                <div class="tile-inner"></div>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/bind_polyfill.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/classlist_polyfill.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/animframe_polyfill.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/keyboard_input_manager.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/html_actuator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/grid.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/tile.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/local_storage_manager.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/game_manager.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/application.js"></script>

</body>
</html>

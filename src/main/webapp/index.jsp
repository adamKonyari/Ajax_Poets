<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <c:url value="/style/style.css" var="styleUrl"/>
    <c:url value="/script/index.js" var="indexScriptUrl"/>
    <c:url value="/script/login.js" var="loginScriptUrl"/>
    <c:url value="/script/profile.js" var="profileScriptUrl"/>
    <c:url value="/script/poems.js" var="poemsScriptUrl"/>
    <link rel="stylesheet" type="text/css" href="${styleUrl}">
    <script src="${indexScriptUrl}"></script>
    <script src="${loginScriptUrl}"></script>
    <script src="${profileScriptUrl}"></script>
    <script src="${poemsScriptUrl}"></script>
</head>
<body>
<div id="login-content" class="content">
    <h1>Login</h1>
    <form id="login-form" onsubmit="return false;">
        <input type="text" name="username">
        <input type="password" name="password">
        <button id="login-button">Login</button>
    </form>
</div>
<div id="profile-content" class="hidden content">
    <p>Poet: <span id="poet-name"></span></p>
</div>
<div id="wrapper">
    <div id="poem-titles-content" class="hidden content">
    </div>
    <div id="poem-content" class="hidden content">
    </div>
</div>
</body>
</html>

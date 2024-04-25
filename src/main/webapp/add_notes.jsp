<%--
  Created by IntelliJ IDEA.
  User: KIIT
  Date: 25-04-2024
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Notes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-amber-100">
    <%@include file="navbar.jsp"%>
    <div class="m-auto w-fit">
    <h1 class="text-3xl font-medium my-6">Add a note</h1>
    <form action="SaveNoteServlet" method="post">
        <label for="title" class="">Title:</label>
        <br>
        <input id="title" type="text">
    </form>
    </div>
</body>
</html>

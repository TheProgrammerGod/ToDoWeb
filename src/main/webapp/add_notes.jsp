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
    <div class="m-auto w-3/12 bg-amber-300 p-6 mt-4 rounded-lg pb-4">
    <h1 class="text-3xl font-medium my-6 text-white">Add a note</h1>
    <form action="SaveNoteServlet" method="post" class="text-white">
        <label for="title" class="">Title:</label>
        <br>
        <input name="title" id="title" type="text" class="text-black my-2 outline-none p-1 rounded bg-amber-100 w-full" placeholder="Enter the title of your note">
        <label for="content" class="">Content:</label>
        <br>
        <textarea name="content" id="content" class="text-black my-2 w-full bg-amber-100 rounded outline-none p-1 h-40" placeholder="Enter content"></textarea>
        <div class="m-auto w-fit mt-2">
            <button class="p-1 rounded text-base bg-amber-700 px-2" type="submit">Submit</button>
        </div>
    </form>
    </div>
</body>
</html>

<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="com.entities.Note" %><%--
  Created by IntelliJ IDEA.
  User: KIIT
  Date: 27-04-2024
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Edit Page</title>
</head>
<body class="bg-amber-100">

    <%@include file="navbar.jsp"%>

    <%
        int noteID = Integer.parseInt(request.getParameter("note_id").trim());
        Session s = FactoryProvider.getFactory().openSession();
        Note note = s.get(Note.class,noteID);
        s.close();
    %>

    <div class="m-auto w-3/12 bg-amber-300 p-6 mt-4 rounded-lg pb-4">
        <h1 class="text-3xl font-medium my-6 text-white">Edit your note &#x1f4a1;</h1>
        <form action="UodateServlet" method="post" class="text-white">
            <label for="title" class="">Title:</label>
            <br>
            <input name="title" id="title" value="<%=note.getTitle()%>" type="text" class="text-black my-2 outline-none p-1 rounded bg-amber-100 w-full" placeholder="Enter the title of your note">
            <label for="content" class="">Content:</label>
            <br>
            <textarea name="content" id="content" class="text-black my-2 w-full bg-amber-100 rounded outline-none p-1 h-40" placeholder="Enter content"><%=note.getContent()%></textarea>
            <div class="m-auto w-fit mt-2">
                <button class="p-1 rounded text-base bg-green-500 px-2" type="submit">Submit</button>
            </div>
        </form>


</body>
</html>

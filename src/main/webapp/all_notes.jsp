<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entities.Note" %><%--
  Created by IntelliJ IDEA.
  User: KIIT
  Date: 26-04-2024
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>All Notes</title>
</head>
<body class="bg-amber-100">

    <%@include file="navbar.jsp" %>

    <div class="flex p-2 h-full">

        <%
            Session s = FactoryProvider.getFactory().openSession();
            Query q = s.createQuery("from Note");
            List<Note> notes = q.list();
            for(Note note : notes){
        %>
        <div class="flex flex-col bg-amber-300 w-3/12 text-white rounded-xl h-2/6">
            <div class="p-2 bg-amber-700 w-full text-center rounded-t-xl h-1/6">
                <h5><%= note.getTitle() %></h5>
            </div>
            <div class="p-2 w-full text-center h-4/6">
                <p><%=note.getContent()%></p>
            </div>
            <div class="flex h-1/6">
                <span><%=note.getAddedDate()%></span>
                <button>Update</button>
                <button>Delete</button>
            </div>
        </div>
        <%
            }
            s.close();
        %>

    </div>

</body>
</html>

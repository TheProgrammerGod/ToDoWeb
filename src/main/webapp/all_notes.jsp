<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entities.Note" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
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

    <div class="flex p-4 h-full w-full flex-wrap">

        <%
            Session s = FactoryProvider.getFactory().openSession();
            Query q = s.createQuery("from Note");
            List<Note> notes = q.list();
            for(Note note : notes){
        %>
        <div class="flex flex-col bg-amber-300 w-3/12 text-white h-2/5 mx-4 rounded-xl">
            <div class="p-2 bg-amber-700 w-full text-center rounded-t-xl h-1/6">
                <h5><%= note.getTitle() %></h5>
            </div>
            <div class="p-2 w-full text-center h-3/6">
                <p><%=note.getContent()%></p>
            </div>
            <div class="flex content-center h-2/6 text-sm p-2 justify-end">
                <p class="h-fit my-auto "><%= new SimpleDateFormat("MMMM dd, yyyy").format(note.getAddedDate())%></p>
                <a href="edit.jsp?note_id=<%=note.getId()%>" class="bg-emerald-500 p-1 h-fit mx-4 my-auto rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L6.832 19.82a4.5 4.5 0 0 1-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 0 1 1.13-1.897L16.863 4.487Zm0 0L19.5 7.125" />
                    </svg>
                </a>
                <a href="DeleteServlet?note_id=<%=note.getId()%>" class="bg-red-600 p-1 h-fit my-auto rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
                    </svg>
                </a>
            </div>
        </div>
        <%
            }
            s.close();
        %>

    </div>

</body>
</html>

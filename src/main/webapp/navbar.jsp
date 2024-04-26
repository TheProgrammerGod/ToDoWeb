<%--
  Created by IntelliJ IDEA.
  User: KIIT
  Date: 25-04-2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="bg-amber-300 p-4 flex justify-between">
    <div class="flex justify-between w-max">
        <div class="text-white font-bold me-4">
            To-Do App
        </div>
        <a href="index.jsp" class="me-4">
            <span class="text-white hover:bg-amber-500 p-1 rounded">
                Home
            </span>
        </a>

        <a href="add_notes.jsp" class="me-4">
            <span class="text-white hover:bg-amber-500 p-1 rounded ">
                Add Note
            </span>
        </a>

        <a href="all_notes.jsp" class="me-4">
            <span class="text-white hover:bg-amber-500 p-1 rounded">
                Show Notes
            </span>
        </a>

    </div>

    <div>
        <label>
            <input type="text" placeholder="Search..." class="rounded px-1 py-0.5 outline-none">
        </label>
        <button class="bg-amber-500 p-1 ms-1 font-bold rounded">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="white" class="w-5 h-4">
                <path fill-rule="evenodd" d="M9 3.5a5.5 5.5 0 1 0 0 11 5.5 5.5 0 0 0 0-11ZM2 9a7 7 0 1 1 12.452 4.391l3.328 3.329a.75.75 0 1 1-1.06 1.06l-3.329-3.328A7 7 0 0 1 2 9Z" clip-rule="evenodd"></path>
            </svg>
        </button>
    </div>

</div>

<html>
<head>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Home Page</title>
</head>
<body class = "bg-amber-100">

<div class="mb-4">
    <%@include file="navbar.jsp"%>
</div>
    <div class="w-1/2 mx-auto">
        <img src="assets/home.svg" class="w-1/4 h-1/4 mx-auto" alt="lightbulb">
        <div class="mx-auto w-fit">
            <p class="font-bold mb-4">Let's start taking notes!</p>
            <a href="add_notes.jsp" class="rounded p-2 bg-yellow-300 text-white font-bold mx-auto mt-2 ml-10" >Get Started</a>
        </div>
    </div>
</body>
</html>

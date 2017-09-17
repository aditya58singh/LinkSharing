<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>

    <link rel="stylesheet" href="/resources/css/home.css">
</head>

<style>
    .text1
    {
        font-size:160px;
        text-align: center;
        color:#454545;
        width: 100%;

    }
    .text
    {
        font-size: 80px;
        text-align: center;
        color:#454545;
        width:100%;
    }
</style>
<body>


<p class="text1">${errorCode} </p>
<p class="text">Server returned with a ${errorCode} error</p>


</body>
</html>

</body>
</html>
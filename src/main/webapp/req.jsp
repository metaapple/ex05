<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>서블릿에서 처리한 결과를 넣어주는 파일 호출됨.(서블릿에서, 서버에서 호출) ==> forward</h1>
전달된 이름 <%= request.getAttribute("username")%> <br>
전달된 주소 <%= request.getAttribute("useraddress")%> <br>
</body>
</html>

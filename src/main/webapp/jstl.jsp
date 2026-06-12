<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ftmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Core 태그 예제</title>
</head>
<body>

<h1>JSTL Core 태그 아주 간단한 예제</h1>

<!-- 변수 만들기 -->
<c:set var="score" value="85" />
<c:set var="fruits" value="사과,바나나,포도" />

<hr>

<h2>1. c:if 예제</h2>

<c:if test="${score >= 60}">
    점수는 ${score}점입니다.<br>
    합격입니다.
</c:if>

<hr>

<h2>2. c:forEach 예제</h2>

<c:forEach var="i" begin="1" end="5">
    ${i}번째 반복입니다.<br>
</c:forEach>

<hr>

<h2>3. c:choose / c:when / c:otherwise 예제</h2>

<c:choose>
    <c:when test="${score >= 90}">
        A등급입니다.
    </c:when>

    <c:when test="${score >= 80}">
        B등급입니다.
    </c:when>

    <c:when test="${score >= 70}">
        C등급입니다.
    </c:when>

    <c:otherwise>
        재시험입니다.
    </c:otherwise>
</c:choose>

<hr>

<h2>4. c:url 예제</h2>

<c:url var="loginUrl" value="/login.jsp" />

<a href="${loginUrl}">로그인 페이지로 이동</a>

<hr>

<h2>5. c:forTokens 예제</h2>

<c:forTokens var="fruit" items="${fruits}" delims=",">
    과일 이름: ${fruit}<br>
</c:forTokens>

</body>
</html>
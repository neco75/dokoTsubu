<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginResult.css">
<title>どこつぶ</title>
</head>
<body>
    <div class="container">
        <h1 class="title">どこつぶログイン</h1>
        <% if(loginUser != null) { %>
          <p class="success-msg">ログインに成功しました</p>
          <p class="welcome-msg">ようこそ<%= loginUser.getName() %>さん</p>
          <a href="Main" class="button">つぶやき投稿・閲覧へ</a>
        <% } else { %>
          <p class="error-msg">ログインに失敗しました</p>
          <a href="index.jsp" class="button">TOPへ戻る</a>
        <% } %>
    </div>
</body>
</html>

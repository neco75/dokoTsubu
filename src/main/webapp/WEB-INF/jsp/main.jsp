<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List"%>
<%
// セッションスコープに保存されたユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
// アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
// リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<title>どこつぶ</title>
</head>
<body>
	<div class="container">
		<h1 class="title">どこつぶメイン</h1>
		<p class="login-info">
			<%=loginUser.getName()%>
			さん、ログイン中 <a href="Logout" class="logout-link">ログアウト</a>
		</p>
		<p class="update-link">
			<a href="Main">更新</a>
		</p>

		<!-- つぶやきフォーム -->
		<form action="Main" method="post" class="tweet-form">
			<input type="text" name="text" class="tweet-input" placeholder="何をつぶやきますか？"> <input type="submit" value="つぶやく" class="submit-btn">
		</form>

		<!-- エラーメッセージ表示 -->
		<%
		if (errorMsg != null) {
		%>
		<p class="error-msg"><%=errorMsg%></p>
		<%
		}
		%>

		<!-- つぶやきリスト表示 -->
		<div class="mutter-list">
			<%
			for (Mutter mutter : mutterList) {
			%>
			<div class="mutter-item">
				<p class="mutter-user"><%=mutter.getUserName()%>：
				</p>
				<p class="mutter-text"><%=mutter.getText()%></p>
				<p class="mutter-time"><%=mutter.getPostTime()%></p>
			</div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>

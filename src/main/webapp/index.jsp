<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/index.css">
<title>どこつぶ</title>
</head>
<body>
    <div class="container">
        <h1 class="title">どこつぶへようこそ</h1>
        <form action="Login" method="post" class="login-form">
            <div class="form-group">
                <label for="username" class="form-label">ユーザー名：</label>
                <input type="text" name="name" id="username" class="form-input">
            </div>
            <div class="form-group">
                <label for="password" class="form-label">パスワード：</label>
                <input type="password" name="pass" id="password" class="form-input">
            </div>
            <input type="submit" value="ログイン" class="submit-btn">
        </form>
    </div>
</body>
</html>

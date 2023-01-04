<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MOVIE | Login</title>
  <link href="/css/login.css" rel="stylesheet" type="text/css">
</head>
<style>
body{
      background-image: url('/images/fbg.jpg');
}
#logo{
border-radius:5px;
}

</style>
<body style="background-color: blueviolet;">
<div class="content" >
      <div class="imgLogo name-content" >
        <img id="logo" src="/images/flogo.jpg" alt="logo" height="80px" width="120px" border-radius = "8px">
      </div>
      <div class="flex-div">
          <form action="/movie/user/login" method="post" autocomplete="off">
            <input type="text" placeholder="Username" name="username" class="input" required />
            <input type="password" placeholder="Password"  name="password" class="input"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,}" required>
            <button type="submit" id="login"class="btn btn-primary btn-block btn-large login">Login</button>
            

          </form>
      </div>
    </div> 
</body>
</html>
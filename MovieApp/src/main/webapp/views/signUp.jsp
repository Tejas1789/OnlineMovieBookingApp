<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/css/signUp.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div class="main">
        <div class="content">
            <div class="quote">
            <h1><br><span>"Cinema is not only about making people dream . It's about changing things and making people think"</span><br> 
                <span id="quoteName">  Nadline Labaki</span> </h1>
            
            </div>
            <form action="/movie/user/signup" method="post">
                <div class="form">
                    <h2>SIGN UP HERE</h2>
                    <input type="text" name="username" placeholder="Enter Username" autocomplete="off" class="input" required>
                    <input type="text" name="contact" placeholder="Enter Contact" autocomplete="off" class="input" required>
                    <input type="text" name="address" placeholder="Enter Address" autocomplete="off" class="input" required>
                    <input type="text" name="role" placeholder="Enter role" autocomplete="off" class="input" required>
                    <input type="password" name="password" placeholder="Enter Password" autocomplete="off"  class="input"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,}" required>
                    <input type="submit" class="btnn" value="Submit">
                </form>

                    <p class="link">Already have an account?<br>
                    <a href="/movie/user/">Sign in </a> here</a></p>
                    
                </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
     <link href="/css/navbar.css" rel="stylesheet" type="text/css">
        <style>
            li {
                text-decoration: none;
            }

            header li a{
                width: 80px;
                font-size: x-large;
            }
        </style>
    </head>
    <body>
        <header>
        <a  href="/food/get"><img src="/images/flogo.jpg" class="navbar_logo"></a>
            
             <nav>
                 <ul>
                     <li><a href="/views/homePage.jsp" >Home</a></li>
                     <li><a href="/views/contact.jsp" style="text-decoration: none;">Contact </a></li>
                     <li><a href="/movie/user/" style="text-decoration: none;">Login </a></li>
                     <li><a href="/movie/user/add" style="text-decoration: none;">Signup </a></li>
                     <!-- <li><a href="/movie/user/logout" style="text-decoration: none;">Logout</a></li> -->
                 </ul>
             </nav>
             <li id="userName"></li>
         </header>
    
    </body>
    </html>
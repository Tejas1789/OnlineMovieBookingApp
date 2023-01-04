<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
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
        header li a {
        width : 163px
       
        }
        h4{
               margin-left: 25rem;
               margin-top: 1rem;
        }
    </style>
</head>
<body>
    <header>
    <a  href="/movie/get"><img src="/images/flogo.jpg" class="navbar_logo"></a>
        
         <nav>
             <ul>
                 <li><a href="/views/AddMovie.jsp" >Add Movie</a></li>
                 <li><a href="/movie/get" style="text-decoration: none;">Show Movies </a></li>
                 <li><a href="/movie/user/logout" style="text-decoration: none;">Logout</a></li>
                
             </ul>
              <h4>Hi <%= session.getAttribute("username") %></h4>
         </nav>
     
     </header>

</body>
</html>
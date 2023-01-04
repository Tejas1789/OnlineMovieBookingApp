<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%--- 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="/css/navbar.css" rel="stylesheet" type="text/css">
</head>
<style>

   header li a {
        width : 163px
       
        }
        h4{
               margin-top: 1rem;
               margin-left: 4rem;
}
        }

</style>
<body>

  <header>
    <a  href="/movie/get"><img src="/images/flogo.jpg" class="navbar_logo"></a>
        
         <nav>
             <ul>
                 <li><a href="/movie/getUserMovie" style="text-decoration: none;">Show Movies </a></li>
                 <li><a href="/movie/user/cart/getAll" style="text-decoration: none;">Show Cart details</a></li>
                 <li><a href="/movie/user/logout" style="text-decoration: none;">Logout</a></li>
                
                
                 
             </ul>
             
             
              <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
              <h4>Hi <%= session.getAttribute("username") %></h4>
  
    
         </nav>
         
     </header>

</body>
</html>
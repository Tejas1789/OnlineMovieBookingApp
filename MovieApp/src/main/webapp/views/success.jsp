<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<style type="text/css">
	.bor{
	border:2px solid black;
	}
	p{
	color:red;}
	body{
	 background-image: url('/images/abg.jpg');
     background-size: cover;}
  
  div.genre{
	height: 20rem;
    margin-left: 1rem;
    width: 10rem;
	
  }
  
  </style>
</head>
<body>
     <%@ include file="/views/UserNavbar.jsp" %>
     <!-- <iframe src="/views/UserNavbar.html" width="1400" height="85"></iframe> -->

     <h1 style = "margin-top:7rem">Payment Recieved</h1>
     <h3>Your Ticket Details -: ....</h3>
</body>
</html>
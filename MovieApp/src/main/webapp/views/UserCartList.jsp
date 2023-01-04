<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
    crossorigin="anonymous"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/stylesheets/showMedicine.css">
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

<div>
		<br>
		<h2 class="text-center">Movie Details</h2>
		<hr>
		
	

		<ol>
			<c:forEach items="${cartList}" var="cart">
				<div class="container col-9" style="margin-top: 45px", style="margin-left: 20rem;" >
					<li style="box-shadow: 9px 14px 12px #595555;">
						<div class="grid">
							<div class="row">
							<div class="col ">
								<img src="/images/${ cart.mimage}"
								 style="height: 350px; width: 350px;"/>
							</div>
								<div class="col" style="margin-right: 5px;">
									<div class="row">
										<div class="col bor" >
											<label style="margin-left:0px">Movie Name</lable>
												<p>${cart.mname}</p>
										</div>

										<div class="col bor">
											<label  >Movie Genre</lable>
											<p>${cart.genre}</p>
										</div>
                                    </div>


									<div class="row">
										<div class="col bor">
											<label>Movie Quantity</lable>
												<p>${cart.quantity}</p>
										</div>
										<div class="col bor">
											<label>Movie Status</lable>
												<p>${cart.status}</p>
										</div>
									</div>



									<div class="row">
										<div class="col bor">
											<label>Movie Start Time</lable>
												<p>${cart.movieStartTime}</p>
										</div>
										<div class="col bor">
											<label>Movie End Time</lable>
												<p>${cart.movieEndTime}</p>
										</div>
									</div>




									<div class="row">
										<div class="col bor">
											<label>Movie Price</lable>
												<p>${cart.price}</p>
										</div>

										<div class="col bor">
											<label>Movie Description</lable>
												<p>${cart.description}</p>
										</div>
                                    </div>


									

									<div class="row">
									<div class="col bor" style="padding:15px 15px 15px 15px">
										<a href="/views/payment.jsp">
									    <button class="btn " style="background-color:#77ff4d">Buy Now</button>
									    </a>
											
										</div>
									</div>


								</div>
							</div>
						</div>
						<hr>
					</li>
				</div>
				
				
			</c:forEach>
		</ol>
	</div>

</body>
</html>
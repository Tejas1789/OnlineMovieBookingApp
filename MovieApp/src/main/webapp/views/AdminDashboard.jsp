<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <script src="https://kit.fontawesome.com/09afaa9242.js" crossorigin="anonymous"></script>
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
<%@ include file="/views/navbar.jsp" %>
<!-- <iframe src="/views/navbar.html" width="1400" height="85"></iframe> -->
	<div>
		<br>
		<h2 class="text-center">Movie Details</h2>
		<hr>

		<%---
		<div class="genre" style="height: 9rem">
		<ul style = "font-size:20px"><h3>Genre</h3>
			<a href="/movie/getUserGenreAction"><li>Action</li></a><br>
			<a href="/movie/getUserGenreComedy"><li>Comedy</li></a><br>
			<a href="/movie/getUserGenreThriller"><li>Thriller</li></a><br>
			<a href="/movie/getUserGenreRomance"><li>Romantic</li></a>
			
		</ul>
		</div>
		
		--%>
		
		
		<ol>
			<c:forEach items="${movieList}" var="movie">
				<div class="container col-9" style="margin-top: 45px", style="margin-left: 20rem;" >
					<li style="box-shadow: 9px 14px 12px #595555;">
						<div class="grid">
							<div class="row">
							<div class="col ">
								<img src="/images/${ movie.mimage}"
								 style="height: 301px; width: 301px;"/>
							</div>
							
							
							
							
								<div class="col" style="margin-right: 10px;">
									<div class="row">
										<div class="col bor" >
											<label style="margin-left:0px">Movie Name</lable>
												<p>${movie.mname}</p>
										</div>
										<div class="col bor">
											<label  >Movie Genre</lable>
											<p>${movie.genre}</p>
										</div>
									</div>
									
									
									
									
									
									<div class="row">
										<div class="col bor">
											<label>Movie Quantity</lable>
												<p>${movie.quantity}</p>
										</div>
										<div class="col bor">
											<label>Movie Status</lable>
												<p>${movie.status}</p>
										</div>
									</div>
									
									
									
									<div class="row">
										<div class="col bor">
											<label>Movie Start Time</lable>
												<p>${movie.movieStartTime}</p>
										</div>
										<div class="col bor">
											<label>Movie End Time</lable>
												<p>${movie.movieEndTime}</p>
										</div>
									</div>
									
									
									
									<div class="row">
										<div class="col bor">
											<label>Movie Price</lable>
												<p>${movie.price}</p>
										</div>

										<div class="col bor">
											<label>Movie Description</lable>
												<p>${movie.description}</p>
										</div>
                                    </div>
                                    
                                    
                                    <div class="row">
										<div class="col bor" style="padding:  15px 15px 15px 15px">
											<a href="/movie/update?mid=${movie.mid}">
												<button class="btn btn-warning" style="background-color:#77ff4d">Update</button>
											</a>
											<a href="/movie/delete?mid=${movie.mid}">
												<button class="btn btn-danger" style="background-color:#ff0000d9">Delete</button>
											</a>
										</div>
									</div>
									
									
									
									
								<%--	<div class="row">
										<div class="col bor">
											<label>Movie Price</lable>
												<p>${movie.price * movie.quantity}</p>
										</div>
										<div class="col bor" style="padding-top:15px">
											<a href="/food/update?movieid=${movie.mid}">
												<button class="btn btn-warning" style="background-color:#77ff4d">Update</button>
											</a>
											<a href="/food/delete?movieid=${movie.mid}">
												<button class="btn btn-danger" style="background-color:#ff0000d9">Delete</button>
											</a>
										</div>
									</div>
									
									--%>
									
									
									
								</div>
							</div>
						</div>
						<hr>
					</li>
				</div>
				
				
			</c:forEach>
		</ol>
	</div>




	<!--linking the bootstrap js-->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>
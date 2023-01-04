<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	<style type="text/css">
	body{
	 background-image: url('/images/abg.jpg');
  background-size: cover;}
  /* .col{
  background:transparent;} */
  
  </style>

</head>
<body>

<%@ include file="/views/navbar.jsp" %>

     
     
     <div>
		<br>
		<h2 class="text-center" style = "margin-top:8rem">Update Movie Details</h2>
		<br>
		<hr>

		<div class="container col-9">
			<form action="/movie/updateDetails" method="post">
				<div class="row">
					<div clasa="col">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" name="mname"
								id="foodName" placeholder="Movie Name" style="width: 30%;background:transparent;border:3px solid white;color:black"> <label
								for="movieName" style="color:black ">Movie Name</label>
						</div>
					</div>
					<br>
					<div class="col">
						<select class="form-select" name="genre"
							aria-label="Default select example" style="width: 30%; background:transparent;border:3px solid white;color:black">
							<option selected>Select Genre Category</option>
							<option value="Action">Action</option>
							<option value="Comedy">Comedy</option>
							<option value="Thriller">Thriller</option>
							<option value="Romantic">Romantic</option>
							
						</select>
					</div>
				</div>
				<br>
				<div class="row">
					<div clasa="col">
						<div class="form-floating mb-3">
							<input type="number" class="form-control" name="price"
								id="foodprice" placeholder="Movie Price" style="width: 30%; background:transparent;border:3px solid white;color:black"> <label
								for="movieprice" style="color:black">Movie Price</label>
						</div>
					</div>
					<br>

				
					<div class="row">
						<div clasa="col">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="language"
									id="foodprice" placeholder="Movie Language" style="width: 30%; background:transparent;border:3px solid white;color:black"> <label
									for="movielanguage" style="color:black">Movie Language</label>
							</div>
						</div>
						<br>

						<div class="row">
							<div clasa="col">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" name="description"
										id="description" placeholder="Movie Description" style="width: 50%; background:transparent;border:3px solid white;color:black"> <label
										for="moviedescription" style="color:black">Movie Description</label>
								</div>
							</div>
							<br>	

							<div class="row">
								<div clasa="col">
									<div class="form-floating mb-3">
										<input type="text" class="form-control" name="movieStartTime"
											id="moviestarttime" placeholder="Movie Start Time" style="width: 30%; background:transparent;border:3px solid white;color:black"> <label
											for="moviestarttime" style="color:black">Movie Start Time</label>
									</div>
								</div>
								<br>
								
								<div class="row">
									<div clasa="col">
										<div class="form-floating mb-3">
											<input type="text" class="form-control" name="movieEndTime"
												id="movieendtime" placeholder="Movie End Time" style="width: 30%; background:transparent;border:3px solid white;color:black"> <label
												for="movieendtime" style="color:black">Movie End Time</label>
										</div>
									</div>
									<br>	
					

					<div class="col">
						<div class="form-floating mb-3">
							<input type="number" class="form-control" name="quantity"
								id="moviequantity" placeholder="Movie Quantity" style="width: 30%; background:transparent;border:3px solid white;color:black"> <label
								for="moviequantity" style="color:black">Movie Ticket Quantity</label>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div clasa="col">
						<select class="form-select" name="status"
							aria-label="Default select example" style="width: 30%;background:transparent;border:3px solid white;color:black">
							<option selected style="color:white">Select Availability</option>
							<option value="Available">Available</option>
							<option value="Not Available">Not Available</option>
						</select>
					</div>
					<br>
					<br>
			
			
					<div class="col">
						<div class="input-group mb-3">
							<input type="file" class="form-control" name="mimage" id="inputGroupFile02" style="width: 30%; background:transparent;border:3px solid white;color:black">
							<label class="input-group-text" for="inputGroupFile02"style="color:black     margin-left: 92px;">Upload Movie Image</label>
						</div>
					</div>
				</div>

				<br> <br>
				<button type="submit" class="btn btn-primary"
					style="margin-bottom: 2rem; padding-left: 1cm; padding-right: 1cm;background-color:#d6a037">Submit
					Details</button>

			</form>
		</div>




	</div>

     
     
     

</body>
</html>
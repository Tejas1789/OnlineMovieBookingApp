<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .container{
            display: flex;
            align-content: space-between;
            
            }
         .card{
            margin-right: 3rem;
            height: 15rem;
            margin-top: 8rem;
           
         }   
         

         body{
	      background-image: url('/images/abg.jpg');
        background-size: cover;
}
    </style>
</head>
<body style="background-color: antiquewhite;">
    <!-- <iframe src="/views/homenav.html" width="1400" height="85"></iframe> -->
    <%@ include file="/views/homenav.jsp" %>


    <div class="container" style = "margin-top:3rem">
    <div class="card" style="width: 18rem;">
        <img src="/images/civilwar.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Civil War</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="" class="btn btn-primary" onclick="myFunction()">Buy Tickets</a>
        </div>
      </div>

      <div class="card" style="width: 18rem;">
        <img src="/images/avatar.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Avatar</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="" class="btn btn-primary" onclick="myFunction()">Buy Tickets</a>
        </div>
      </div>

      <div class="card" style="width: 18rem;">
        <img src="/images/civilwar.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Hulk</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="" class="btn btn-primary" onclick="myFunction()">Buy Tickets</a>
        </div>
      </div>

      <div class="card" style="width: 18rem;">
        <img src="/images/survive.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Survive</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="" class="btn btn-primary" onclick="myFunction()">Buy Tickets</a>
        </div>
      </div>



    </div>


    <script>
        function myFunction() {
          alert("Please Login!");
        }
        </script>
        
</body>
</html>
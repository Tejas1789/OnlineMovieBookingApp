<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style type="text/css">
        body {
            background-image: url('/images/abg.jpg');
            background-size: cover;
        }
    </style>

</head>

<body>


    <%@ include file="/views/UserNavbar.jsp" %>
    <!-- <iframe src="/views/UserNavbar.html" width="1400" height="85"></iframe> -->

    <div>
        <br>
        <h2 class="text-center">Payment Details</h2>
        <br>
        <hr>



        <div class="container col-9">

            <div class="row">


                <div clasa="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="Card Number" placeholder="Card Number" required
                            style="width: 30%;background:transparent;border:3px solid white;color:black"> <label
                            style="color:black ">Enter Card Number</label>
                    </div>
                </div>
                <br>

                <div clasa="col">
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" name="Card Name" required placeholder="Card Name"
                            style="width: 30%;background:transparent;border:3px solid white;color:black"> <label
                            for="movieName" style="color:black ">Enter Card Name</label>
                    </div>
                </div>
                <br>


                <div clasa="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="expire" required placeholder="MM-YYYY"
                            style="width: 30%;background:transparent;border:3px solid white;color:black"> <label
                            for="movieName" style="color:black ">Cvv MM-YYYY</label>
                    </div>
                </div>
                <br>


                <div clasa="col">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="mname" required placeholder="Cvv"
                            style="width: 30%;background:transparent;border:3px solid white;color:black"> <label
                            style="color:black ">Cvv</label>
                    </div>
                </div>
                <br>





                <br> <br>
                <a href="/views/success.jsp">
                    <button type="submit" class="btn btn-primary"
                        style="margin-bottom: 2rem; padding-left: 1cm; padding-right: 1cm;background-color:#d6a037">Submit
                        Details</button></a>


            </div>






        </div>
</body>

</html>
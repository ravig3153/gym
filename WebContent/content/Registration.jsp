<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Registration!</title>
    <link href="../css/css2" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
  </head>
  <body>
      
      
          <nav class="navbar navbar-expand-lg">
 <a class="navbar-brand "  href="../../GYM"><img src="../img/logo.jpg" width="30" height="30"  class="d-inline-block align-top" alt="logo" >
    WELCOME TO GYM</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        
        <!-- <form action="" id="viewdetail">
         <a class="nav-link " href="../../GYM">View Details <span class="sr-only">(current)</span></a> 
     
        </form> -->
        
      </li>
      
       <li class="nav-item">
        <a class="nav-link "  href="View.jsp">View</a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link " class="active" href="Registration.jsp">New Registration</a>
      </li>
      
    </ul>


    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
 
  
 <section class="vh-100" style="margin-top:49px";>
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-6 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Registration</p>

                <form action="Client" method="post" id="form">
                     <div class="row">
                     
               <!--    <div class="d-flex flex-row align-items-center mb-4"> -->
               <div class="col-lg-1 control-label">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    </div>
                   <div class="col-lg-11 control-label">
                      <input type="text" name="name" placeholder="Enter Here Name" class="form-control" />
                     
                    </div>
                  </div>
                  <br>
               
                  
                   <div class="row">

                   <div class="col-lg-1 control-label ">
                    <i class=" text-danger fas fa-envelope fa-lg me-3 fa-fw"></i>
                    </div>
                     <div class="col-lg-11 control-label">
                      <input type="email"  name="email" placeholder="Enter Here Email" class="form-control" required />
                      </div>
                    </div>
                    <br>
                    
                    <div class="row">
                
                    <div class="col-lg-1 control-label">
                   <i class="text-warning fa-solid fa-lock"></i>
                   </div>
                     <div class="col-lg-11 control-label">
                      <input type="password" name="password" placeholder="Enter Here Password" class="form-control" />
                    </div>
                  </div>
                  <br>
                 
                  
                  
                  <div class="row">

                  <div class="col-lg-1 control-label">
                  <i class="text-success fa-solid fa-location-pin"></i>
                  </div>
                    <div class="col-lg-11 control-label">
                      <input type="text" name="addresh" placeholder="Enter Here Addresh" class="form-control" />
                    </div>
                  </div>
                    <br>
                   
                  
                  <div class="row">
                  <div class="col-lg-1 control-label">  
                   <i class="fa-solid fa-mobile"></i>
                   </div>
                     <div class="col-lg-11 control-label">
                      <input type="text" name="mobile" placeholder="Enter Here Mobile Number" class="form-control" />
                    </div>
                  </div>
                    <br>
                   
                  
                
                  
                   <div class="row">
                  
                  
                    <div class="col-lg-1 control-label"> 
                 <i class=" text-danger fa-solid fa-calendar-days"></i>
                 </div>
                     <div class="col-lg-11 control-label">
                      <input type="date" name="doj" placeholder="Date of Joining" class="form-control" />
                      
                    </div>
                  </div>
                    <br>
                   
                  
                   <div class="row">
                  
                       <div class="col-lg-1 control-label"> 
                <i class=" text-warning fa-solid fa-sun-plant-wilt"></i>
                </div>
                   <div class="col-lg-11 control-label">
                      <select  name="plan" class="browser-default custom-select">
  <option selected>Select your Plan</option>
  <option value="1">1 month</option>
  <option value="2">2 month</option>
  <option value="3">3 month</option>
</select>
                    </div>
                  </div>
                  
                  <br>
                
                  
                     <div class="row">
                  
                  
                  <div class="col-lg-1 control-label"> 
                   <i class=" text-success fa-brands fa-accessible-icon"></i>
                   </div>
                     <div class="col-lg-11 control-label">
                     <input type="radio" name="gender"  value="male" checked>
					Male <input type="radio" name="gender" value="female">
					Female
                    </div>
                  </div>
                    <br>
                   
                  


                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-6 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- <script>
$(document).ready(function() {
			console.log("Page ready..........")
			$("#form").on('submit', function(event) {
				event.preventDefault();
				
				var data = $(this).serialize();
				console.log(data);

				$.ajax({
					url : "Client",
					data : data,
					type : 'POST',
					success : function(data) {
						
						console.log(data);
						console.log("success..........")
					
						if (data.trim() === 'done') {
							
							console.log("Save ho gya")
						
						} else {
							console.log("fbhdfdjbkffdjbkfbjsdfj")
				

						}

					},
					error : function(e) {
						console.log(data);
						console.log("error")
					

					}
				})

			})
		})
	</script>
 -->
   
   
   
   	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
   
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
    
 <!--    
       <script>
		$(document).ready(function() {

			console.log("Page ready..........")
			$("#viewdetail").on('submit', function(event) {
				event.preventDefault();
				console.log("Calling..............")
				var data = $(this).serialize();
				console.log(data);

				$.ajax({
					url : "../../show",
					data : data,
					type : 'GET',
					success : function(data) {
						console.log(data);
						console.log("success..........")
						var customer = $.parseJSON(data);
						 var htm = '';
						console.log(customer);
						customer.forEach(function(subObj) {
							htm +='<tr>';
								htm+='<td>'+subObj.id+'</td>';
		                       htm+='<td>'+subObj.name+'</td>';
		                       htm+='<td>'+subObj.mobile+'</td>';
		                       htm+='<td>'+subObj.addresh+'</td>';
		                       htm+='<td>'+subObj.doj+'</td>';
		                       htm+='<td>'+subObj.validfrom.day+"-"+subObj.validfrom.month+"-"+subObj.validfrom.year+'</td>';
		                       htm+='<td>'+subObj.validto.day+"-"+subObj.validto.month+"-"+subObj.validto.year+'</td>';
		                       
		                  htm+='</tr>';
						});
						$("#tbody").append(htm);
				 	
					},
					error : function(e) {
						console.log(data);
						console.log("error")
						
					}
				})

			})
		})
	</script> -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
<!doctype html>
 <%@page import="com.model.Grahak"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>View!</title>
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
        
      
       
      </li>
      <li class="nav-item">
        <a class="nav-link "  href="View.jsp">View</a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link "  href="Registration.jsp">New Registration</a>
      </li>
      
    </ul>


    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>




 <div class="row">
  <div class=" container ch  col-3">
    <form action="" id="viewdetail">
         <button type= "submit"> View Details</button>
        </form> 
        <br>
        <br>
       
  
   <form action="" id="searchdetail"  class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" name= "mobile" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      <br>
       
           </form>
      
      
          
          
          <div id = "inform">
       <!--    <span class="form-control" > Name : ram</span>
          
           <span class="form-control" > Name : ram</span> -->
  </div>
       
  </div>
  
 
   <div class=" container ch col-9 " > 
   <!--  <div class="container ch"> -->
	<div class="table-wrap" >

      <table  class="table">
        <thead class="header-fixed">
         <tr  class="table-danger">
            <th scope="col">id</th>
            <th scope="col">client name</th>
            <th scope="col">phone</th>
            <th scope="col">address</th>
            <th scope="col">doj</th>
            <th scope="col">valid-from</th>
            <th scope="col">valid-to</th>
          </tr>
        </thead>
        <tbody style="background-color: white;" class="nnn"  id="tbody">
         
        
        </tbody>
      </table>
      
      <span id="result"></span>
           </div>
      </div>
      
  </div>
  <div class="col-2"></div>

 
  


   
   
   
   	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
   
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
    
   
      <script>
      
		$(document).ready(function() {

			console.log("Page ready..........")
			$("#viewdetail").on('submit', function(event) {
				event.preventDefault();
				console.log("Calling..............")
				var data = $(this).serialize();
				console.log(data);

				$.ajax({
					url : "../show",
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
			
			
			
			
			
			
			$("#searchdetail").on('submit', function(event) {
				event.preventDefault();
				console.log("Calling..............")
				var data = $(searchdetail).serialize();
				console.log(data);

				$.ajax({
					url : "../Search",
					data : data,
					type : 'POST',
					success : function(data) {
						console.log(data);
						console.log("success..........")
						 var grahak = $.parseJSON(data);
						 var htm = '';
						console.log(grahak);
						
						
						
						
		                  
						htm+='<span class="form-control">ID: '+grahak.id+'</span>';
						htm+='<span class="form-control">Name: '+grahak.name+'</span>';
						htm+='<span class="form-control">Address: '+grahak.addresh+'</span>';
						htm+='<span class="form-control">Mobile: '+grahak.mobile+'</span>';
						htm+='<span class="form-control">Validfrom: '+grahak.validfrom.year+"-"+grahak.validfrom.month+"-"+grahak.validfrom.day+'</span>';
						htm+='<span class="form-control">Validto: '+grahak.validto.year+"-"+grahak.validto.month+"-"+grahak.validto.day+'</span>';
	             
						
						$("#inform").append(htm); 
				 	
					},
					error : function(e) {
						console.log(data);
						console.log("error")
						
					}
				})

			})
			
			
			
			
			
		})
	</script>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
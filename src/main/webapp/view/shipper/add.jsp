<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="/commons/taglibs.jsp"%> 
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Responsive Registration Form | CodingLab </title>
  <link rel="stylesheet" href="edit_style.css">
</head>
<body>
  <div class="container">
    <!-- Title section -->
    <div class="title">Add new shipper</div>
    <div class="content">
      <!-- Registration form -->
      <form action="<c:url value='/shippers/add'></c:url>" method="POST">
        <div class="user-details">
          <!-- Input for Full Name -->
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="Enter your name" required name="fullname">
          </div>
          <!-- Input for Address -->
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" placeholder="Enter your addess" required name="address">
          </div>
          <!-- Input for Email -->
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your email" required name="email">
          </div>
          <!-- Input for Phone Number -->
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" required name="phone">
          </div>
          <!-- Input for Date of Birth -->
          <div class="input-box">
            <span class="details">Date of Birth</span>
            <input type="text" placeholder="yyyy-mm-dd" required name="Dob">
          </div>
          <!-- Input for ID Card Number -->
          <div class="input-box">
            <span class="details">ID Card Number</span>
            <input type="text" placeholder="Enter your ID Card Number" required name="cid">
          </div>
          <!-- Link image -->
          <div class="input-box">
            <span class="details">Avatar</span>
            <input type="text" required name="avatar">
          </div>
          <!--  Account name -->
          <div class="input-box">
            <span class="details">Account name</span>
            <input type="text" required name="uaname">
          </div>
          <!-- Area -->
          <div class="input-box">
            <span class="details">Area</span>
            <input type="text" required name="area">
          </div>
        </div>
        <div class="gender-details">
          <!-- Radio buttons for gender selection -->
          <input type="radio" name="gender" id="dot-1"  name="true">
          <input type="radio" name="gender" id="dot-2"  name="false">
          <span class="gender-title">Gender</span>
          <div class="category">
            <!-- Label for Male -->
            <label for="dot-1">
              <span class="dot one"></span>
              <span class="gender">Male</span>
            </label>
            <!-- Label for Female -->
            <label for="dot-2">
<span class="dot two"></span>
              <span class="gender">Female</span>
            </label>
        
          </div>
        </div>
        <!-- Submit button -->
        <div class="button">
          <input type="submit" value="Add">
        </div>
      </form>
    </div>
  </div>
  
  <style>
		  /* Importing Google Fonts - Poppins */
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
		
		* {
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;
		  font-family: 'Poppins', sans-serif;
		}
		
		body {
		  height: 100vh;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  padding: 10px;
		  background: transparent;
		}
		
		.container {
		  max-width: 700px;
		  width: 100%;
		  background-color: #fff;
		  padding: 25px 30px;
		  border-radius: 5px;
		  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
		}
		
		.container .title {
		  font-size: 25px;
		  font-weight: 500;
		  position: relative;
		}
		
		.container .title::before {
		  content: "";
		  position: absolute;
		  left: 0;
		  bottom: 0;
		  height: 3px;
		  width: 30px;
		  border-radius: 5px;
		  background: linear-gradient(135deg, #71b7e6, #9b59b6);
		}
		
		.content form .user-details {
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: space-between;
		  margin: 20px 0 12px 0;
		}
		
		form .user-details .input-box {
		  margin-bottom: 15px;
		  width: calc(100% / 2 - 20px);
		}
		
		form .input-box span.details {
		  display: block;
		  font-weight: 500;
		  margin-bottom: 5px;
		}
		
		.user-details .input-box input {
		  height: 45px;
		  width: 100%;
		  outline: none;
		  font-size: 16px;
		  border-radius: 5px;
		  padding-left: 15px;
		  border: 1px solid #ccc;
		  border-bottom-width: 2px;
		  transition: all 0.3s ease;
		}
		
		.user-details .input-box input:focus,
		.user-details .input-box input:valid {
		  border-color: #9b59b6;
		}
		
		form .gender-details .gender-title {
		  font-size: 20px;
		  font-weight: 500;
		}
		
		form .category {
		  display: flex;
		  width: 68%;
		  margin: 14px 0;
		  justify-content: space-between;
		}
		
		form .category label {
		  display: flex;
		  align-items: center;
		  cursor: pointer;
		}
		
		form .category label .dot {
		  height: 18px;
		  width: 18px;
		  border-radius: 50%;
		  margin-right: 10px;
		  background: #d9d9d9;
		  border: 5px solid transparent;
		  transition: all 0.3s ease;
		}
		
		#dot-1:checked~.category label .one,
		#dot-2:checked~.category label .two,
		#dot-3:checked~.category label .three {
		  background: #9b59b6;
		  border-color: #d9d9d9;
		}
		
		form input[type="radio"] {
		  display: none;
		}
		
		form .button {
		  height: 45px;
		  margin: 35px 0
		}
		
		form .button input {
		  height: 100%;
		  width: 100%;
		  border-radius: 5px;
		  border: none;
		  color: #fff;
		  font-size: 18px;
		  font-weight: 500;
		  letter-spacing: 1px;
		  cursor: pointer;
		  transition: all 0.3s ease;
background: linear-gradient(135deg, #71b7e6, #9b59b6);
		}
		
		form .button input:hover {
		  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
		}
		
		/* Responsive media query code for mobile devices */
		@media(max-width: 584px) {
		  .container {
		    max-width: 100%;
		  }
		
		  form .user-details .input-box {
		    margin-bottom: 15px;
		    width: 100%;
		  }
		
		  form .category {
		    width: 100%;
		  }
		
		  .content form .user-details {
		    max-height: 300px;
		    overflow-y: scroll;
		  }
		
		  .user-details::-webkit-scrollbar {
		    width: 5px;
		  }
		}
		
		/* Responsive media query code for mobile devices */
		@media(max-width: 459px) {
		  .container .content .category {
		    flex-direction: column;
		  }
		}
  </style>
</body>
</html>
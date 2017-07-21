<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/12/2017
  Time: 5:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<html>
<head>

  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/mytask.css" />" rel="stylesheet" ">
  <link rel="icon" type="image/x-icon" href="favicon.ico">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<div class="top-box-border">
  <nav class="navbar" style="border: 2px solid; border-radius: 10px;box-shadow: 10px 10px">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">Link Sharing</a>
      </div>

      <ul class="navbar-form navbar-right">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="search">
          <div class="input-group-btn">
            <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
          </div>
        </div>
      </ul>
    </div>
  </nav>
</div>


<br>
<br>





<body class="bottom-part">

    <div class="row">
    <div class="col-md-8">


      <div class="panel panel-default" style="width:800px;">
        <div class="panel-heading">
          Recent Shares

        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-2">
              <img src="profile.png">
            </div>
            <div class="col-md-10">
              <a href="#">Uday Pratap Singh </a>
              <font size=2px> @uday 5 mins</font>
              <a href="#" style="float: right; padding-right: 15px;">Grails</a>

              <p>
                To group many panels together, wrap a with class .panel-group a
                round them. The .panel-group class clears the bottom-margin of each
                panel: To group many panels together, wrap a with class .panel-group
                around them. The .panel-group class clears the bottom.
              </p>
              <i class="fa fa-facebook-square" style="font-size:20px"></i>
              <i class="fa fa-twitter" style="font-size:20px"></i>
              <i class="fa fa-google-plus" style="font-size:20px"></i>
              <a href="#" style="float: right; padding-right:5%;">View Post</a>
            </div>
          </div>
        </div>

        <br>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-2">
              <img  src="profile.png";>
            </div>
            <div class="col-md-10">
              <a href="#">Uday Pratap Singh </a>
              <font size=2px> @uday 5 mins</font>
              <a href="#" style="float: right; padding-right: 15px;">Grails</a>

              <p>
                To group many panels together, wrap a with class .panel-group a
                round them. The .panel-group class clears the bottom-margin of each
                panel: To group many panels together, wrap a with class .panel-group
                around them. The .panel-group class clears the bottom.
              </p>
              <i class="fa fa-facebook-square" style="font-size:20px"></i>
              <i class="fa fa-twitter" style="font-size:20px"></i>
              <i class="fa fa-google-plus" style="font-size:20px"></i>
              <a href="#" style="float: right; padding-right:5%;">View Post</a>
            </div>
          </div>
        </div>

      </div>

      <div class="panel panel-default" style="width:800px;">
        <div class="panel-heading">
          Top Posts


          <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
              Dropdown
              <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
              <li><a href="#" >Today</a></li>
              <li><a href="#" >1 Week</a></li>
              <li><a href="#" >1 Month</a></li>
              <li><a href="#" >i Year</a></li>
            </ul>
          </div>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-2">
              <img src="profile.png">
            </div>
            <div class="col-md-10">
              <a href="#">Uday Pratap Singh </a>
              <font size=2px> @uday 5 mins</font>
              <a href="#" style="float: right; padding-right: 15px;">Grails</a>

              <p>
                To group many panels together, wrap a with class .panel-group a
                round them. The .panel-group class clears the bottom-margin of each
                panel: To group many panels together, wrap a with class .panel-group
                around them. The .panel-group class clears the bottom.
              </p>
              <i class="fa fa-facebook-square" style="font-size:20px"></i>
              <i class="fa fa-twitter" style="font-size:20px"></i>
              <i class="fa fa-google-plus" style="font-size:20px"></i>
              <a href="#" style="float: right; padding-right:5%;">View Post</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">


      <div class="panel panel-default" style="width:400px;">
        <div class="panel-heading">
          Login
        </div>


        <div class="panel-body">
          <form action="/home/login" method="post">
            <div class="form-group">
              Email/Userame:*
              <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <br>
            <div class="form-group">
              Password:*
              <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
          </form>
          <a href="forgotpassword">Forgot Password</a>
        </div>
      </div>


      <div class="panel panel-default" style="width:400px;">
        <div class="panel-heading">
          Register
        </div>

        <div class="panel-body">
          <form action="/home/registered" method="post">
            <div class="form-group">

              <input type="hidden" id="id" value="${user.id}" readonly="true">
              First Name:*
              <input type="text" class="form-control" id="firstname" value="${user.firstname}" name="firstname">
            </div>
            <br>
            <div class="form-group">
              Last Name:*
              <input type="text" value="${user.lastname}" class="form-control" id="lastname" name="lastname">
            </div>
            <br>
            <div class="form-group">
              Email:*
              <input type="text" class="form-control" value="${user.email}" id="email" name="email">
            </div>
            <br>
            <div class="form-group">
              Userame:*
              <input type="text" class="form-control" id="usrname" value="${user.username}" name="username">
            </div>
            <br>
            <div class="form-group">
              Password:*
              <input type="password" class="form-control" id="pwd" name="password">
            </div>
            <br>
            <div class="form-group">
              Confirm Password:*
              <input type="password" class="form-control" id="cpwd" name="confirmpassword">
            </div>
            <br>
            <div class="form-group">
              Photo:
              <input name="photo" type="file" style="float: right">
            </div>
            <br>
            <button type="submit" class="btnSubmit" style="float: right">Register</button>
          </form>

        </div>
      </div>
    </div>
    </div>
</body>
</html>






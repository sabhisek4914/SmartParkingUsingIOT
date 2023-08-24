<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<meta charset="ISO-8859-1">
<title>PARK IT - Log in</title>
<link rel="icon" href="images/parking-sign.ico">
<style type="text/css">
	#master{
		position:absolute;
  		left:110px;
  		top:100px;
  		width:1145px;
  		height:800px;
	}
	#login {
		background: url('images/login_background.jpg');
    	position:absolute; 
    	top:100px;
    	left: 895px;
    	width:350px;
  		height:480px;
	}
	#FirstName{
		float: left;
	}
	h2 {font-family: 'verdana'; font-size: 40px}
	h4 {font-family: 'Calibri (Body)'; font-size: 30px}
</style>
</head>
<body>
<div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">PARK IT</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Map <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Profile</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Settings <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">App Settings</a></li>
                                <li><a href="#">Profile Settings</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
<div id="master"><img src="images/parking.jpg" height="60%" width="70%"></div>
	<div id="login">
		<center><h2>Sign Up</h2></center>
		<form action="index2.jsp">
			<input type="text" name="name" placeholder="First Name" style="width:170px;height: 30px"><input type="text" name="age" placeholder="Last Name" style="width:174px;height: 30px"/>
			<input type="text" name="addr" placeholder="E-mail Address" style="width:344px;height: 30px"/>
			<input type="text" id="email" placeholder="Phone Number" style="width:344px;height: 30px"/>
			<input type="text" id="pswd" placeholder="Create Password" style="width:344px;height: 30px"/>
			<input type="text" id="conpswd" placeholder="Re-enter Password" style="width:344px;height: 30px"/>
			<input type="text" id="city" placeholder="City" style="width:344px;height: 30px"/><br><br>
			<input type="hidden" name="status" value="1">
			<input type="submit" value="Find a lot for me" style="width:344px;height: 30px"/>
		</form>
	</div>
</body>
</html>
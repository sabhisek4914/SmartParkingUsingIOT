<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>PARK IT - Status</title>
	<link rel="icon" href="images/parking-sign.ico">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .car {
            background-color: #ececec;   
            height: 250px;
        }
        
        .car.taken {
            background-color: #d9534f;
        }
        
        .car.free {
            background-color: #5cb85c;
        }
        
        .position {
            text-align: center;
            font-size: 36px;
        }
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
        <div class="row"><!-- PS1 -->
            <p id="payload1"><h2>PARKING LOT 1 Status</h2></p>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS1P1id">
                    <div class="position">1</div>
                </div>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS1P2id">
                    <div class="position">2</div>
                </div>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS1P3id">
                    <div class="position">3</div>

                </div>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS1P4id">
                    <div class="position">4</div>

                </div>
            </div>
        </div>
        <div class="row"><!-- PS2 -->
            <p id="payload1"><h2>PARKING LOT 2 Status</h2></p>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS2P1id">
                    <div class="position">1</div>
                </div>
            </div>
        </div>
        <div class="row"><!-- PS3 -->
            <p id="payload1"><h2>PARKING LOT 3 Status</h2></p>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS3P1id">
                    <div class="position">1</div>
                </div>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS3P2id">
                    <div class="position">2</div>
                </div>
            </div>
        </div>
        <div class="row"><!-- PS4 -->
            <p id="payload1"><h2>PARKING LOT 4 Status</h2></p>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS4P1id">
                    <div class="position">1</div>
                </div>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <div class="car" id="PS4P2id">
                    <div class="position">2</div>
                </div>
            </div>
        </div>
    </div>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<script src="js/mqttws31.js"></script>

<script src="https://www.gstatic.com/firebasejs/4.12.1/firebase.js"></script>

<script src="https://www.gstatic.com/firebasejs/4.12.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyAOfQejRlv346I0yvhMhvGdYl8rNU9BEEM",
    authDomain: "normal-62ab7.firebaseapp.com",
    databaseURL: "https://normal-62ab7.firebaseio.com",
    projectId: "normal-62ab7",
    storageBucket: "normal-62ab7.appspot.com",
    messagingSenderId: "427665604388"
  };
  firebase.initializeApp(config);
        var rootRef = firebase.database().ref().child('mydata');
        var data = [];
        /*firebase.database().ref('/mydata').set({
            slot_1: obj.c1,
            slot_2: obj.c2,
            slot_3: obj.c3,
            slot_4: obj.c4
        });*/
        rootRef.on('value', function(snapshot){
            snapshot.forEach(function (childSnapshot) {
            data.push(childSnapshot.val());
            })
        /* FOR PARKING STATION 1 */
        if (data[0] == 1) {
            $("#PS1P1id").addClass("taken");
            $("#PS1P1id").removeClass("free");
        } else if (data[0] == 0) {
            $("#PS1P1id").addClass("free");
            $("#PS1P1id").removeClass("taken");
        }
        if (data[1] == 1) {
            $("#PS1P2id").addClass("taken");
            $("#PS1P2id").removeClass("free");
        } else if (data[1] == 0) {
            $("#PS1P2id").addClass("free");
            $("#PS1P2id").removeClass("taken");
        }
        if (data[2] == 1) {
            $("#PS1P3id").addClass("taken");
            $("#PS1P3id").removeClass("free");
        } else if (data[2] == 0) {
            $("#PS1P3id").addClass("free");
            $("#PS1P3id").removeClass("taken");
        }
        if (data[3] == 1) {
            $("#PS1P4id").addClass("taken");
            $("#PS1P4id").removeClass("free");
        } else if (data[3] == 0) {
            $("#PS1P4id").addClass("free");
            $("#PS1P4id").removeClass("taken");
        }
        
        /* FOR PARKING STATION 2 */
        if (data[4] == 1) {
            $("#PS2P1id").addClass("taken");
            $("#PS2P1id").removeClass("free");
        } else if (data[4] == 0) {
            $("#PS2P1id").addClass("free");
            $("#PS2P1id").removeClass("taken");
        }
        
        /* FOR PARKING STATION 3 */
        if (data[5] == 1) {
            $("#PS3P1id").addClass("taken");
            $("#PS3P1id").removeClass("free");
        } else if (data[5] == 0) {
            $("#PS3P1id").addClass("free");
            $("#PS3P1id").removeClass("taken");
        }
        if (data[6] == 1) {
            $("#PS3P2id").addClass("taken");
            $("#PS3P2id").removeClass("free");
        } else if (data[6] == 0) {
            $("#PS3P2id").addClass("free");
            $("#PS3P2id").removeClass("taken");
        }
        /* FOR PARKING STATION 4 */
        if (data[7] == 1) {
            $("#PS4P1id").addClass("taken");
            $("#PS4P1id").removeClass("free");
        } else if (data[7] == 0) {
            $("#PS4P1id").addClass("free");
            $("#PS4P1id").removeClass("taken");
        }
        if (data[8] == 1) {
            $("#PS4P2id").addClass("taken");
            $("#PS4P2id").removeClass("free");
        } else if (data[8] == 0) {
            $("#PS4P2id").addClass("free");
            $("#PS4P2id").removeClass("taken");
        }
        });
        
</script>
<script type="text/javascript">
var url_string = window.location.href;
var url = new URL(url_string);
var c = url.searchParams.get("ps");
if(c==1)
{
	document.write("<input type='button' value='IncrementP1' onclick='callP1incr()'>");
}
else if(c==2)
{
	document.write("<input type='button' value='IncrementP2' onclick='callP2incr()'>");
}
else if(c==3)
{
	document.write("<input type='button' value='IncrementP3' onclick='callP3incr()'>");
}
else if(c==4)
{
	document.write("<input type='button' value='IncrementP4 ' onclick='callP4incr()'>");
}
function callP1incr()
{
	var z=<%=session.getAttribute("Pspace1").toString()%>
	z++;		
	window.location.replace("parking1.jsp?param1="+z);		
}
function callP2incr()
{
	var z=<%=session.getAttribute("Pspace2").toString()%>
	z++;		
	window.location.replace("parking1.jsp?param2="+z);		
}
function callP3incr()
{
	var z=<%=session.getAttribute("Pspace3").toString()%>
	z++;		
	window.location.replace("parking1.jsp?param3="+z);		
}
function callP4incr()
{
	var z=<%=session.getAttribute("Pspace4").toString()%>
	z++;		
	window.location.replace("parking1.jsp?param4="+z);		
}
</script>
<%
String var1=request.getParameter("param1");
//String var11=request.getParameter("param11");
String var2=request.getParameter("param2");
//String var22=request.getParameter("param22");
String var3=request.getParameter("param3");
//String var33=request.getParameter("param33");
String var4=request.getParameter("param4");
//String var44=request.getParameter("param44");
	if(var1 != null){
		session.setAttribute("Pspace1", var1);	
	}
/* 	if(var11 != null){
		session.setAttribute("Pspace1", var11);	
	}
 */	if(var2 != null){
		session.setAttribute("Pspace2", var2);	
	}
/* 	if(var22 != null){
		session.setAttribute("Pspace2", var22);	
	}
 */	if(var3 != null){
		session.setAttribute("Pspace3", var3);	
	}
/* 	if(var33 != null){
		session.setAttribute("Pspace3", var33);	
	}
 */	if(var4 != null){
		session.setAttribute("Pspace4", var4);	
	}
/* 	if(var44 != null){
		session.setAttribute("Pspace4", var44);	
	}
 */
out.print("<form action='login2.jsp'>");
out.print("<pre>");
out.print("<input type='submit' value='Log in Page'>");
out.print("</pre>");
out.print("</form>");

%>
</html> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>PARK IT - Lot Selection</title>
	<link rel="icon" href="images/parking-sign.ico">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<script src="js/mqttws31.js"></script>

<script src="https://www.gstatic.com/firebasejs/4.12.1/firebase.js"></script>

<script src="https://www.gstatic.com/firebasejs/4.12.1/firebase.js"></script>

<script type="text/javascript">
  // Initialize Firebase
  var sp1=0,sp2=0,sp3=0,sp4=0;	
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
        	sp1++;
        }
        if (data[1] == 1) {
            sp1++;
        }
        if (data[2] == 1) {
        	sp1++;
        }
        if (data[3] == 1) {
        	sp1++;
        }
        /* FOR PARKING STATION 2 */
        if (data[4] == 1) {
         	sp2++;
        } 
        /* FOR PARKING STATION 3 */
        if (data[5] == 1) {
            sp3++;
        } 
        if (data[6] == 1) {
            sp3++;
        }
        /* FOR PARKING STATION 4 */
        if (data[7] == 1) {
            sp4++;
        } 
        if (data[8] == 1) {
            sp4++;
        }
       	/* document.write("<input type='button' value='Upadate Space' onclick='callSpace()'>"); */
        window.location.replace("index2.jsp?param1="+sp1+"&param2="+sp2+"&param3="+sp3+"&param4="+sp4);
    });
        console.log(sp1+" "+sp2+" "+sp3+" "+sp4);
        var url_string = window.location.href;
        var url = new URL(url_string);
        var var1 = url.searchParams.get("param1");
        var var2 = url.searchParams.get("param2");
        var var3 = url.searchParams.get("param3");
        var var4 = url.searchParams.get("param4");
        console.log(var1+" "+var2+" "+var3+" "+var4);
</script>

<script>
  	
   	var distance_cs_p1=2;		//ditance from source to parking lots
	var distance_cs_p2=2.8;
	var distance_cs_p3=3.2;
	var distance_cs_p4=4.2;
	
	var distance_p1_p2=0.6;		//distance from parking lot to neighboring nodes 
	var distance_p1_p3=1.2;
	var distance_p2_p4=0.8;
	var distance_p3_p4=1.6;
	
	var space_p1=var1;	//values of space intial values received from s1.java
	var space_p2=var2;
	var space_p3=var3;
	var space_p4=var4;
	
	if(space_p1 == null){
		space_p1 = 0;
	}
	if(space_p2 == null){
		space_p2 = 0;
	}
	if(space_p3 == null){
		space_p3 = 0;
	}
	if(space_p4 == null){
		space_p4 = 0;
	}
	var largeD=0;
	var largeS=0;

	var parkingcapacity_p1=4;	//parking capacit value across each node
	var parkingcapacity_p2=1;
	var parkingcapacity_p3=2;
	var parkingcapacity_p4=2;
	
	var distance_cs_p=[2,2.8,3.2,4.2];	//array to store all values of distance from source to parking lots
	var cspace_p=[4,1,2,2];		//array to store all values of space capacity across the parking lots 
	for(var i=0;i<distance_cs_p.length;i++)	//loop to determine the largest distance value
	{
		if(largeD<distance_cs_p[i])
			largeD=distance_cs_p[i];
	}
	for(var i=0;i<cspace_p.length;i++)		//loop to determine the largest space value
	{
		if(largeS<cspace_p[i])
			largeS=cspace_p[i];
	}
	
	var csp1,csp2,csp3,csp4;									//implementation of algo formula
	var a=0.2,b=0.8;
	csp1=a*(distance_cs_p1/largeD)+(b*(space_p1/largeS));
	csp2=a*(distance_cs_p2/largeD)+(b*(space_p2/largeS));
	csp3=a*(distance_cs_p3/largeD)+b*(space_p3/largeS);
	csp4=a*(distance_cs_p4/largeD)+b*(space_p4/largeS);
	
/* 	document.write(" space_p1 "+space_p1);document.write(" space_p2 "+space_p2);document.write(" space_p3 "+space_p3);document.write(" space_p4 "+space_p4+"<br>");
 */ 	
	var csp=[csp1,csp2,csp3,csp4];
	var smallcsp=1000;
	var k=0;
	
/* 	document.write("<br> "+csp1+" "+csp2+" "+csp3+" "+csp4);
 */	
	for(var i=0;i<csp.length;i++)
	{
		if(smallcsp>csp[i])
		{
			smallcsp=csp[i];
			k=i;
		}
	}
	
	if(k==0)				//for p1
	{ 
		if(space_p1<4)
		{
				document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
				document.write("<h3>Please proceed to PARKING LOT 1</h3>");
				document.write("<form action='parking1.jsp'>");
				document.write("<pre>");
				document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
				document.write("</pre>");
				document.write("</form>");	
		}
		else
		{
			document.write("<h1>PARKING LOT 1 fully occupied.<br>Checking for free space across neighbors: PARKING LOT 2 and PARKING LOT 3</h1>");
			var p1_p2,p1_p3;
			if(distance_p1_p2<distance_p1_p3)
				largeD=distance_p1_p3;
			else
				largeD=distance_p1_p2;
			
			if(parkingcapacity_p2<parkingcapacity_p3)
				largeS=parkingcapacity_p3;
			else
				largeS=parkingcapacity_p2;
			
			p1_p2=a*(distance_p1_p2/largeD)+(b*(space_p2/largeS));
			p1_p3=a*(distance_p1_p3/largeD)+(b*(space_p3/largeS));
			if(p1_p2<p1_p3)
			{
						if(space_p2<1)
						{
							document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
							document.write("<h3>Please proceed to PARKING LOT 2</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p3<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
							document.write("<h3>Please proceed to PARKING LOT 3</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");		
						}
						else if(space_p4<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
							document.write("<h3>Please proceed to PARKING LOT 4</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
			}
			else
			{
						if(space_p3<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
							document.write("<h3>Please proceed to PARKING LOT 3</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p2<1)
						{
							document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
							document.write("<h3>Please proceed to PARKING LOT 2</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");
			
						}
						else if(space_p4<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
							document.write("<h3>Please proceed to PARKING LOT 4</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}				
			}
		}
	}
	else if(k==1)		//for p2
	{
		if(space_p2<1)
		{
			document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
			document.write("<h3>Please proceed to PARKING LOT 2</h3>");
			document.write("<form action='parking1.jsp'>");
			document.write("<pre>");
			document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
			document.write("</pre>");
			document.write("</form>");
		}
		else
		{
			document.write("<h1>PARKING LOT 2 fully occupied.<br>Checking for free space across neighbors: PARKING LOT 1 and PARKING LOT 4</h1>");
			var p2_p1,p2_p4;
			if(distance_p1_p2<distance_p2_p4)
				largeD=distance_p2_p4;
			else
				largeD=distance_p1_p2;
			
			if(parkingcapacity_p1<parkingcapacity_p4)
				largeS=parkingcapacity_p4;
			else
				largeS=parkingcapacity_p1;
			
			p2_p1=a*(distance_p1_p2/largeD)+(b*(space_p1/largeS));
			p2_p4=a*(distance_p2_p4/largeD)+(b*(space_p4/largeS));
			if(p2_p1<p2_p4)
			{
						if(space_p1<4)
						{
							document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
							document.write("<h3>Please proceed to PARKING LOT 1</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");
						}
						else if(space_p4<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
							document.write("<h3>Please proceed to PARKING LOT 4</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");
						}
						else if(space_p3<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
							document.write("<h3>Please proceed to PARKING LOT 3</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
			}
			else
			{
						if(space_p4<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
							document.write("<h3>Please proceed to PARKING LOT 4</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");
						}
						else if(space_p1<4)
						{
							document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
							document.write("<h3>Please proceed to PARKING LOT 1</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");
						}
						else if(space_p3<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
							document.write("<h3>Please proceed to PARKING LOT 3</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
		
			}
			
		}
		
	}
	else if(k==2)		//for p3
	{
		if(space_p3<2)
		{
			document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
			document.write("<h3>Please proceed to PARKING LOT 3</h3>");
			document.write("<form action='parking1.jsp'>");
			document.write("<pre>");
			document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
			document.write("</pre>");
			document.write("</form>");	
		}
		else
		{
			document.write("<h1>PARKING LOT 3 fully occupied.<br>Checking for free space across neighbors: PARKING LOT 1 and PARKING LOT 4</h1>");
			var p3_p1,p3_p4;
			if(distance_p1_p3<distance_p3_p4)
				largeD=distance_p3_p4;
			else
				largeD=distance_p1_p3;
			
			if(parkingcapacity_p1<parkingcapacity_p4)
				largeS=parkingcapacity_p4;
			else
				largeS=parkingcapacity_p1;
			
			p3_p1=a*(distance_p1_p3/largeD)+(b*(space_p1/largeS));
			p3_p4=a*(distance_p3_p4/largeD)+(b*(space_p4/largeS));
			if(p3_p1<p3_p4)
			{
						if(space_p1<4)
						{
							document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
							document.write("<h3>Please proceed to PARKING LOT 1</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p4<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
							document.write("<h3>Please proceed to PARKING LOT 4</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p2<1)
						{
							document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
							document.write("<h3>Please proceed to PARKING LOT 2</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
			}
			else
			{
						if(space_p4<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
							document.write("<h3>Please proceed to PARKING LOT 4</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p1<4)
						{
							document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
							document.write("<h3>Please proceed to PARKING LOT 1</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p2<1)
						{
							document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
							document.write("<h3>Please proceed to PARKING LOT 2</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
				
			}
		}		
	}
	else if(k==3)		//for p4
	{
		if(space_p4<2)
		{
			document.write("<h1>Recommended for you: PARKING LOT 4</h1>");
			document.write("<h3>Please proceed to PARKING LOT 4</h3>");
			document.write("<form action='parking1.jsp'>");
			document.write("<pre>");
			document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
			document.write("</pre>");
			document.write("</form>");	
		}
		else
		{
			document.write("<h1>PARKING LOT 4 fully occupied.<br>Checking for free space across neighbors: PARKING LOT 3 and PARKING LOT 2</h1>");
			var p3_p4,p2_p4;
			if(distance_p3_p4<distance_p2_p4)
				largeD=distance_p2_p4;
			else
				largeD=distance_p3_p4;
			
			if(parkingcapacity_p3<parkingcapacity_p2)
				largeS=parkingcapacity_p2;
			else
				largeS=parkingcapacity_p3;
			
			p3_p4=a*(distance_p3_p4/largeD)+(b*(space_p3/largeS));
			p2_p4=a*(distance_p2_p4/largeD)+(b*(space_p2/largeS));
			if(p3_p4<p2_p4)
			{
						if(space_p3<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
							document.write("<h3>Please proceed to PARKING LOT 3</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");		
						}
						else if(space_p2<1)
						{
							document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
							document.write("<h3>Please proceed to PARKING LOT 2</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p1<4)
						{
							document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
							document.write("<h3>Please proceed to PARKING LOT 1</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
			}
			else
			{
						if(space_p2<1)
						{
							document.write("<h1>Recommended for you: PARKING LOT 2</h1>");
							document.write("<h3>Please proceed to PARKING LOT 2</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else if(space_p3<2)
						{
							document.write("<h1>Recommended for you: PARKING LOT 3</h1>");
							document.write("<h3>Please proceed to PARKING LOT 3</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");		
						}
						else if(space_p1<4)
						{
							document.write("<h1>Recommended for you: PARKING LOT 1</h1>");
							document.write("<h3>Please proceed to PARKING LOT 1</h3>");
							document.write("<form action='parking1.jsp'>");
							document.write("<pre>");
							document.write("<input type='submit' value='SHOW ME CURRENT STATUS'>");
							document.write("</pre>");
							document.write("</form>");	
						}
						else
						{
							document.write("<br><br>");	
							document.write("<h1>SORRY</h1>");
							document.write("<h3>It seems currently no free space is available.Please Come back later.</h3>");
						}
			}
		}		
	}  
</script>

</body>
</html>
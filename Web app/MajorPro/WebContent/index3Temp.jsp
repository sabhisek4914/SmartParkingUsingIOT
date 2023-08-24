<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<script>
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
        document.write("FIrebase Connceted");
       	document.write("<input type='button' value='Upadate Space' onclick='callSpace()'>");        	
        function callSpace()
        {
        	window.location.replace("index2.jsp?param1="+sp1+"&param2="+sp2+"&param3="+sp3+"&param4="+sp4);		
        }

        });
    
   	var url_string = window.location.href;
   	var url = new URL(url_string);
   	var var1 = url.searchParams.get("param1");
   	var var2 = url.searchParams.get("param2");
   	var var3 = url.searchParams.get("param3");
   	var var4 = url.searchParams.get("param4");
    document.write("var1="+var1+"var2"+var2+"var3"+var3+"var4"+var4);
</script>
  	
 <%  	
   	double distance_cs_p1=2;		//ditance from source to parking lots
	double distance_cs_p2=2.8;
	double distance_cs_p3=3.2;
	double distance_cs_p4=4.2;
	
	double distance_p1_p2=0.6;		//distance from parking lot to neighboring nodes 
	double distance_p1_p3=1.2;
	double distance_p2_p4=0.8;
	double distance_p3_p4=1.6;
	
	double space_p1=Double.parseDouble(session.getAttribute("Pspace1").toString());	//values of space intial values received from s1.java
	double space_p2=Double.parseDouble(session.getAttribute("Pspace2").toString());
	double space_p3=Double.parseDouble(session.getAttribute("Pspace3").toString());
	double space_p4=Double.parseDouble(session.getAttribute("Pspace4").toString());;
	
	double largeD=0;
	double largeS=0;

	double parkingcapacity_p1=4;	//parking capacit value across each node
	double parkingcapacity_p2=1;
	double parkingcapacity_p3=2;
	double parkingcapacity_p4=2;
	
	double distance_cs_p[]=new double[4];	//array to store all values of distance from source to parking lots
	distance_cs_p[0]=2;
	distance_cs_p[1]=2.8;
	distance_cs_p[2]=3.2;
	distance_cs_p[3]=4.2;
	double cspace_p[]=new double[4];		//array to store all values of space capacity across the parking lots 
	cspace_p[0]=4;
	cspace_p[1]=1;
	cspace_p[2]=2;
	cspace_p[3]=2;
	for(int i=0;i<distance_cs_p.length;i++)	//loop to determine the largest distance value
	{
		if(largeD<distance_cs_p[i])
			largeD=distance_cs_p[i];
	}
	for(int i=0;i<cspace_p.length;i++)		//loop to determine the largest space value
	{
		if(largeS<cspace_p[i])
			largeS=cspace_p[i];
	}
	
	double csp1,csp2,csp3,csp4;									//implementation of algo formula
	double a=0.2,b=0.8;
	csp1=a*(distance_cs_p1/largeD)+(b*(space_p1/largeS));
	csp2=a*(distance_cs_p2/largeD)+(b*(space_p2/largeS));
	csp3=a*(distance_cs_p3/largeD)+b*(space_p3/largeS);
	csp4=a*(distance_cs_p4/largeD)+b*(space_p4/largeS);
	
	out.print(" space_p1 "+space_p1);out.print(" space_p2 "+space_p2);out.print(" space_p3 "+space_p3);out.print(" space_p4 "+space_p4+"<br>");
 	
	double csp[]=new double[4];
	csp[0]=csp1;
	csp[1]=csp2;
	csp[2]=csp3;
	csp[3]=csp4;
	double smallcsp=1000;
	int k=0;
	
	out.print("<br> "+csp1+" "+csp2+" "+csp3+" "+csp4);
	
	for(int i=0;i<csp.length;i++)
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
			out.print("<h1>Park your car at P1</h1>");
			String a1=Double.toString(space_p1);
			session.setAttribute("Pspace1", a1);
			if(a1!=null)
			{
				out.print("<form action='parking1.jsp'>");
				out.print("<pre>");
				out.print("<input type='hidden' name='ps' value='1'>");
				out.print("<input type='submit' value='go P1'>");
				out.print("</pre>");
				out.print("</form>");
			}	
		}
		else
		{
			out.print("<h1>Space not available at P1 checking space across neighbor P2,P3</h1>");
			double p1_p2,p1_p3;
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
							out.print("<h1>Park your car at P2</h1>");
							String a12=Double.toString(space_p2);
							session.setAttribute("Pspace2", a12);
							if(a12!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='2'>");
								out.print("<input type='submit' value='go P2'>");
								out.print("</pre>");
								out.print("</form>");
							}
			
						}
						else if(space_p3<2)
						{
							out.print("<h1>Park your car at P3</h1>");
							String a13=Double.toString(space_p3);
							session.setAttribute("Pspace3", a13);
							if(a13!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='3'>");
								out.print("<input type='submit' value='go P3'>");
								out.print("</pre>");
								out.print("</form>");	
							}	
						}
						else if(space_p4<2)
						{
							out.print("<h1>Park your car at P4</h1>");
							String a14=Double.toString(space_p4);
							session.setAttribute("Pspace4", a14);
							if(a14!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='4'>");
								out.print("<input type='submit' value='go P4'>");
								out.print("</pre>");
								out.print("</form>");
							}					
						}
						else
						{
							out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
			}
			else
			{
						if(space_p3<2)
						{
							out.print("<h1>Park your car at P3</h1>");
							String a13=Double.toString(space_p3);
							session.setAttribute("Pspace3", a13);
							if(a13!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='3'>");
								out.print("<input type='submit' value='go P3'>");
								out.print("</pre>");
								out.print("</form>");	
							}
						}
						else if(space_p2<1)
						{
							out.print("<h1>Park your car at P2</h1>");
							String a12=Double.toString(space_p2);
							session.setAttribute("Pspace2", a12);
							if(a12!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='2'>");
								out.print("<input type='submit' value='go P2'>");
								out.print("</pre>");
								out.print("</form>");
							}
			
						}
						else if(space_p4<2)
						{
							out.print("<h1>Park your car at P4</h1>");
							String a14=Double.toString(space_p4);
							session.setAttribute("Pspace4", a14);
							if(a14!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='4'>");
								out.print("<input type='submit' value='go P4'>");
								out.print("</pre>");
								out.print("</form>");
							}					
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}				
			}
		}
	}
	else if(k==1)		//for p2
	{
		if(space_p2<1)
		{
			out.print("<h1>Park your car at P2</h1>");
			String a2=Double.toString(space_p2);
			session.setAttribute("Pspace2", a2);
			if(a2!=null)
			{
				out.print("<form action='parking1.jsp'>");
				out.print("<pre>");
				out.print("<input type='hidden' name='ps' value='2'>");
				out.print("<input type='submit' value='go P2'>");
				out.print("</pre>");
				out.print("</form>");
			}	
		}
		else
		{
			out.print("<h1>Space not available at P2 checking space across P1,P4</h1>");
			double p2_p1,p2_p4;
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
							out.print("<h1>Park your car at P1</h1>");
							String a1=Double.toString(space_p1);
							session.setAttribute("Pspace1", a1);
							if(a1!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='1'>");
								out.print("<input type='submit' value='go P1'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else if(space_p4<2)
						{
							out.print("<h1>Park your car at P4</h1>");
							String a14=Double.toString(space_p4);
							session.setAttribute("Pspace4", a14);
							if(a14!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='4'>");
								out.print("<input type='submit' value='go P4'>");
								out.print("</pre>");
								out.print("</form>");
							}					
						}
						else if(space_p3<2)
						{
							out.print("<h1>Park your car at P3</h1>");
							String a13=Double.toString(space_p3);
							session.setAttribute("Pspace3", a13);
							if(a13!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='3'>");
								out.print("<input type='submit' value='go P3'>");
								out.print("</pre>");
								out.print("</form>");	
							}
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
			}
			else
			{
						if(space_p4<2)
						{
							out.print("<h1>Park your car at P4</h1>");
							String a14=Double.toString(space_p4);
							session.setAttribute("Pspace4", a14);
							if(a14!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='4'>");
								out.print("<input type='submit' value='go P4'>");
								out.print("</pre>");
								out.print("</form>");
							}					
						}
						else if(space_p1<4)
						{
							out.print("<h1>Park your car at P1</h1>");
							String a1=Double.toString(space_p1);
							session.setAttribute("Pspace1", a1);
							if(a1!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='1'>");
								out.print("<input type='submit' value='go P1'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else if(space_p3<2)
						{
							out.print("<h1>Park your car at P3</h1>");
							String a13=Double.toString(space_p3);
							session.setAttribute("Pspace3", a13);
							if(a13!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='3'>");
								out.print("<input type='submit' value='go P3'>");
								out.print("</pre>");
								out.print("</form>");	
							}
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
		
			}
			
		}
		
	}
	else if(k==2)		//for p3
	{
		if(space_p3<2)
		{
			out.print("<h1>Park your car at P3</h1>");
			String a3=Double.toString(space_p3);
			session.setAttribute("Pspace3", a3);
			if(a3!=null)
			{
				out.print("<form action='parking1.jsp'>");
				out.print("<pre>");
				out.print("<input type='hidden' name='ps' value='3'>");
				out.print("<input type='submit' value='go P3'>");
				out.print("</pre>");
				out.print("</form>");	
			}	
		}
		else
		{
			out.print("<h1>Space not available at P3 checking space across P1,P4</h1>");
			double p3_p1,p3_p4;
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
							out.print("<h1>Park your car at P1</h1>");
							String a1=Double.toString(space_p1);
							session.setAttribute("Pspace1", a1);
							if(a1!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='1'>");
								out.print("<input type='submit' value='go P1'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else if(space_p4<2)
						{
							out.print("<h1>Park your car at P4</h1>");
							String a14=Double.toString(space_p4);
							session.setAttribute("Pspace4", a14);
							if(a14!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='4'>");
								out.print("<input type='submit' value='go P4'>");
								out.print("</pre>");
								out.print("</form>");
							}					
						}
						else if(space_p2<1)
						{
							out.print("<h1>Park your car at P2</h1>");
							String a2=Double.toString(space_p2);
							session.setAttribute("Pspace2", a2);
							if(a2!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='2'>");
								out.print("<input type='submit' value='go P2'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
			}
			else
			{
						if(space_p4<2)
						{
							out.print("<h1>Park your car at P4</h1>");
							String a14=Double.toString(space_p4);
							session.setAttribute("Pspace4", a14);
							if(a14!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='4'>");
								out.print("<input type='submit' value='go P4'>");
								out.print("</pre>");
								out.print("</form>");
							}					
						}
						else if(space_p1<4)
						{
							out.print("<h1>Park your car at P1</h1>");
							String a1=Double.toString(space_p1);
							session.setAttribute("Pspace1", a1);
							if(a1!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='1'>");
								out.print("<input type='submit' value='go P1'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else if(space_p2<1)
						{
							out.print("<h1>Park your car at P2</h1>");
							String a2=Double.toString(space_p2);
							session.setAttribute("Pspace2", a2);
							if(a2!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='2'>");
								out.print("<input type='submit' value='go P2'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
				
			}
		}		
	}
	else if(k==3)		//for p4
	{
		if(space_p4<2)
		{
			out.print("<h1>Park your car at P4</h1>");
			String a4=Double.toString(space_p4);
			session.setAttribute("Pspace4", a4);
			if(a4!=null)
			{
				out.print("<form action='parking1.jsp'>");
				out.print("<pre>");
				out.print("<input type='hidden' name='ps' value='4'>");
				out.print("<input type='submit' value='go P4'>");
				out.print("</pre>");
				out.print("</form>");
			}	
		}
		else
		{
			out.print("<h1>Space not available at P4 checking space across P3,P2</h1>");
			double p3_p4,p2_p4;
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
							out.print("<h1>Park your car at P3</h1>");
							String a3=Double.toString(space_p3);
							session.setAttribute("Pspace3", a3);
							if(a3!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='3'>");
								out.print("<input type='submit' value='go P3'>");
								out.print("</pre>");
								out.print("</form>");	
							}	
						}
						else if(space_p2<1)
						{
							out.print("<h1>Park your car at P2</h1>");
							String a2=Double.toString(space_p2);
							session.setAttribute("Pspace2", a2);
							if(a2!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='2'>");
								out.print("<input type='submit' value='go P2'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else if(space_p1<4)
						{
							out.print("<h1>Park your car at P1</h1>");
							String a1=Double.toString(space_p1);
							session.setAttribute("Pspace1", a1);
							if(a1!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='1'>");
								out.print("<input type='submit' value='go P1'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
			}
			else
			{
						if(space_p2<1)
						{
							out.print("<h1>Park your car at P2</h1>");
							String a2=Double.toString(space_p2);
							session.setAttribute("Pspace2", a2);
							if(a2!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='2'>");
								out.print("<input type='submit' value='go P2'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else if(space_p3<2)
						{
							out.print("<h1>Park your car at P3</h1>");
							String a3=Double.toString(space_p3);
							session.setAttribute("Pspace3", a3);
							if(a3!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='3'>");
								out.print("<input type='submit' value='go P3'>");
								out.print("</pre>");
								out.print("</form>");	
							}	
						}
						else if(space_p1<4)
						{
							out.print("<h1>Park your car at P1</h1>");
							String a1=Double.toString(space_p1);
							session.setAttribute("Pspace1", a1);
							if(a1!=null)
							{
								out.print("<form action='parking1.jsp'>");
								out.print("<pre>");
								out.print("<input type='hidden' name='ps' value='1'>");
								out.print("<input type='submit' value='go P1'>");
								out.print("</pre>");
								out.print("</form>");
							}	
						}
						else
						{
					 		out.print("Space not available sry!!!!!!!!!!!!!!!!");
						}
			}
		}		
	}  
%>

</body>
</html>
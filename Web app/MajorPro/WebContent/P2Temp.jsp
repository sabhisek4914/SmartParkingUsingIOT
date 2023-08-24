<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>parking1 jsp page</h1>
<%
String i1,i2,i3,i4;
i1=null;
i2=null;
i3=null;
i4=null;

i1 = session.getAttribute("Pspace1").toString();
i2 = session.getAttribute("Pspace2").toString();
i3 = session.getAttribute("Pspace3").toString();
i4 = session.getAttribute("Pspace4").toString();
out.print(" i1 "+i1);out.print(" i2 "+i2);out.print(" i3 "+i3);out.print(" i4 "+i4+"<br>");

int status=Integer.parseInt(request.getParameter("ps"));

if(status==1)
{
	double space1=Double.parseDouble(i1);
	space1++;	
	i1=Double.toString(space1);
	session.setAttribute("Pspace1", i1);	
}
if(status==2)
{
	double space2=Double.parseDouble(i2);
	space2++;	
	i2=Double.toString(space2);
	session.setAttribute("Pspace2", i2);
}

if(status==3)
{
	double space3=Double.parseDouble(i3);
	space3++;	
	i3=Double.toString(space3);
	session.setAttribute("Pspace3", i3);	
}

if(status==4)
{
	double space4=Double.parseDouble(i4);
	space4++;	
	i4=Double.toString(space4);
//	out.print("p4 "+i4);
	session.setAttribute("Pspace4", i4);	
}
out.print(" i1 "+i1);out.print(" i2 "+i2);out.print(" i3 "+i3);out.print(" i4 "+i4+"<br>");

out.print("<form action='index2.jsp'>");
out.print("<pre>");
out.print("<input type='submit' value='go back'>");
out.print("</pre>");
out.print("</form>");

%> 
</body>
</html>
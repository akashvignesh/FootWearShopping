<%@page import="project.ConnectProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
string country="";
try{
    Connection con=ConnectionProvider.getCon();
    Preparedstatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,mobilenumber);
    ps.setString(4,securityQuestion);
    ps.setString(5,answer);
    ps.setString(6,password);
    ps.setString(7,address);
    ps.setString(8,city);
    ps.setString(9,state);
    ps.setString(10,country);
    ps.excuteUpdate();
    response.sendRedirect("signup.jsp?msg=valid");

}
catch (Exception e)
{   System.out.Println(e);
    response.sendRedirect("signup.jsp?msg=invalid");
    

}
%>
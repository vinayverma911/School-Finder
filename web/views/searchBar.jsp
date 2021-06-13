<%-- 
    Document   : searchBar
    Created on : 7 Aug, 2020, 5:15:20 PM
    Author     : Mukesh salve
--%>

<%@page import="service.SchoolService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     System.out.println("IN SEARCH BAR PAGE .JSP");
String ctx=application.getContextPath();
String data=request.getParameter("data");
System.out.println(data);
String dataComponent[]=data.split("/");
String SearchBarLeft=dataComponent[0];
String dataString=dataComponent[1];

SchoolService s=new SchoolService();
String result=s.SearchBar(dataString, SearchBarLeft, ctx);
System.out.println("REsult in search BAr page ="+ result);
if(result=="")
{
     out.println("no suggestions");
}
else
{
     out.println(result);
}

%>

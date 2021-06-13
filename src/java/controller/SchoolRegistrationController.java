/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.*;
import util.SqlUtil;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.SchoolModel;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import service.SchoolService;

/**
 *
 * @author Ishra Ali
 */
@MultipartConfig
public class SchoolRegistrationController extends HttpServlet
{
@Override
public void service(HttpServletRequest req , HttpServletResponse resp)
 {
     int w=1;
     String ctx=getServletContext().getContextPath();
     
     String school_name=req.getParameter("school_name");
     int year=Integer.parseInt(req.getParameter("year"));
     String board=req.getParameter("board");
     String affilliation_number=req.getParameter("affilliation_number");
     String medium=req.getParameter("medium");
     String type=req.getParameter("type");
     String director_name=req.getParameter("director_name");
     String director_contact=req.getParameter("director_contact_number");
     String principal_name=req.getParameter("principal_name");
     String principal_contact=req.getParameter("principal_contact_number");
     String principals_message=req.getParameter("principals_message");
     String directors_message=req.getParameter("directors_message");
     int upto_class=Integer.parseInt(req.getParameter("upto_class"));
     String locality=req.getParameter("locality");
     String area=req.getParameter("area");
     String city=req.getParameter("city");
     String state=req.getParameter("state");
     int pin_code=Integer.parseInt(req.getParameter("pin_code"));
     String contact_number=req.getParameter("contact_number");
     String email=req.getParameter("email");
     String principal_email=req.getParameter("principal_email");
     String director_email=req.getParameter("director_email");
     String website=req.getParameter("website");
     String streams[]=req.getParameterValues("stream");
   
SchoolModel school=new SchoolModel(school_name, year, board, affilliation_number, medium, type, director_name, director_contact, principal_name, principal_contact, principals_message, directors_message, upto_class, locality, area, city, state, pin_code, contact_number, email, principal_email, director_email, website, streams);
     
    
     SchoolService service=new SchoolService();
     service.Connect();
     int result1=service.Add(school);
     int result2=-1;
     
    try 
     {
        Collection<Part> partList;
     
        partList=req.getParts();
        Iterator<Part> it=partList.iterator();
        String buildPath=req.getServletContext().getRealPath("");
         System.out.println("BUILD PATH:"+buildPath);
        
        result2=service.imageUpload(it,buildPath);
         if(result1==1 && result2>0){
        resp.sendRedirect(ctx+"/views/schoolFinder.jsp");
    }
     } 
     catch (Exception e)
     {
         System.out.println(e);
     }
     
   
     
     
 }
    
}

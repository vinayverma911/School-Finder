/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SchoolModel;
import service.SchoolService;

/**
 *
 * @author Ishra Ali
 */
public class SearchController extends HttpServlet
{
 @Override
 public void service(HttpServletRequest req, HttpServletResponse resp)
 {
     System.out.println("yha tk chla he");
      
     int pin_code=-1,upto_class=-1;
     if(!(req.getParameter("pin_code").length()==0))
     {
          pin_code=Integer.parseInt( req.getParameter("pin_code"));
     }
     if(!(req.getParameter("upto_class").length()==0))
     {
          upto_class=Integer.parseInt( req.getParameter("upto_class"));
     }
     SchoolModel school=new SchoolModel(req.getParameter("board"), req.getParameter("medium"), req.getParameter("type"),upto_class, req.getParameter("locality"), req.getParameter("area"), req.getParameter("city"), req.getParameter("state"),pin_code, req.getParameterValues("stream"));
     SchoolService service=new SchoolService(); 
    ArrayList rs=new ArrayList();
    rs  =service.Search(school);
    String context=req.getServletContext().getContextPath();
      try {
          
           if(!(rs==null)){
         req.getSession().setAttribute("result", rs);
         resp.sendRedirect(context+"/views/searchResult.jsp");
         
    }
      } catch (Exception e) {
           System.out.println("ex"+e);
      }
    
 }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.SchoolService;

/**
 *
 * @author Mukesh salve
 */
public class reviewController extends HttpServlet {

 @Override
 public void service(HttpServletRequest req, HttpServletResponse resp)
 {  
      String context=req.getServletContext().getContextPath();
      String review=req.getParameter("review");
    int rating=Integer.parseInt(String .valueOf(req.getParameter("rating").charAt(1)));
    String id=req.getParameter("school_id");
    String review_name=req.getParameter("review_name");
    String contact=req.getParameter("contact");
      
      System.out.println("review="+review+rating+id+review_name+contact);
      
      SchoolService s=new SchoolService();
      boolean check=s.checkContact(Integer.parseInt(id),contact);
           
           s.addReview(id, rating, review, review_name, contact,check);
      try {
           resp.sendRedirect(context+"/views/schoolProfile.jsp?id="+id);
      } catch (IOException ex) {
           Logger.getLogger(reviewController.class.getName()).log(Level.SEVERE, null, ex);
      }
 }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import daoImpl.SchoolDaoImpl;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.Part;
import model.SchoolModel;

/**
 *
 * @author Ishra Ali
 */
public class SchoolService 
{
     SchoolDaoImpl SchoolDaoImpl=new SchoolDaoImpl();
    public int Add(SchoolModel SchoolModel)
    {
       
        return SchoolDaoImpl.Add(SchoolModel);
        
    }
    public void Connect()
    {
        SchoolDaoImpl.Connect();
    }
    public int imageUpload(Iterator<Part> it,String buildPath)
    {
        return SchoolDaoImpl.imageUpload(it,buildPath);
    }
    public ResultSet getStreams()
    {
        return SchoolDaoImpl.getStreams();
    }
    public ArrayList Search(SchoolModel school)
           
    {
        return SchoolDaoImpl.Search(school);
    }
    public ResultSet getPicById(int id)
    {
         return SchoolDaoImpl.getPicById(id);
    }
    public String getPhoneById(int id)
    {
         return SchoolDaoImpl.getPhoneById(id);
    }
     public ResultSet getSchoolById(int id)
    {
         return SchoolDaoImpl.getSchoolById(id);
    }
     public ArrayList getStreamsById(int id)
    {
         return SchoolDaoImpl.getStreamsById(id);
    }
     public void addReview(String School_id,int rating,String review_content,String name,String contact,boolean check)
     {
          SchoolDaoImpl.addReview(School_id, rating, review_content, name, contact,check);
     }
      public int getRatingById(int id) {
           return SchoolDaoImpl.getRatingById(id);
      }
       public ResultSet getReviewById(int id){
            return SchoolDaoImpl.getReviewById(id);
       }
       public boolean checkContact(int id,String contact)
       {
            return SchoolDaoImpl.checkContact(id,contact);
       }
       public String SearchBar(String dataString,String SearchBarLeft,String ctx)
       {
            return SchoolDaoImpl.SearchBar(dataString,SearchBarLeft,ctx);
       }
      public ResultSet getFeatured()
      {
          return SchoolDaoImpl.getFeatured();
      }
      public String getCoverPicById(int id)
      {
          return SchoolDaoImpl.getCoverPicById(id);
      }
}

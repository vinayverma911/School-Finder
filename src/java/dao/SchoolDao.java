/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.Part;
import model.SchoolModel;

/**
 *
 * @author Ishra Ali
 */
public interface SchoolDao 
{
  public int Add(SchoolModel SchoolModel);
  public void Connect();
  public int imageUpload(Iterator<Part> it,String buildPath);
  public ResultSet getStreams();
  public ArrayList Search(SchoolModel school);
  public ResultSet getPicById(int id);
  public String getPhoneById(int id);
  public ResultSet getSchoolById(int id);
  public ArrayList getStreamsById(int id);
  public void addReview(String School_id,int rating,String review_content,String name,String contact,boolean check);
  public int getRatingById(int id);
  public ResultSet getReviewById(int id);
  public boolean checkContact(int id,String contact);
  public String SearchBar(String dataString,String SearchBarLeft,String ctx);
  public ResultSet getFeatured();
  public String getCoverPicById(int id);
  
  
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daoImpl;

import dao.SchoolDao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Part;
import model.SchoolModel;
import service.SchoolService;
import util.SqlUtil;
/**
 *
 * @author Ishra Ali
 */
public class SchoolDaoImpl implements SchoolDao
{

    @Override
    public int Add(SchoolModel SchoolModel)
    {
        int result=-1;
        int result1=-1;
        int result2=-1;
        int result3=-1;
        
       String query="insert into school(school_name,affilliation_number,board,medium,upto_class,email,locality,area,city,state,pin_code,year,type,principal_name,principal_phone,principal_msg,principal_email,director_name,director_phone,director_msg,director_email,website) values('"+SchoolModel.getSchool_name()+"','"+SchoolModel.getAffilliation_number()+"','"+SchoolModel.getBoard()+"','"+SchoolModel.getMedium()+"','"+SchoolModel.getUpto_class()+"','"+SchoolModel.getEmail()+"','"+SchoolModel.getLocality()+"','"+SchoolModel.getArea()+"','"+SchoolModel.getCity()+"','"+SchoolModel.getState()+"','"+SchoolModel.getPin_code()+"','"+SchoolModel.getYear()+"','"+SchoolModel.getType()+"','"+SchoolModel.getPrincipal_name()+"','"+SchoolModel.getPrincipal_contact()+"','"+SchoolModel.getPrincipals_message()+"','"+SchoolModel.getPrincipal_email()+"','"+SchoolModel.getDirector_name()+"','"+SchoolModel.getDirector_contact()+"','"+SchoolModel.getDirectors_message()+"','"+SchoolModel.getDirector_email()+"','"+SchoolModel.getWebsite()+"');";
     System.out.println(query);
     
        try
        {
             result1=SqlUtil.insert(query);
             String query2="select school_id from school;";
     ResultSet rs=SqlUtil.read(query2);
     
     int n=0;
     while(rs.next())
     {
         n=Integer.parseInt(rs.getString("school_id"));

     }
     

     
     
      System.out.println(n);
      
          for(String s :SchoolModel.getStreams())
     {
         String query3="insert into school_with_streams values('"+n+"','"+s+"');";
          result2=SqlUtil.insert(query3);
          System.out.println(query3);
     }
          
          
      result3=SqlUtil.insert("insert into contact values('"+n+"','"+SchoolModel.getContact_number()+"');");
       
         
        } 
        catch (SQLException ex) 
        {
            System.out.println(ex);
        }
        if(result1>0 && result2>0 && result3>0)
        {
            result=1;
        }
     return result;
    }

    @Override
    public void Connect()
    {
        try 
        {
            SqlUtil.createDb("create database if not exists school_finder");
            SqlUtil.connectDb();
            
            
            
            String school_table="create table if not exists school(school_id int(100) auto_increment primary key not null,school_name varchar(50),affilliation_number varchar(50),board varchar(30),medium varchar(30),upto_class int(11),email varchar(50) unique not null,locality varchar(50),area varchar(50),city varchar(30),state varchar(30),pin_code int(11),year int(11),type varchar(30),principal_name varchar(30),principal_phone varchar(15),principal_msg varchar(200),principal_email varchar(20),director_name varchar(30),director_phone varchar(15),director_msg varchar(200),director_email varchar(30),website varchar(1000));";
            SqlUtil.create(school_table);
            
            String contact_table="create table if not exists contact(school_id int(100),phone varchar(15));";
            SqlUtil.create(contact_table);
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);   
        } 
    }

    @Override
    public int imageUpload(Iterator<Part> it,String buildPath1)
    {
        int result=-1;
        int w=1;
        try 
        {
             String query2="select school_id from school;";
     ResultSet rs=SqlUtil.read(query2);
     
     int n=0;
     while(rs.next())
     {
         n=Integer.parseInt(rs.getString("school_id"));

     }
                
            while(it.hasNext())
                    {
                           Part filepart;
                       
                        filepart=it.next();
                        String filename=filepart.getSubmittedFileName();
                        System.out.println("whole filename:"+filename);
              
                        if(filename!=null){
                       // String components[]=filename.split("\\\\");
                       //  System.out.println("Length of components: "+components.length);
                       // filename=components[components.length-1];
                       // System.out.println("filename : "+filename);
                        if(filename.length()<=0){
                            break;
                        }
                        String filenameComponent[]=filename.split("\\.");
                            System.out.println("Filename component length:"+filenameComponent.length);
                        String ext=filenameComponent[filenameComponent.length-1];
                            System.out.println("extension: "+ext);
                        
                        String ImgName=n+""+w+"."+ext;
                       
                        result=SqlUtil.insert("insert into pics_of_school values('"+n+"','"+ImgName+"');");
                        
                        w++;
                       
                            
                            System.out.println(ImgName);
                        //String filename= filepart.getSubmittedFileName();
            InputStream fin= filepart.getInputStream();
           String buildPath=buildPath1;
           String pathFolder=buildPath.concat("\\");
           pathFolder=pathFolder.concat("SchoolImages\\");
           System.out.println(pathFolder);
           File f=new File(pathFolder);

           if(!f.exists())
           {
           f.mkdir();
           f.setReadable(true);
           }
            //PrintWriter out=resp.getWriter();
            String absolutePath=pathFolder+ImgName;
           int i;
            FileOutputStream fout=new FileOutputStream(absolutePath);
            
            while( (i=fin.read())!=-1)
            {
                fout.write(i);
            }           
            
            File fread=new File(absolutePath);
            int filesize=(int)fread.length();
            byte b[]=new byte[filesize];
                        }
                        
                        
                        
                        
                       
                    } 
        } catch (Exception e) {
            System.out.println(e);
        }
        return result;
        
        
    }

    @Override
    public ResultSet getStreams() {
        ResultSet rs=null;
        try {
            SqlUtil.connectDb();
String query= "select * from streams";
 rs=SqlUtil.read(query);
        } 
        
        catch (Exception e) {
            System.out.println(e);
        
        }
        return rs;
        
    }
    
    
   
  @Override
public ArrayList Search(SchoolModel school)
{
    ResultSet rs=null;
    
    //String query="SELECT * FROM school where medium=\"English\" and upto_class=12 and school_id IN (SELECT school_id FROM school_with_streams WHERE stream_id=\"strm1\" or stream_id=\"strm2\")";
    String SearchQuery="select * from school where ";
    
    System.out.println(school);
    
    if(school.getBoard()==null){}else{
         SearchQuery=SearchQuery+"board="+"\'"+school.getBoard()+"\'";
    }
    if(school.getMedium()==null){}else
            {
               SearchQuery=SearchQuery+" and "+"medium=\'"+school.getMedium()+"\'";
            }
    if((school.getType()==null)){}else
            {
               SearchQuery=SearchQuery+" and "+"type=\'"+school.getType()+"\'";
            }
     if(school.getUpto_class()<=0){}else
            {
                SearchQuery=SearchQuery+" and "+"upto_class="+school.getUpto_class();
            }   
    if(school.getLocality().length()==0){}else
            {
                SearchQuery=SearchQuery+" and "+"locality=\'"+school.getLocality()+"\'";
            }
    
    if((school.getArea().length()==0)){}else
            {
             SearchQuery=SearchQuery+" and "+"area=\'"+school.getArea()+"\'";
            }
    if((school.getCity().length()==0)){}else
            {
                SearchQuery=SearchQuery+" and "+"city=\'"+school.getCity()+"\'";
            }
    if((school.getState().length()==0)){}else
            {
                SearchQuery=SearchQuery+" and "+"state=\'"+school.getState()+"\'";
            }
    if(!(school.getPin_code()<=0))
            {
                SearchQuery=SearchQuery+" and "+"pin_code="+school.getPin_code();
            }
     if((school.getStreams()==null)){
          SearchQuery=SearchQuery+";";
     }else
            {
                int i=0;
                SearchQuery=SearchQuery+" and school_id IN ( select school_id from school_with_streams where ";
                String streams[]=school.getStreams();
                while(streams[i]!=null){
                    if(i==streams.length-1){
                       SearchQuery=SearchQuery+" stream_id =\'"+streams[i]+"\');";
                       break;
                    } 
                    else{
                         SearchQuery=SearchQuery+" stream_id = \'"+streams[i]+ "\' or ";
                    }
                    i++;
                }
               
            }
   
    System.err.println("search Query :"+SearchQuery);
         try {
             SqlUtil.connectDb();
              rs=SqlUtil.read(SearchQuery);
            ArrayList<SchoolModel> SchoolList= new ArrayList();
            ArrayList<SchoolModel> SchoolList2= new ArrayList();
           
            while(rs.next())    
            { 
                int id= rs.getInt("school_id");
                String school_name = rs.getString("school_name");
                String locality= rs.getString("locality");
                String area =rs.getString("area");
                String city = rs.getString("city");
                String state = rs.getString("state");
                int pin_code = rs.getInt("pin_code");
                
           
                SchoolModel schoolTemp = new SchoolModel(id,null,0,school_name,locality,area,city,state,pin_code,null);
                SchoolList.add(schoolTemp);
            }
            
           for(int i=0 ; i<SchoolList.size() ; i++)
           {
           SchoolModel sch = SchoolList.get(i);
           SchoolService s=new SchoolService();
           int rating=s.getRatingById(sch.getId());
           String pic =s.getCoverPicById(sch.getId());
           String phone= s.getPhoneById(sch.getId());
           
           SchoolModel schoolTemp = new SchoolModel(sch.getId(),pic,rating,sch.getSchool_name(),sch.getLocality(),sch.getArea(),sch.getCity(),sch.getState(),sch.getPin_code(),phone);
           SchoolList2.add(schoolTemp);
           }
            
            
            
              return SchoolList2;
         } catch (Exception ex) {
              System.out.println("exception in searching :"+ex);
         }
    
            return null;
}

@Override
public ResultSet getPicById(int id)
{ 
     ResultSet rs=null;
         try {
 
              rs=SqlUtil.read("select picture_path from pics_of_school where school_id="+id);
           
                    return rs;
         } catch (Exception ex) {
              System.out.println("exception here the exception;"+ex);
         }
         return rs;
}

@Override
public String getPhoneById(int id){
      ResultSet rs=null;
         try {
              
              rs=SqlUtil.read("select * from contact where school_id="+id);
             if(rs.next())
                 return rs.getString("phone");
             
         } catch (Exception ex) {
              System.out.println("exception get phone exceptiion"+ex);
         }
         return null;
}

@Override
public ResultSet getSchoolById(int id)
{
     ResultSet rs=null;
     try{
           rs=SqlUtil.read("select * from school where school_id="+id);
             
              return rs;
            }
     catch(Exception ex)
     {
          System.out.println("exception"+ex);
     }
     return rs;
}
@Override
public ArrayList getStreamsById(int id)
{
     ResultSet rs=null;
     ArrayList result=new ArrayList();
     try{
           rs=SqlUtil.read("select streams.stream_name from school_with_streams INNER JOIN streams on school_with_streams.stream_id=streams.stream_id where school_id= "+id);
             while(rs.next())
          {

          result.add(rs.getString("stream_name").toUpperCase());
            }
             
       return result;
            }
     catch(Exception ex)
     {
          System.out.println("exception"+ex);
     }
     return result;
}

     @Override
     public void addReview(String School_id, int rating, String review_content, String name, String contact,boolean check) {
         try {
              if(check){
                     SqlUtil.update("update review set review_content='"+review_content+"',rating='"+rating+"',name='"+name+"',review_date=curdate() where contact ='"+contact+"';");
                   
              }
             else    
                   SqlUtil.insert("insert into review(School_id,rating,Review_content,Name,Review_date,contact) values('"+School_id+"','"+rating+"','"+review_content+"','"+name+"',curdate(),'"+contact+"');");
         } catch (SQLException ex) {
              Logger.getLogger(SchoolDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
         }
     }

     @Override
     public int getRatingById(int id) {
          ResultSet rs=null;
         // System.out.println("in function get rating");
          try {
              rs= SqlUtil.read("select avg(rating) as rating from review where school_id='"+id+"';");
              
              rs.next();
               //System.out.println("rating=====for id==="+id+Math.round( Float.parseFloat(rs.getString("rating")) ) );
             return Math.round( Float.parseFloat(rs.getString("rating")) );
          } catch (Exception e) {
               System.out.println(e.getMessage()+"exception occured in get rating by id ");
          }
        //  System.out.println("end of the function get rating");
          return 0;
     }
     
     @Override
     public ResultSet getReviewById(int id)
     {
           ResultSet rs=null;
    
     try{
           rs=SqlUtil.read("select * from review where school_id= "+id);
               return rs;
            }
     catch(Exception ex)
     {
          System.out.println("exception"+ex);
     }
     return rs;
     }

     @Override
     public boolean checkContact(int id,String contact) {
          boolean result=false;
         try{
              ResultSet rs=SqlUtil.read("select * from review where school_id='"+id+"' and contact="+contact);
              if(rs.next())
                   result= true;
              
         }
         catch(Exception ex)
         {
              System.out.println(ex.getMessage());
         }
         return result;
     }

@Override
public String SearchBar(String dataString ,String SearchBarLeft,String ctx) {
         String result="";
         String qry="select * from school where "+SearchBarLeft+" like '"+dataString+"%' ";
         
         try {
              ResultSet rs=SqlUtil.read(qry);
              while (rs.next()) 
                    {
                      if (result=="") 
                          {
      	result="<a class=\"list-group-item list-group-item-action\" href="+ctx+"/views/schoolProfile.jsp?id="+rs.getString("school_id")+">"+rs.getString("School_name")+"</a>";
                              }
                         else{
      	result=result+"<a class=\"list-group-item list-group-item-action\" href="+ctx+"/views/schoolProfile.jsp?id="+rs.getString("school_id")+">"+rs.getString("School_name")+"</a>";

                            }
                    }
         } catch (SQLException ex) {
              Logger.getLogger(SchoolDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
         }


         return result;
     }

    @Override
    public ResultSet getFeatured() {
        ResultSet rs=null;
        try{
           
            SqlUtil.connectDb();
            rs=SqlUtil.read("select * from school , pics_of_school WHERE school.school_id = pics_of_school.school_id and isFeatured=1 GROUP by school.school_id ;");
   
            return rs;
            }
          catch(Exception ex)
          {
          System.out.println("exception in getFeatured : "+ex);
          }
        System.out.println("Gett featured completed");
        return rs;
    }

    @Override
    public String getCoverPicById(int id) {
        String p=null;
        try {
         ResultSet  rs=SqlUtil.read("select picture_path from pics_of_school where school_id="+id);
         
         if(rs.next())
            return p=rs.getString("picture_path");
         
        } catch (Exception e) {
            System.out.println("Exceptiion occured in daoimpl method getCoverPicById"+ e);
        }
        return p;
    }
}



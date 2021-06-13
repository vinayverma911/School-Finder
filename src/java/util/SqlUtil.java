package util;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
/**
 *
 * @author Mukesh Salve
 */
public class SqlUtil {
    static final String dbname="school_finder";
    static String dbpass="";
    static String dbuser="root";
    static String dburl="jdbc:mysql://localhost:3308/";
    static String dburl2="jdbc:mysql://localhost:3308/"+dbname;
    static Connection conn;
    static Statement stmt;
    
    public static void createDb(String query)throws SQLException,ClassNotFoundException
{
    Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(dburl,dbuser,dbpass);
        stmt=conn.createStatement();
    
     stmt.execute(query);
}
    
    public static void create(String query)throws SQLException,ClassNotFoundException
{
    if(stmt==null)
    {
       connectDb();
    }
     stmt.execute(query);
}
    
    
    public static void connectDb()throws ClassNotFoundException, SQLException
        {
         Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(dburl2,dbuser,dbpass);
        stmt=conn.createStatement();
     
        }
    
    
    
    public static int insert(String query)throws SQLException
    {
      int result=-1;
      if(query!=null)
      {
          result=stmt.executeUpdate(query);
      }
      return result;
    }
    
   public static int delete(String query)throws SQLException
    {
      int result=-1;
      if(query!=null)
      {
          result=stmt.executeUpdate(query);
      }
      return result;
    }
    
   public static int update(String query)throws SQLException
    {
      int result=-1;
      if(query!=null)
      {
          result=stmt.executeUpdate(query);
      }
      return result;
    }
     
     
   public static ResultSet read(String query)throws SQLException
    {
        ResultSet rs=null;
        if(query!=null)
        {
            rs=stmt.executeQuery(query);
        }
        return rs;
    }
    
    
   public static void close()throws SQLException
    {
        if(conn!=null)
        {
            conn.close();
        }
        if(stmt!=null)
        {
            stmt.close();
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Ishra Ali
 */
public class SchoolModel 
{
     private String school_name;
     private int year;
     private String board;
     private String affilliation_number;
     private String medium;
     private String type;
     private String director_name;
     private String director_contact;
     private String principal_name;
     private String principal_contact;
     private String principals_message;
     private String directors_message;
     private int upto_class;
     private String locality;
     private String area;
     private String city;
     private String state;
     private int pin_code;
     private String contact_number;
     private String email;
     private String principal_email;
     private String director_email;
     private String website;
     private String streams[];
     private int rating;
     private int id;
     private String coverPic;
     private String phone ;             

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoverPic() {
        return coverPic;
    }

    public void setCoverPic(String coverPic) {
        this.coverPic = coverPic;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
     

    @Override
    public String toString() {
        //return  school_name+" "+year+" "+board+" "+affilliation_number+" "+medium+" "+type+" "+director_name+" "+director_contact+" "+principal_name+" "+principal_contact+" "+principals_message+" "+directors_message+" "+upto_class+" "+locality+" "+area+" "+city+" "+state+" "+pin_code+" "+contact_number+" "+email+" "+principal_email+" "+director_email+" "+website+" "+streams ;  //To change body of generated methods, choose Tools | Templates.
       return board+" "+medium+" "+type+" "+upto_class+" "+locality+" "+area+" "+city+" "+state+" "+pin_code+" "+streams;
    }
    
    public SchoolModel(int id,String coverPic,int rating,String school_name,String locality,String area,String city,String state, int pin_code,String phone )
    {
        this.school_name = school_name;
        this.id = id;
        this.coverPic = coverPic;
        this.rating = rating;
        this.locality= locality;
        this.area = area;
        this.city= city;
        this.state = state;
        this.pin_code =pin_code;
        this.phone = phone;
    }

     public SchoolModel(String school_name, int year, String board, String affilliation_number, String medium, String type, String director_name, String director_contact, String principal_name, String principal_contact, String principals_message, String directors_message, int upto_class, String locality, String area, String city, String state, int pin_code, String contact_number, String email, String principal_email, String director_email, String website, String[] streams) {
          this.school_name = school_name;
          this.year = year;
          this.board = board;
          this.affilliation_number = affilliation_number;
          this.medium = medium;
          this.type = type;
          this.director_name = director_name;
          this.director_contact = director_contact;
          this.principal_name = principal_name;
          this.principal_contact = principal_contact;
          this.principals_message = principals_message;
          this.directors_message = directors_message;
          this.upto_class = upto_class;
          this.locality = locality;
          this.area = area;
          this.city = city;
          this.state = state;
          this.pin_code = pin_code;
          this.contact_number = contact_number;
          this.email = email;
          this.principal_email = principal_email;
          this.director_email = director_email;
          this.website = website;
          this.streams = streams;
     }
     
     
     

    public SchoolModel(String board, String medium, String type, int upto_class, String locality, String area, String city, String state, int pin_code, String[] streams) {
        this.board = board;
        this.medium = medium;
        this.type = type;
        this.upto_class = upto_class;
        this.locality = locality;
        this.area = area;
        this.city = city;
        this.state = state;
        this.pin_code = pin_code;
        this.streams = streams;
    }
     
     
     

    public String getSchool_name() {
        return school_name;
    }

    public void setSchool_name(String school_name) {
        this.school_name = school_name;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getBoard() {
        return board;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    public String getAffilliation_number() {
        return affilliation_number;
    }

    public void setAffilliation_number(String affilliation_number) {
        this.affilliation_number = affilliation_number;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDirector_name() {
        return director_name;
    }

    public void setDirector_name(String director_name) {
        this.director_name = director_name;
    }

    public String getDirector_contact() {
        return director_contact;
    }

    public void setDirector_contact(String director_contact) {
        this.director_contact = director_contact;
    }

    public String getPrincipal_name() {
        return principal_name;
    }

    public void setPrincipal_name(String principal_name) {
        this.principal_name = principal_name;
    }

    public String getPrincipal_contact() {
        return principal_contact;
    }

    public void setPrincipal_contact(String principal_contact) {
        this.principal_contact = principal_contact;
    }

    public String getPrincipals_message() {
        return principals_message;
    }

    public void setPrincipals_message(String principals_message) {
        this.principals_message = principals_message;
    }

    public String getDirectors_message() {
        return directors_message;
    }

    public void setDirectors_message(String directors_message) {
        this.directors_message = directors_message;
    }

    public int getUpto_class() {
        return upto_class;
    }

    public void setUpto_class(int upto_class) {
        this.upto_class = upto_class;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getPin_code() {
        return pin_code;
    }

    public void setPin_code(int pin_code) {
        this.pin_code = pin_code;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPrincipal_email() {
        return principal_email;
    }

    public void setPrincipal_email(String principal_email) {
        this.principal_email = principal_email;
    }

    public String getDirector_email() {
        return director_email;
    }

    public void setDirector_email(String director_email) {
        this.director_email = director_email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String[] getStreams() {
        return streams;
    }

    public void setStreams(String[] streams) {
        this.streams = streams;
    }

   
     
     
}

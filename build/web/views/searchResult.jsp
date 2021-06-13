<%-- 
    Document   : searchResult
    Created on : Feb 29, 2020, 11:46:31 AM
    Author     : Ishra Ali
--%>

<%@page import="model.SchoolModel"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../blocks/header.jsp" %>
<%
   ArrayList<SchoolModel> rs=new ArrayList();
           rs =(ArrayList)request.getSession().getAttribute("result");
/*   if(rs.next())
{
     try {
               System.out.println("scchool id="+rs.getString("school_name")+"and school id="+rs.getInt("school_id"));
          } catch (Exception e) {
               System.out.println("exception occured at jsp page :"+e);
          }
  
     
     System.out.println("we got here");
     System.out.println("hello");
   //  System.out.println("scchool id="+rs.getString("schoool_name")+"and school id="+rs.getInt("school_id"));
}*/
%>


<div class="row" style="margin: 0px !important; margin-top: 70px !important;">

<div class="col-lg-1"></div>

  <div class="col-lg-10">
<div class="card">
  <div class="table-responsive"  style="background-color: white;">

  <!--Table-->
  <table class="table" >

    

    <!--Table body-->
    <tbody>
      <th><h4 style="font-weight: bold;color: #0d47a1;"><span><img src="<%=ctx%>/assets/images/icon.png"></span>&nbsp Results For Your Search.</h4></th>
     
      <% for(int i = 0 ; i<rs.size();i++){

      SchoolModel s = rs.get(i);
      
           
      %>
      <tr>
    <td>
      <div class="row" style="margin: 0px !important;">

        <div class="col-lg-1"></div>
        <div class="col-lg-10">
             <a href="<%=ctx%>/views/schoolProfile.jsp?id=<%=s.getId()%>"
          <div class="card" id="cardd" style="margin: 0px !important;background-color: white; ">
            <!-- Card content -->
            <div class="row" style="">
              <div class="col-lg-4">

                 <div class="card-body cardImage" style="background: url('<%=ctx%>/SchoolImages/<%=s.getCoverPic()%>') no-repeat center center;
                   -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                   background-size: cover;
                   height: 175px;">
                     
                   </div>
              </div>
             

              <div class="col-lg-8"> 

                <h5 style="font-weight: bold; color: #0d47a1; padding-top: 5px;"><%=s.getSchool_name()%> </h5>
                <p style="font-weight: bold; color: #0d47a1; padding-top: 5px;">Address: <%=s.getLocality()%>, <%=s.getArea()%>, <%=s.getCity()%>, <%=s.getState()%>, <%=s.getPin_code()%>      </p>
                <p style="font-weight: bold; color: #0d47a1; padding-top: 5px;">Phone:<%=s.getPhone()%> </p>
                <span style="font-weight: bold; color: #0d47a1; padding-top: 5px;">Rating: </span>
                <span> 
                    
                     
                     <% 
                    int rating = s.getRating();
                      if (rating<=5) {
                       for (int j = 1; j <=rating ; j++) {
                          
%>    &nbsp <i class="fas fa-star" style="color: #FF8800;"></i>
<%
                    
                       
                       }
                       
                        rating=5-rating;
                        for (int j = 1; j <=rating; j++) {
                           %>&nbsp <i class="fas fa-star"></i><%
                        }
  
                       }
                   %>
                    
                </span> 

               



              </div>
           
            </div>

         
         
            </div>
          </a>

        </div>
        <div class="col-lg-1"></div>
      
          </div>



        </td>
      </tr>
<%}%>
     

      
      
    </tbody>
    <!--Table body-->

  </table>
  <!--Table-->

</div>
</div>
</div>

<div class="col-lg-1"></div>
</div>


<%@include file="../blocks/footer.jsp" %>
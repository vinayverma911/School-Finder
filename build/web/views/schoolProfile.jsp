<%-- 
    Document   : schoolProfile
    Created on : Feb 29, 2020, 12:12:56 PM
    Author     : Ishra Ali
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="jdk.nashorn.internal.objects.NativeString"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../blocks/header.jsp" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name=null,affNo=null,dirName=null,dirMsg=null,dirEmail=null,priName=null,priMsg=null,priEmail=null,locality=null,area=null,city=null,state=null,pin_code=null;
String email=null,medium=null,upto_class=null,board=null,year=null,type=null,website=null;
SchoolService s=new SchoolService();
ResultSet school=s.getSchoolById(id);
if(school.next())
{
      name=NativeString.toUpperCase(school.getString("school_name")) ;
     affNo=school.getString("affilliation_number");
     dirName=school.getString("director_name");
     dirMsg=school.getString("director_msg");
     dirEmail=school.getString("director_email");
     priName=school.getString("principal_name");
     priMsg=school.getString("principal_msg");
     priEmail=school.getString("principal_email");
     locality=school.getString("locality");
     area=school.getString("area");
     city=school.getString("city");
     state=school.getString("state");
     pin_code=school.getString("pin_code");
     email=school.getString("email");
     medium=school.getString("medium");
     upto_class=school.getString("upto_class");
     board=school.getString("board");
     year=school.getString("year");
     type=school.getString("type");
     website=school.getString("website");
     
     
}
String phn=s.getPhoneById(id);


ArrayList phone = new ArrayList();

ArrayList streams=new ArrayList();
streams=s.getStreamsById(id);
//System.out.println("stream:"+streams.get(2));
ResultSet pic=s.getPicById(id);
ArrayList pics=new ArrayList();
while(pic.next())
{
     pics.add(pic.getString("picture_path"));
}

ResultSet reviews=s.getReviewById(id);

System.out.println("pic arrraylist converted");
%>
<div class=" row" style=" margin: 70px 0px 0px 0px !important;">

	<div class="col-lg-1"></div>

	<div class=" card col-lg-10">
		<div class="table-responsive">
			<table class="table">
				<tbody>
					<th>
						<h2 style="font-weight: bold; color: #0d47a1; "><%=name%></h2>
						<h6 style="font-weight: bold; color: #0d47a1;">Affiliation Number: <%=affNo%></h6>
					</th>
          <tr>
            <td>
            <div class="card">
              <!-- photo gallery code here -->
        <div class="demo-gallery">
            <ul id="lightgallery" class="list-unstyled row">
              
                 <%
                for (int j=0;j<pics.size();j++) { 
                 %>
               
                 <li class="col-xs-6 col-sm-4 col-md-3 photo"  data-src="<%=ctx%>/SchoolImages/<%=pics.get(j)%>">
                    <a href="">
                        <img class="img-responsive" src="<%=ctx%>/SchoolImages/<%=pics.get(j)%>">
                    </a>
                </li>

             <%}
System.out.println("all pics displayed");
             %>



              </ul>
        </div>
        


<!-- photo gallery code end here -->





            </div>
            </td>
          </tr>
					<tr>
						<td>
							<div class="row" style="margin: 0px !important;">
								<div class="col-lg-5">
									<div class="card">
										<div class="row">
											<div class="col-lg-12">
												<div class="table-responsive">
											<table class="table">
												<tbody>
													<th>
														
															<h4 style="font-weight: bold; color: #0d47a1; "><%=dirName%></h4>
															<p><%=dirEmail%></p>
														 	<p>Director Message:</p>
														 	<span><%=dirMsg%></span>
														
													</th>

													
													
												</tbody>
												
											</table>
										</div>
											</div>
											<div class="col-lg-12">
												<div class="table-responsive">
											<table class="table">
												<tbody>
													<th>
														
															<h4 style="font-weight: bold; color: #0d47a1; "><%=priName%></h4>
															<p><%=priEmail%></p>
														 	<p>Principal Message: </p>
														 	<span>
														 	<%=priMsg%>
														 	</span>
														
													</th>

													
													
												</tbody>
												
											</table>
										</div>
											</div>
										</div>
										
									</div>
								</div>



								<div class="col-lg-7">
									<div class="card">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<th> 
													<span style="font-size: 20px;"><i class="fas fa-university"></i></span>
												<span style="font-weight: bold; color: #0d47a1;">
													&nbsp Admission Status:</span>
													<span>open/close</span>
												</th>
												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-map-marker-alt"></i></span>
														<span   style="font-weight: bold; color: #0d47a1;"style="font-weight: bold; color: #0d47a1;">&nbsp Address:</span>
                                                                                                                                                                                                                                                                                                                   <span> <%=locality%>, <%=area%>, <%=city%>, <%=state%>, <%=pin_code%></span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-phone"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Phone:</span>
                                                                                                                                                                                                                                                                                                                            <span><%=phn%>  </span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-at"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Email:</span>
                                                                                                                                                                                                                                                                                                                            <span > <%=email%></span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="far fa-calendar-alt"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Year:</span>
                                                                                                                                                                                                                                                                                                                            <span > <%=year%></span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-user-graduate"></i></span>
														<span  style="font-weight: bold; color: #0d47a1;">&nbsp Board:</span>
                                                                                                                                                                                                                                                                                                                           <span > <%=board%></span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-microphone-alt"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Medium:</span>
                                                                                                                                                                                                                                                                                                                            <span > <%=medium%></span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-pencil-alt"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Upto Class:</span>
                                                                                                                                                                                                                                                                                                                            <span > <%=upto_class%></span>
													</td>
												</tr>
												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-male"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Type:</span>
                                                                                                                                                                                                                                                                                                                            <span > <%=type%></span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-book"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Stream:</span>
                                                                                                                                                                                                                                                                                                                               <span><% for (int j=0;j<streams.size();j++) { 
                                                                                                                                                                                                                                                                                                                                                         if(j==(streams.size()-1)){%><%=streams.get(j)%> <%}
                                                                                                                                                                                                                                                                                                                                                         else{%><%=streams.get(j)%>,  <% }}%>  </span>
													</td>
												</tr>

												<tr>
													<td>
														<span style="font-size: 20px;"><i class="fas fa-globe"></i></span>
														<span style="font-weight: bold; color: #0d47a1;">&nbsp Website:</span>
                                                                                                                                            <a href="https://<%=website%>"><%=website%></a>
													</td>
												</tr>

												
											</tbody>
										</table>
									</div>

									</div>
								</div>
							</div>
						</td>
					</tr>
          <tr>
            <td>
              <div class="card" >
               <div class="">
                    <table class="table" style="margin-bottom: 0px !important;">
                      <tbody>
                        <th> 
                         
                        <h4 style="font-weight: bold; color: #0d47a1;">
                          Reviews:</h4>
                       
                        </th>
                   <% while(reviews.next()){ %> 
                        <tr>
                          <td>
                               <p class="review" style="font-weight: bold;"><%=reviews.getString("review_content")%></p>
                            <span class="" style="    margin: 0px; font-size: 10px;"><b>By:</b> Right aligned text on all viewport sizes.</span>
                          </td>
                        </tr>
                     <%}%> 
                          <td>
                   <form  method="post" action="<%=ctx%>/reviewController">           
                                    <div class="row">

<div class="col-lg-12 form-group shadow-textarea" style="margin-bottom: 0px !important;">
     <input type="text" name="school_id" value="<%=id%>" style="display:none;" required>
     
     
     <textarea class="form-control z-depth-1" id="exampleFormControlTextarea6" rows="3" placeholder="Write review here..." name="review" required></textarea> 
 </div>
                                         <div class="col-lg-12" style="margin-top: 10px  ;">
                                               <span style="font-weight: bold; color: #0d47a1;">&nbsp Rate This School:</span>
                                                
  <span>
    <i id="1" class="fas fa-star"></i>
    <i id="2" class="fas fa-star"></i>
    <i id="3" class="fas fa-star"></i>
    <i id="4" class="fas fa-star"></i>
    <i id="5" class="fas fa-star"></i>
  </span>
                                               <input type="text" id="rating" name="rating" style="display: none;" required>
                                               <input type="text" value="<%=id%>"  name="school_id" style="display: none;">
                                         </div>
     
     
   <div class="row">
    <!-- Grid column -->
    <div class="col" style="padding-right: 0px;  width:10px; margin-left: 15px; margin-top: 10px;">
      <!-- Material input -->
             <span  style="font-weight: bold; color: #0d47a1;">&nbsp Your Name:</span>
    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col" style="padding-left: 0px; ">
      <!-- Material input -->
      <div class="md-form mt-0">
           <input type="text" name="review_name" class="form-control" placeholder="Enter Name" required>
      </div>
    </div>
    <!-- Grid column -->
  </div>
     
       <div class="row">
    <!-- Grid column -->
    <div class="col" style="padding-right: 0px; width: 50px; margin-left: 15px; margin-top: 10px;">
      <!-- Material input -->
             <span  style="font-weight: bold; color: #0d47a1;">&nbsp Your contact :</span>
    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col" style="padding-left: 0px; ">
      <!-- Material input -->
      <div class="md-form mt-0">
           <input type="text" name="contact" class="form-control" placeholder="phone no." required>
      </div>
    </div>
    <!-- Grid column -->
  </div>
     
     
     
                                         <div class="col-lg-12 "  style="margin-top: 10px  ;"> <button type="submit" class="btn btn-primary">Submit</button></div>
                                         </div>
                                    </form>
                          </td>
                        </tr>
                       
                      </tbody>
                    </table>
              </div>
            </td>
          </tr>
				</tbody>
			</table>
		</div>
		
    






	</div>
	<div class="col-lg-1"></div>

</div>
                                                                                                                      
<%@include file="../blocks/footer.jsp" %>

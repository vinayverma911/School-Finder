
<%@include file="../blocks/header.jsp" %>

<div class="col-lg-10" style="margin: 70px auto; background-color:white;" > 
    <!-- Nav tabs -->
<ul class="nav nav-tabs md-tabs nav-justified primary-color" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#panel555" role="tab">
<i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp Register Your School</a>
  </li>
  
</ul>
<!-- Nav tabs -->

<!-- Tab panels -->
<div class="tab-content" >

  <!-- Panel 1 -->
  <div class="tab-pane fade in show active" id="panel555" role="tabpanel" style="padding-left:15% !important;">

      <form class="needs-validation"  action="SchoolRegistrationController" method="post" enctype="multipart/form-data" novalidate>
  
  <div class="form-row">
    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-school prefix"  ></i>
      <label for="validationCustom012"> School name</label>
      <input type="text" class="form-control" id="validationCustom012" name="school_name" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please enter School name.
      </div>
    </div>

    <div class="col-md-5 mb-3 md-form">
    	<i class="far fa-calendar-alt prefix"></i>
      <label for="validationCustom022">Year</label>
      <input type="number" class="form-control" id="validationCustom022" name="year" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please enter year.
      </div>
    </div>

    <div class="col-md-5 mb-3 md-form form-group">
    	<i  class="fas fa-graduation-cap" style="font-size: 30px;"></i>
    <select class="custom-select" id="select-wrapper" name="board" required>
      <option value="" disabled selected>Select board</option>
      <option value="cbse board">C.B.S.E Board</option>
      <option value="mp board">M.P. Board</option>
    </select>
    <div class="valid-feedback">
        Looks good!
      </div>
    <div class="invalid-feedback">Please select Board.</div>
  </div>

    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-check prefix"></i>
      <label for="validationCustomUsername2">Affiliation number</label>
      <input type="number" name="affilliation_number" class="form-control" id="validationCustomUsername2" aria-describedby="inputGroupPrepend2"
        required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Affiliation number is required.
      </div>
    </div>

    

  <div class="col-md-5 mb-3 md-form form-group">
  	
    	<i  class="fas fa-microphone-alt" style="font-size: 30px;"></i>
    <select class="custom-select" id="select-wrapper" name="medium" required>
      <option value="" disabled selected >Select Medium</option>
      <option value="English">English</option>
      <option value="Hindi">Hindi</option>
    </select>
    <div class="valid-feedback">
        Looks good!
      </div>
    <div class="invalid-feedback">Please select Medium.</div>
  </div>


    <div class="col-md-5 mb-3 md-form form-group">
  	
    	<i  class="fas fa-male" style="font-size: 30px;"></i>
    <select class="custom-select" id="select-wrapper" name="type" required>
      <option value="" disabled selected >Select type</option>
      <option value="co-ed">Co-Ed</option>
      <option value="girls">Girls</option>
      <option value="boys">Boys</option>
    </select>
    <div class="valid-feedback">
        Looks good!
      </div>
    <div class="invalid-feedback">Please select Type.</div>
  </div>


  <div class="col-md-5 mb-3 md-form">
  	
    	<i class="fas fa-user prefix"  ></i>
      <label for="validationCustom012">Director name</label>
      <input type="text" class="form-control" id="validationCustom012" name="director_name" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please enter Director name.
      </div>
    </div>


    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-phone prefix"></i>
      <label for="validationCustomUsername2">Director Contact no.</label>
      <input type="number" class="form-control" name="director_contact_number" id="validationCustomUsername2" aria-describedby="inputGroupPrepend2"
        required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        please enter valid Contact no.
      </div>
    </div>




  <div class="col-md-5 mb-3 md-form">
  	
    	<i class="fas fa-user prefix"  ></i>
      <label for="validationCustom012">Principal name</label>
      <input type="text" class="form-control" id="validationCustom012" name="principal_name" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please enter Principal name.
      </div>
    </div>



    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-phone prefix"></i>
      <label for="validationCustomUsername2">Principal Contact no.</label>
      <input type="number" class="form-control" name="principal_contact_number" id="validationCustomUsername2" aria-describedby="inputGroupPrepend2"
        required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        please enter valid Contact no.
      </div>
    </div> 



    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-at prefix"></i>
      <label for="validationCustom042">Principal Email</label>
      <input type="email" class="form-control" id="validationCustom042" name="principal_email" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a valid Email.
      </div>
    </div>


<div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-at prefix"></i>
      <label for="validationCustom042">Director Email</label>
      <input type="email" class="form-control" id="validationCustom042" name="director_email" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a valid Email.
      </div>
    </div>
 


    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-pencil-alt prefix"></i>
      <label for="validationCustomUsername2">Upto which class</label>
      <input type="number" class="form-control" name="upto_class" id="validationCustomUsername2" aria-describedby="inputGroupPrepend2"
        required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        please enter the class.
      </div>
    </div>

    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-map-marker-alt prefix"></i>
      <label for="validationCustom042">Locality</label>
      <input type="text" class="form-control" id="validationCustom042" name="locality" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a Locality.
      </div>
    </div>

    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-location-arrow prefix"></i>
      <label for="validationCustom042">Area</label>
      <input type="text" class="form-control" id="validationCustom042" name="area" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a Area.
      </div>
    </div>

    

    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-city prefix"></i>
      <label for="validationCustom042"> City</label>
      <input type="text" class="form-control" id="validationCustom042" name="city" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a valid City.
      </div>
    </div>


    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-map-marked-alt prefix"></i>
      <label for="validationCustom042">State</label>
      <input type="text" class="form-control" id="validationCustom042" name="state" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a valid state.
      </div>
    </div>


    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-map-pin prefix"></i>
      <label for="validationCustomUsername2">Pin-Code</label>
      <input type="number" class="form-control" id="validationCustomUsername2" name="pin_code" aria-describedby="inputGroupPrepend2"
        required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        please enter the Pin-code.
      </div>
    </div>

    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-phone prefix"></i>
      <label for="validationCustomUsername2">Contact no.</label>
      <input type="number" class="form-control" name="contact_number" id="validationCustomUsername2" aria-describedby="inputGroupPrepend2"
        required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        please enter valid Contact no.
      </div>
    </div>


    <div class="col-md-5 mb-3 md-form">
    	<i class="fas fa-at prefix"></i>
      <label for="validationCustom042">Email</label>
      <input type="email" class="form-control" id="validationCustom042" name="email" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a valid Email.
      </div>
    </div>

     
    
    <!--Textarea with icon prefix-->
<div class="col-md-5 mb-3 md-form">
  <i class="fas fa-commenting prefix" area-hidden="true"></i>
  <textarea id="validationCustom042" name="directors_message" class="md-textarea form-control" rows="3" required></textarea>
  <label  for="validationCustom042" >Director's Message</label>
  <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please fill out the message.
      </div>
</div>


<div class="col-md-5 mb-3 md-form">
  <i class="fas fa-commenting prefix" area-hidden="true"></i>
  <textarea id="validationCustom042" name="principals_message" class="md-textarea form-control" rows="3" required></textarea>
  <label  for="validationCustom042" >Principal's Message</label>
  <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please fill out the message.
      </div>
</div>

 <div class="col-md-5 mb-3 md-form">
      <i class="fa fa-globe prefix" aria-hidden="true"></i>
      <label for="validationCustom042"> Website</label>
      <input type="text" class="form-control" id="validationCustom042" name="website" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      <div class="invalid-feedback">
        Please provide a valid website.
      </div>
    </div>


<div class="col-md-5">
	<i  class="fas fa-book" style="font-size: 30px;float: left; margin-right: 20px !important;"></i>
<label for="validationCustom042"> Select Streams</label>
<div data-spy="scroll" data-target="#navbar-example2" class="scrollspy-example col-lg-12 " style="height: 62px !important;" data-offset="0">

  
<!-- Default inline 1-->


<% 
    SchoolService service=new SchoolService();
ResultSet rs=service.getStreams();
int i=1;
while(rs.next())
{
    
    String stream="stream"+i;
    String stream_id=rs.getString("stream_id");
    String stream_name=rs.getString("stream_name");
   %>  
       <div class="custom-control custom-checkbox custom-control-inline">
           <input type="checkbox" name="stream" class="custom-control-input" id="<%=stream%>" value="<%=stream_id%>">
           <label class="custom-control-label" for="<%=stream%>"><%=stream_name%></label>
            
      </div> 
   <%
       i++;
}

%>


</div>

</div>







  </div>
  






<br>

<label style="margin-bottom: 50px; font-size: 20px"><i style="font-size: 30px;" class="fas fa-images"></i> Add some pictures of Your school.</label>



		<div class="form-horizontal">
			<div class="form-group">
				<div class="col-md-10">
					<div  class="row" id="imagePicker">
						
					</div>
				</div>
			</div>
		</div>	













  <div class="form-group">
    <div class="form-check pl-0">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
  <button style="margin-top: 50px; background-color: #4285F4; color: white;" class="btn btn-sm btn-rounded" type="submit">Submit</button>

 
</form>




  </div>
  <!-- Panel 1 -->

  <!-- Panel 2 -->
  <!-- Panel 2 -->

</div>
<!-- Tab panels -->
</div>

<%@include file="../blocks/footer.jsp" %>
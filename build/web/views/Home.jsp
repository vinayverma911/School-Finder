<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@include file="../blocks/header.jsp" %>
<div class="view animated fadeInDownBig slow" style="background-image: url('https://cdn.pixabay.com/photo/2014/04/23/14/47/boy-330582_960_720.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; max-height: inherit;">
    <!-- Mask & flexbox options-->
    <div class="mask rgba-gradient align-items-center">
        <!-- Content -->
        <div class="container">
            <!--Grid row-->
            <div class="row mt-5">
                <!--Grid column-->
                <div class="col-md-6 mb-5 mt-md-0 mt-5 white-text text-center text-md-left">
                    <h1 class="h1-responsive font-weight-bold wow fadeInLeft" data-wow-delay="0.3s">Education is the Key to SUCCESS!!! </h1>
                    <hr class="hr-light wow fadeInLeft" data-wow-delay="0.3s">
                    <h6 class="mb-3 wow fadeInLeft" data-wow-delay="0.3s">
                        So, find the best school for your children.

                    </h6>
                    <a class="btn btn-outline-white wow fadeInLeft" data-wow-delay="0.3s" data-toggle="modal" data-target="#modalLRForm">Already a member?</a>
                    <a class="btn btn-outline-white wow fadeInLeft"  data-toggle="modal" data-target="#modalLRForm2" data-wow-delay="0.3s">Register</a>



                    <div class="input-group mb-3" style="margin-top: 30px;">
                        <div class="input-group-prepend" >

                            <select class="browser-default mussu" id="SearchBarLeft">

                                <option value="city">City</option>
                                <option value="area">Area</option>
                                <option value="pin_code">Pincode</option>

                            </select>

                        </div>
                        <input type="text" class="form-control kullu" aria-label="Sizing example input" onkeyup ="show(this.value)" aria-describedby="inputGroup-sizing-default">
                    
                    </div>
                    <div class="input-group mb-3" id="result" style="margin-top: 30px;"></div>












                </div>











                <!--Grid column-->
                <!--Grid column-->

                <!--Grid column-->
            </div>
            <!--Grid row-->
        </div>
        <!-- Content -->
    </div>
    <!-- Mask & flexbox options-->
</div>
<!-- Full Page Intro -->

</header>

<div class="row" style="margin:0px !important;">

    <div class="col-lg-4" style="">
        <div class="card" style="margin:0px !important; background-color: white;">
            <div class="table-responsive">

                <!--Table-->
                <table class="table">



                    <!--Table body-->
                    <tbody>
                    <th><h4 style="font-weight: bold;color: #0d47a1;"><span><img src="<%=ctx%>/assets/images/icon.png"></span>&nbsp Featured Schools.</h4></th>
                   
    <%
    SchoolService s=new SchoolService();
    ResultSet Featured=s.getFeatured();
    int k=0;
    if(Featured!=null)
    while(Featured.next() && k<4)
    {
       String pic=Featured.getString("picture_path");
       int sid=Featured.getInt("school_id");
       String sname=Featured.getString("school_name");
    %>
                    <tr>
                        <td>
                            <a href="<%=ctx%>/views/schoolProfile.jsp?id=<%=sid%>">
                                <div class="card" id="cardd" style="margin: 0px !important;background-color: white; text-align: center;">
                                    <!-- Card content -->
                                    <div class="card-body cardImage" style="background: url('<%=ctx%>/SchoolImages/<%=pic%>') no-repeat center center;
                                         -webkit-background-size: cover;
                                         -moz-background-size: cover;
                                         -o-background-size: cover;
                                         background-size: cover;
                                         height: 125px;"></div>
                                    <h5 class="card-title" style="font-weight: bold; color: #0d47a1; padding-top: 5px;"><%=sname%></h5>
                                </div>
                            </a>
                        </td>
                    </tr>
                    <% k++; } %>
                    </tbody>
                    <!--Table body-->

                </table>
                <!--Table-->

            </div>
        </div>


    </div>


    <div  class="col-lg-8" style="">
        <div class="card" style="margin:0px !important; background-color: white;">


            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <th><h4 style="font-weight: bold;color: #0d47a1;"><span><img src="<%=ctx%>/assets/images/icon.png"></span>&nbsp Search Schools Here.</h4></th>
                            <tr >
                                <td >
                                    <form class="needs-validation"  action="SearchController" method="post"  >
                                        <div class="form-row justify-content-center">
                                            <div class="col-md-5 mb-3 md-form form-group">
                                                <i  class="fas fa-graduation-cap" style="font-size: 30px;"></i>
                                                <select class="custom-select" id="select-wrapper" name="board" required >
                                                    <option value="" disabled selected>Select board</option>
                                                    <option value="cbse board">C.B.S.E Board</option>
                                                    <option value="mp board">M.P. Board</option>
                                                </select>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                                <div class="invalid-feedback">Please select Board.</div>
                                            </div>

                                            <div class="col-md-5 mb-3 md-form form-group">

                                                <i  class="fas fa-microphone-alt" style="font-size: 30px;"></i>
                                                <select class="custom-select" id="select-wrapper" name="medium" >
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
                                                <select class="custom-select" id="select-wrapper" name="type">
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
                                                <i class="fas fa-pencil-alt prefix"></i>
                                                <label for="validationCustomUsername2">Upto which class</label>
                                                <input type="number" class="form-control" name="upto_class" id="validationCustomUsername2" aria-describedby="inputGroupPrepend2">
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
                                                <input type="text" class="form-control" id="validationCustom042" name="locality" >
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
                                                <input type="text" class="form-control" id="validationCustom042" name="area" >
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
                                                <input type="text" class="form-control" id="validationCustom042" name="city" >
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
                                                <input type="text" class="form-control" id="validationCustom042" name="state" >
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
                                                       >
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                                <div class="invalid-feedback">
                                                    please enter the Pin-code.
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <i  class="fas fa-book" style="font-size: 30px;float: left; margin-right: 20px !important;"></i>
                                                <label for="validationCustom042"> Select Streams</label>
                                                <div data-spy="scroll" data-target="#navbar-example2" class="scrollspy-example col-lg-12 " style="height: 62px !important;" data-offset="0">


                                                    <!-- Default inline 1-->


                                                    <%
                                                        SchoolService service = new SchoolService();
                                                        ResultSet rs = service.getStreams();
                                                        int i = 1;
                                                        while (rs.next()) {

                                                            String stream = "stream" + i;
                                                            String stream_id = rs.getString("stream_id");
                                                            String stream_name = rs.getString("stream_name");
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
                                        <div class="md-form">
                                            <button style=" margin-left: 70px !important; background-color: #4285F4; color: white;" class="btn btn-sm btn-rounded" type="submit">Submit</button>
                                        </div>
                                    </form>



                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>



        </div>
    </div>

</div>
<script type="text/javascript">
    function show(str)
    {
        var str1 = str;
        var Str2 = document.getElementById('SearchBarLeft').value;

        $.ajax({
            url: "views/searchBar.jsp?data=" + Str2 + "/" + str1,
            success: function (result)
            {
                document.getElementById('result').innerHTML = result;
            }
        })
    }
</script>

<%@include file="../blocks/footer.jsp" %>
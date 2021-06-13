<%-- 
    Document   : header
    Created on : Feb 29, 2020, 11:42:52 AM
    Author     : Ishra Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="util.SqlUtil" %>
<%@page import="java.sql.*" %>
<%@page import="service.SchoolService"%>

<% String ctx=application.getContextPath();%>
<!DOCTYPE html>

<html lang="en">

<head id="top-section">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>School Finder</title>
    <link rel = "icon" type = "image/png" href = "<%=ctx%>/assets/images/icon.png">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="<%=ctx%>/assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="<%=ctx%>/assets/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="<%=ctx%>/assets/css/style.css" rel="stylesheet">
  <link href="<%=ctx%>/assets/css/style.min.css" rel="stylesheet">
    <link href="<%=ctx%>/assets/css/compiled.min.css" rel="stylesheet">
    <link href="<%=ctx%>/assets/css/compiled-4.8.5.min.css" rel="stylesheet">
    <!-- photo gallery css -->
    <link href="<%=ctx%>/assets/css/lightgallery.css" rel="stylesheet">

<style type="text/css">
     
     .img-responsive{
          height: 137px !important;
     }

#Enquiry{
  text-align: center;
    bottom: 300px;
    right: -33px;
    background-color: #4285F4;
    transform: rotate(90deg);
    width: 90px;
    padding-bottom: 32px;
    border-radius: 0px 0px 5px 5px;
    height: 48px;
}

      .invalid-feedback
        {
        margin-left: 39px;
      }
      .valid-feedback
        {
        margin-left: 39px;
      }
      
      
      #select-wrapper
        {
        border-left: 0;
           border-right: 0;
             border-top: 0;
            border-radius: 0;
        display: block !important;
             max-width: 90% !important;
       float: right !important;
       }


    .pt-3-half {
padding-top: 1.4rem;
}

  @media only screen and (max-width: 1366px) {
  #select-wrapper {
    max-width: 89% !important;
            } 
            }  

    
  @media only screen and (max-width: 1250px) {
  #select-wrapper {
    max-width: 84% !important;
            } 
            }
    @media only screen and (max-width: 750px) {
  #select-wrapper {
    max-width: 89% !important;
            } 
            }
  @media only screen and (max-height:992px) {
  .logo-wrapper {
    height: 50px !important;
   
            } 
            } 
           
/*row
{
  margin-left: -31px !important;
 }*/

#cardd:hover{
opacity: 0.9;
box-shadow: 3px 3px 15px 1px #888888;
transition-duration:0.3s;
}
  .navlogo{
      margin-top: 5px;
    height: 24px;
    float: left;
    margin-left: 15px;
}

.navLinkColor{
  color: black !important;
  font-weight: bold;
  position: relative;
  right:30px;
}
 

.container{
  margin-top: 13%;
 }

.borderBox{
  margin:4px;margin-top: 0px; border:1px solid #4285F4 ; border-radius: 5px;
}

html,
body,
header,
.view {
  height: 100%;
}

@media (max-width: 740px) {
  html,
  body,
  header,
  .view {
    height: 500px;
  }
}
@media (min-width: 800px) and (max-width: 850px) {
  html,
  body,
  header,
  .view {
    height: 650px;
  }
}

.top-nav-collapse {
  background-color: white !important;
}


.navbar:not(.top-nav-collapse) {
  background: white !important;
}

@media (max-width: 991px) {
  .navbar:not(.top-nav-collapse) {
    background: white !important;
  }
}

.rgba-gradient {
  background: -webkit-linear-gradient(45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%);
  background: -webkit-gradient(linear, 45deg, from(rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%));
  background: linear-gradient(to 45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%);
}

.card {
   background-color: white !important;
  margin-top:30px !important;
}



h6 {
  line-height: 1.7;
}


.mussu
{
 padding-left: 8px;
  margin-right: 3px;
  border-radius: 20px 0px 0px 20px !important;
 outline: 0px;

}
.kullu{
  border-radius: 0px 20px 20px 0px !important;
}






.top-nav-collapse {
  background-color: white !important;
}


.navbar:not(.top-nav-collapse) {
  background: white !important;
}

@media (max-width: 991px) {
  .navbar:not(.top-nav-collapse) {
    background: white !important;
  }
}

.rgba-gradient {
  background: -webkit-linear-gradient(45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%);
  background: -webkit-gradient(linear, 45deg, from(rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%));
  background: linear-gradient(to 45deg, rgba(0, 0, 0, 0.7), rgba(72, 15, 144, 0.4) 100%);
}


/*photo gallery style*/

           
            .demo-gallery > ul 
            {
              margin:12px 0px 0px 9px ;
            }
            .demo-gallery > ul > li {
                float: left;
                margin-bottom: 15px;
                        
                width: 200px;
            }

            .photo
            {
              padding: 0px;

            }
            .demo-gallery > ul > li a {
              border: 2px solid #0d47a1;
              border-radius: 3px;
              display: block;
              overflow: hidden;
              position: relative;
              float: left;
            }
            .demo-gallery > ul > li a > img {
              -webkit-transition: -webkit-transform 0.15s ease 0s;
              -moz-transition: -moz-transform 0.15s ease 0s;
              -o-transition: -o-transform 0.15s ease 0s;
              transition: transform 0.15s ease 0s;
              -webkit-transform: scale3d(1, 1, 1);
              transform: scale3d(1, 1, 1);
              height: 100%;
              width: 100%;
            }
            .demo-gallery > ul > li a:hover > img {
              -webkit-transform: scale3d(1.1, 1.1, 1.1);
              transform: scale3d(1.1, 1.1, 1.1);

            }
            .demo-gallery > ul > li a:hover .demo-gallery-poster > img {
              opacity: 1;
            }
            .demo-gallery > ul > li a .demo-gallery-poster {
              background-color: rgba(0, 0, 0, 0.1);
              bottom: 0;
              left: 0;
              position: absolute;
              right: 0;
              top: 0;
              -webkit-transition: background-color 0.15s ease 0s;
              -o-transition: background-color 0.15s ease 0s;
              transition: background-color 0.15s ease 0s;
            }
            .demo-gallery > ul > li a .demo-gallery-poster > img {
              left: 50%;
              margin-left: -10px;
              margin-top: -10px;
              opacity: 0;
              position: absolute;
              top: 50%;
              -webkit-transition: opacity 0.3s ease 0s;
              -o-transition: opacity 0.3s ease 0s;
              transition: opacity 0.3s ease 0s;
            }
            .demo-gallery > ul > li a:hover .demo-gallery-poster {
              background-color: rgba(0, 0, 0, 0.5);
            }
            .demo-gallery .justified-gallery > a > img {
              -webkit-transition: -webkit-transform 0.15s ease 0s;
              -moz-transition: -moz-transform 0.15s ease 0s;
              -o-transition: -o-transform 0.15s ease 0s;
              transition: transform 0.15s ease 0s;
              -webkit-transform: scale3d(1, 1, 1);
              transform: scale3d(1, 1, 1);
              height: 100%;
              width: 100%;
            }
            .demo-gallery .justified-gallery > a:hover > img {
              -webkit-transform: scale3d(1.1, 1.1, 1.1);
              transform: scale3d(1.1, 1.1, 1.1);

            }
            .demo-gallery .justified-gallery > a:hover .demo-gallery-poster > img {
              opacity: 1;
            }
            .demo-gallery .justified-gallery > a .demo-gallery-poster {
              background-color: rgba(0, 0, 0, 0.1);
              bottom: 0;
              left: 0;
              position: absolute;
              right: 0;
              top: 0;
              -webkit-transition: background-color 0.15s ease 0s;
              -o-transition: background-color 0.15s ease 0s;
              transition: background-color 0.15s ease 0s;
            }
            .demo-gallery .justified-gallery > a .demo-gallery-poster > img {
              left: 50%;
              margin-left: -10px;
              margin-top: -10px;
              opacity: 0;
              position: absolute;
              top: 50%;
              -webkit-transition: opacity 0.3s ease 0s;
              -o-transition: opacity 0.3s ease 0s;
              transition: opacity 0.3s ease 0s;
            }
            .demo-gallery .justified-gallery > a:hover .demo-gallery-poster {
              background-color: rgba(0, 0, 0, 0.5);
            }
            .demo-gallery .video .demo-gallery-poster img {
              height: 48px;
              margin-left: -24px;
              margin-top: -24px;
              opacity: 0.8;
              width: 48px;
            }
            .demo-gallery.dark > ul > li a {
              border: 3px solid #04070a;
            }
            .home .demo-gallery {
              padding-bottom: 80px;
            }
         
            .review
            {
              margin-bottom: 0px !important;
            }

            .shadow-textarea textarea.form-control::placeholder {
    font-weight: 300;
}
.shadow-textarea textarea.form-control {
    padding-left: 0.8rem;
    width: 60% !important;
    float: left;

}
.btn-primary
{
  padding: 7px 14px 6px 15px;

}

#schoolName
{
  /*background-color:#E1F5FE  !important;*/
     background: rgba(3, 169, 244, 0.5);
     color: white !important;
    font-weight: bold !important;
    
}






</style>
</head>

<body>




<div class="fixed-action-btn smooth-scroll" style="bottom: 45px; right: 24px;">
  <a href="#top-section" class="btn-floating btn-large primary-color">
    <i class="fas fa-arrow-up"></i>
  </a>
</div>

<a href="" data-wow-delay="0.3s" data-toggle="modal" data-target="#modalLRForm">
  <div class="fixed-action-btn" id="Enquiry" style="">
 <h6 style="color: white; font-weight: bold;">Enquiry</h6>
</div></a>

<!--Modal: Enquiry Form-->
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">

      <!--Modal cascading tabs-->
      <div class="modal-c-tabs">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user  mr-1"></i>
              Enquiry</a>
          </li>
         
        </ul>

        <!-- Tab panels -->
        <div class="tab-content">
          <!--Panel 7-->
          <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

            <!--Body-->
            <div class="modal-body mb-1">
              <div class="md-form form-sm mb-5">
                
                <i class="fas fa-user text-dark prefix"></i>
                <input type="text" id="modalLRInput10" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput10">Your Name</label>
              </div>

              <div class="md-form form-sm mb-4">
                
                <i class="fas fa-mobile-alt text-dark prefix"></i>
                <input type="number" id="modalLRInput11" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput11">Mobile no.</label>
              </div>


              

              <div class="text-center mt-2">
                <button class="btn primary-color"><lable style="color: white;">Submit &nbsp<i class="fas fa-sign-in-alt"></i></lable></button>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: Enquiry Form-->

<!--Modal: login Form-->
<div class="modal fade" id="modalLRForm1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">

      <!--Modal cascading tabs-->
      <div class="modal-c-tabs">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user  mr-1"></i>
              login</a>
          </li>
         
        </ul>

        <!-- Tab panels -->
        <div class="tab-content">
          <!--Panel 7-->
          <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

            <!--Body-->
            <div class="modal-body mb-1">
              <div class="md-form form-sm mb-5">
                
                <i class="fas fa-user text-dark prefix"></i>
                <input type="text" id="modalLRInput10" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput10">Username</label>
              </div>

              <div class="md-form form-sm mb-4">
                <i class="fas fa-lock prefix"></i>
                <input type="password" id="modalLRInput11" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label>
              </div>


              

              <div class="text-center mt-2">
                <button class="btn primary-color"><lable style="color: white;">Login &nbsp<i class="fas fa-sign-in-alt"></i></lable></button>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: login Form-->

    <header style="max-height: 90% !important;">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg white double-nav fixed-top scrolling-navbar" style="position: fixed !important;">
        <!-- SideNav slide-out button -->
        <div class="float-left">
        
         <a href="#"><img src="<%=ctx%>/assets/images/logo.png" class="navlogo img-fluid" alt="Responsive image"></a>
        </div>


        <div class="collapse navbar-collapse "  id="basicExampleNav">

    <!-- Links -->
    <ul class="navbar-nav ml-auto" >
      <li class="nav-item active">
        <a class="nav-link navLinkColor" href="#">Home
          
        </a>
      </li>
      

      <!-- Dropdown -->
      <li class="nav-item dropdown">
        <a class="nav-link navLinkColor dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">Streams</a>
        <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Science</a>
          <a class="dropdown-item" href="#">Commerce</a>
          <a class="dropdown-item" href="#">Arts</a>
        </div>
      </li>


      <li class="nav-item dropdown">
        <a class="nav-link navLinkColor dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">Type</a>
        <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Girls</a>
          <a class="dropdown-item" href="#">Boys</a>
          <a class="dropdown-item" href="#">Co-Ed</a>
        </div>
      </li>
         <li class="nav-item">
        <a class="nav-link navLinkColor" href="#">contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link navLinkColor" href="#">About Us</a>
      </li>

    </ul>
    <!-- Links -->

    
  </div>
             <!-- Links -->
    
        
        <button type="button" class="btn btn-sm my-0" style="background-color:#4285F4; color: white;" data-toggle="modal" data-target="#modalLRForm1"><i class="fa fa-sign-in-alt" aria-hidden="true"></i>&nbsp Login</button>
        
      </nav>
      <!-- /.Navbar -->









<!--Modal: Login Form-->
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">

      <!--Modal cascading tabs-->
      <div class="modal-c-tabs">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user  mr-1"></i>
              Login</a>
          </li>
         
        </ul>

        <!-- Tab panels -->
        <div class="tab-content">
          <!--Panel 7-->
          <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

            <!--Body-->
            <div class="modal-body mb-1">
              <div class="md-form form-sm mb-5">
                <i class="fas fa-envelope text-dark prefix"></i>
                <input type="email" id="modalLRInput10" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput10">username</label>
              </div>

              <div class="md-form form-sm mb-4">
                <i class="fas fa-lock text-dark prefix"></i>
                <input type="password" id="modalLRInput11" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label>
              </div>


              <!-- Default inline 1-->
              <i style="font-size: 27px;" class="fa fa-user text-dark" aria-hidden="true"></i> <label style="margin-left: 10px;">Role</label>
<div style="margin-left: 25px;" class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline1" name="inlineDefaultRadiosExample">
  <label class="custom-control-label" for="defaultInline1">Admin</label>
</div>

<!-- Default inline 2-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline2" name="inlineDefaultRadiosExample">
  <label class="custom-control-label" for="defaultInline2">School</label>
</div>

<!-- Default inline 3-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline3" name="inlineDefaultRadiosExample">
  <label class="custom-control-label" for="defaultInline3">User</label>
</div>




              <div class="text-center mt-2">
                <button class="btn primary-color"><lable style="color: white;
        " >Log in &nbsp<i class="fas fa-sign-in-alt"></i></lable></button>
              </div>



               <div style="margin-top: 15px;" class="options text-center">
                <p>Not a member? <a href="#" class="text-primary">Sign Up</a></p>
                <p>Forgot <a href="#" class="text-primary">Password?</a></p>
              </div>
            </div>
            



          </div>
          <!--/.Panel 7-->

         
        </div>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: Login Form-->

<!--Modal:Register Form-->
<div class="modal fade" id="modalLRForm2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">

      <!--Modal cascading tabs-->
      <div class="modal-c-tabs">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#panel8" role="tab"><i class="fas fa-user-plus mr-1"></i>
              Register</a>
          </li>
        </ul>

        <!-- Tab panels -->
        <div class="tab-content">
         

          <!--Panel 8-->
          <div class="tab-pane fade in show active" id="panel8" role="tabpanel">

            <!--Body-->
            <div class="modal-body">
              <div class="md-form form-sm mb-5">
                <i class="fas fa-envelope prefix"></i>
                <input type="email" id="modalLRInput12" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput12">Your email</label>
              </div>

              <div class="md-form form-sm mb-5">
                <i class="fas fa-lock prefix"></i>
                <input type="password" id="modalLRInput13" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput13">Your password</label>
              </div>

              <div class="md-form form-sm mb-4">
                <i class="fas fa-lock prefix"></i>
                <input type="password" id="modalLRInput14" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput14">Repeat password</label>
              </div>

              <div class="text-center form-sm mt-2">
                <button class="btn btn-info">Sign up <i class="fas fa-sign-in-alt ml-1"></i></button>
              </div>

            </div>
            <!--Footer-->
            <div class="modal-footer">
              <div class="options text-right">
                <p class="pt-1">Already have an account? <a href="#" class="blue-text">Log In</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>
          </div>
          <!--/.Panel 8-->
        </div>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: Register Form-->


<%-- 
    Document   : footer
    Created on : Feb 29, 2020, 11:43:44 AM
    Author     : Ishra Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Footer -->
<footer class="page-footer font-small unique-color-dark">

  <div style="background-color: #4285F4;">
    <div class="container"  style="margin-top: 0px;">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f white-text mr-4"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter white-text mr-4"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g white-text mr-4"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in white-text mr-4"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram white-text"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">About Us</h6>
        <hr class="primary-color accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>Its a school finder.<br>Finds best school for you...Here you can search best schools of your choice.</p>

      </div>
      <!-- Grid column -->

      

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="primary-color accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">Your Account</a>
        </p>
        <p>
          <a href="#!">Become an Affiliate</a>
        </p>
        <p>
          <a href="#!">Shipping Rates</a>
        </p>
        <p>
          <a href="#!">Help</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact Us</h6>
        <hr class="primary-color accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i>Madhya Pradesh,India</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> schoolfinder@gmail.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i>+91 8959359132</p>
        <p>
          <i class="fas fa-print mr-3"></i>+91 9340731755</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->


  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->








 
  <!-- Start your project here-->

 
  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="<%=ctx%>/assets/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="<%=ctx%>/assets/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="<%=ctx%>/assets/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="<%=ctx%>/assets/js/mdb.min.js"></script>
  <script type="text/javascript" src="<%=ctx%>/assets/js/compiled-4.8.5.min.js"></script>
  <script type="text/javascript" src="<%=ctx%>/assets/js/spartan-multi-image-picker.js"></script>
  <script type="text/javascript">
   $(function(){

      $("#imagePicker").spartanMultiImagePicker({
        fieldName:        'fileUpload[]',
        
        rowHeight:        '200px',
        groupClassName:   'col-md-4 col-sm-4 col-xs-6',
        maxFileSize:      '',
        
        dropFileLabel : "Drop Here",
        onAddRow:       function(index){
          console.log(index);
          console.log('add new row');
        },
        onRenderedPreview : function(index){
          console.log(index);
          console.log('preview rendered');
        },
        onRemoveRow : function(index){
          console.log(index);
        },
        onExtensionErr : function(index, file){
          console.log(index, file,  'extension err');
          alert('Please only input png or jpg type file')
        },
        onSizeErr : function(index, file){
          console.log(index, file,  'file size too big');
          alert('File size too big');
        }
      });
    });

 
  </script>

  <script type="text/javascript">
        
(function() {
'use strict';
window.addEventListener('load', function() {
// Fetch all the forms we want to apply custom Bootstrap validation styles to
var forms = document.getElementsByClassName('needs-validation');
// Loop over them and prevent submission
var validation = Array.prototype.filter.call(forms, function(form) {
form.addEventListener('submit', function(event) {
if (form.checkValidity() === false) {
event.preventDefault();
event.stopPropagation();

}
form.classList.add('was-validated');
}, false);
});
}, false);
})();


  </script>
  <!-- photo gallery script -->
  
  <script type="text/javascript">
        $(document).ready(function(){
            $('#lightgallery').lightGallery();
        });
        </script>
        <script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
        <script src="<%=ctx%>/assets/js/lightgallery-all.min.js"></script>
        <script src="<%=ctx%>/assets/lib/jquery.mousewheel.min.js"></script>


<!-- rating.js file -->
<script src="<%=ctx%>/assets/js/addons/rating.min.js"></script>
  <script type="text/javascript">
    
// Material Select Initialization
$(document).ready(function() {
$('.mdb-select').materialSelect();
});
    // SideNav Initialization
$(".button-collapse").sideNav();
new WOW().init();

// Rating Initialization
$(document).ready(function() {
  $('#rateMe1').mdbRate();
});
  </script>
  <script>
     $(".fa-star").hover(function() {
     var index=$(this).attr("id");
     var i=1;
     for ( i = 1; i<=index; i++) {
       $("[id='"+i+"']").css("color","#ffbb33");
     }
     for(var j=i;j<=5;j++)
     {
      $("[id='"+j+"']").css("color","black");
     }
     $("#rating").attr("value","'"+index+"'");

    });
    $(".fa-star").click(function() {
     var index=$(this).attr("id");
      $("#rating").attr("value",index);
    // alert($("#rating").attr("value"));

    });

  </script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!-- Model Login -->
<div
  class="modal fade"
  id="myModal"
  tabindex="-1"
  role="dialog"
  aria-labelledby="myModalLabel"
  aria-hidden="true"
>
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Đăng nhập</h4>
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span
          ><span class="sr-only">Close</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="card">
            <article class="card-body">
              <h4 class="card-title text-center mb-4 mt-1">Sign in</h4>
              <hr />
             
              <div id="messageDiv" style="display:none;" class="text-center my-2"></div>
              <div
                id="waiteDiv"
                class="text-center my-3"
                style="display:none;"
                class="text-center"
              ></div>
              <form id="login" method="post">
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                    <input
                      type="email"
                      class="form-control"
                      id="inputEmail3"
                      name="mail"
                      placeholder="Email" value="fastbuscompany@gmail.com"
                      required
                    />
                  </div>
                  <!-- input-group.// -->
                </div>
                <!-- form-group// -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                      </span>
                    </div>
                    <input
                      type="password"
                      class="form-control"
                      name="password"
                      id="inputPassword3"
                      placeholder="Mật khẩu" value="123456"
                      required
                    />
                  </div>
                  <!-- input-group.// -->
                </div>
                <!-- form-group// -->
                <div class="form-group">
                  <button
                    type="button"
                    class="btn btn-primary btn-block"
                    id="btnLogin"
                  >
                    Đăng nhập
                  </button>
                </div>
                <!-- form-group// -->
                <p class="text-center">
                  <a href="#" class="">Quên mật khẩu</a>
                </p>
                 <p class="text-center">
                  <a class="" target="_blank" href="<%=request.getContextPath() %>/RegisterServlet">Đăng ký</a>
                </p>
              </form>
            </article>
          </div>
        <!-- card.// -->
      </div>
    </div>
  </div>
</div>
<script>
     $("#btnLogin").on('click', function(){
         var email = $("#inputEmail3").val();
         var password = $("#inputPassword3").val();
         var $oki = $('#checkBeforeConfirm');
      if($( "#inputPassword3" ).hasClass( "is-invalid" ) || $( "#inputEmail3" ).hasClass( "is-invalid" )){
       alert("Vui lòng nhập đúng định dạng");
        return;
          }
      if(email=="" || password==""){
    	  alert("Vui lòng nhập các trường bị bỏ trống");
          return;
      }
         $.ajax({
             url : "loginRequest",
             type  : "post",
             data : {
            	 userLogin : "btnUserLogin",
                 email : email,
                 password : password
             },
             success : function(results){
                 if(results != null && results != ""){
                     showMessage(results);
                     $('#waiteDiv').css("display","block");
                 }else{
                     $('#messageDiv').css("display","none");
                     $('#messageDiv').html("");
                     alert("Some exception occurred! Please try again.");  
                     
                 }
             }
         });
     });
     
     $("#btnLogout").on('click', function(e){
       if(confirm("Bạn Muốn Đăng Xuất ?")){
    	   $.ajax({
               url : "LogoutRequest"
           });
       }else{
    	   e.preventDefault();
       }
     });

     //function to display message to the user
     function showMessage(results){
    	 $('#messageDiv').stop();
    	 $("#messageDiv").hide();
         if(results == 'true'){
             $('#messageDiv').html("<font color='green'>Đăng nhập thành công vui lòng chờ </font>")
             $('#waiteDiv').html("<span class='spinner-border spinner-border-sm' role='status' aria-hidden='true'></span> Loading...")
             $("#messageDiv").fadeIn(); 
             setTimeout(function(){ 
            	if ($("#SeatBookingInformationServlet").length == 1){
            		$("#checkBeforeConfirm").data("mystatus","islogin")
            		 $(checkBeforeConfirm).click()
            	}else location.reload();
             }, 500);

         }else if(results == 'fail'){
             $('#messageDiv').html("<font color='red'>Gmail hoặc Mật Khẩu bị sai !!</font>")
             document.getElementById("inputEmail3").classList.remove("is-valid");
             document.getElementById("inputPassword3").classList.remove("is-valid");
             $("#messageDiv").fadeIn(); 
             $("#messageDiv").fadeOut(5000); 
         }
     }

  $(document).ready(function() {
	let menuIsLogin = document.getElementById("menuIsLogin");
	let menuNotLogin = document.getElementById("menuNotLogin");
    var sseEmail = "<%=session.getAttribute("email")%>";
    console.log("<%=session.getAttribute("email")%>");
    if(sseEmail != "null"){  
    	$(menuNotLogin).remove();    	
    }else{   	
    	$(menuIsLogin).remove();
    }
  });
</script>
<!-- End Model Login -->

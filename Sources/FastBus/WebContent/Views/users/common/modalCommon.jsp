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
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Đăng nhập</h4>
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span
          ><span class="sr-only">Close</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="login-form">
          <form id="login">
            <div class="form-group">
              <label for="inputEmail3" class="col-sm-2 control-label"
                >Email</label
              >
              <label
                class="col-sm-12  control-label my-notificationError"
                id="notificationEmail"
              ></label>
              <div class="col-sm-10">
                <input
                  type="email"
                  class="form-control"
                  id="inputEmail3"
                  name="mail"
                  placeholder="Email"
                  required
                />
              </div>
            </div>
            <div class="form-group">
              <label for="inputPassword3" class="col-sm-4 control-label"
                >Mật khẩu</label
              >
              <label
                class="col-sm-12  control-label my-notificationError"
                id="notificationPassWord"
              ></label>
              <div class="col-sm-10">
                <input
                  type="password"
                  class="form-control"
                  name="password"
                  id="inputPassword3"
                  placeholder="Mật khẩu"
                  required
                />
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                  <label> <input type="checkbox" /> Remember me </label>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="button" class="btn btn-default" id="btnLogin">
                  Đăng nhập
                </button>
                <div id="messageDiv" style="display:none;"></div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
     $("#btnLogin").on('click', function(){
         var email = $("#inputEmail3").val();
         var password = $("#inputPassword3").val();
      if($( "#inputPassword3" ).hasClass( "is-invalid" ) || $( "#inputEmail3" ).hasClass( "is-invalid" )){
       alert("Vui lòng nhập đúng định dạng");
        return;
          }
         $.ajax({
             url : "loginRequest",
             type  : "get",
             data : {
                 email : email,
                 password : password
             },
             success : function(results){
                 if(results != null && results != ""){
                     showMessage(results);
                     $('#messageDiv').css("display","block");
                 }else{
                     $('#messageDiv').css("display","none");
                     $('#messageDiv').html("");
                     alert("Some exception occurred! Please try again.");
                 }
             }
         });
     });

     //function to display message to the user
     function showMessage(results){
         if(results == 'true'){
             $('#messageDiv').html("<font color='green'>You are successfully logged in. </font>")

             setTimeout(function(){  location.reload(); }, 2000);

         }else if(results == 'fail'){
             $('#messageDiv').html("<font color='red'>Username or password incorrect </font>")
         }
     }

  $(document).ready(function() {
  	var sseEmail = "<%=session.getAttribute("email")%>";
  if(sseEmail != "null"){
  	var accountNav = document.getElementById("accountNav");
  	var item = document.getElementById("accountNavChild");
  	item.parentNode.removeChild(item);
  	var aTag = document.createElement("a");
  	aTag.setAttribute("class", "accountNavChild");
  	aTag.setAttribute("class", "nav-link");
  	aTag.setAttribute("href", "#");
  	var textATag = document.createTextNode(  "Xin chào "+"<%=session.getAttribute("email")%>");

  	aTag.appendChild(textATag);
  	accountNav.appendChild(aTag);
      }

  	});
</script>
<!-- End Model Login -->

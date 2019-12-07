<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- jquery plugins here-->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/popper.min.js"></script>
<!-- bootstrap js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/bootstrap.min.js"></script>
<!-- magnific js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery.magnific-popup.js"></script>
<!-- swiper js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/owl.carousel.min.js"></script>
<!-- masonry js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/masonry.pkgd.js"></script>
<!-- masonry js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery.nice-select.min.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/gijgo.min.js"></script>
<!-- contact js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery.ajaxchimp.min.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery.form.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery.validate.min.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/mail-script.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/contact.js"></script>
<!-- custom js -->
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/custom.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/js/validate_trunganh.js"></script>
<script src="<%=request.getContextPath()%>/Views/js/rating.js"></script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/jquery.rateyo.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/js/select2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.12/dist/js/bootstrap-select.min.js"></script>
<!-- Model Login -->
<%@ include file="modalCommon.jsp"%>
<!-- End Model Login -->
<script type="text/javascript">
function showMessChangeSus(status,mess){
    if(status == true){
      alert(mess);
    }        
  }
function showMessChangeFail(status,mess){
    if(status == false){
      alert(mess);
    }        
  }
</script>

$(document)
		.ready(
				function() {
					// validate file comfirm
					$("#comfirmCustomerInfor")
							.validate(
									{
										rules : {
											email : {
												email : true,
												required : true
											},
											name : {
												required : true,
												validateSpecialCharacters : true
											},
											phone : {
												required : true,
												validateVietNamPhone : true
											},
											address : {
												required : true
											},
											"checkRules[]" : {
												required: true
											}
										},
										messages : {
											name : {
												required : "Vui lòng nhập trường này",
											},
											phone : {
												required : "Vui lòng nhập trường này"
											},
											email : {
												required : "Vui lòng nhập Email",
												email : "Kiểm  tra xem có theo vd EX@gmail.com"
											},
											address : {
												required : "Vui lòng nhập trường này"
											},
											"checkRules[]" : {
												required: ""
											}
										},
										errorElement : "em",
										highlight : function(element,
												errorClass) {
											$(element).addClass("is-invalid")
													.removeClass("is-valid");
										},
										unhighlight : function(element,
												errorClass) {
											$(element).addClass("is-valid")
													.removeClass("is-invalid");
										}
									});
					// end validate file comfirm
					// validate file login
					$("#login")
							.validate(
									{
										rules : {
											mail : {
												email : true,
												required : true
											},
											password : {
												required : true,
												minlength : 6
											}
										},
										messages : {
											mail : {
												required : "Vui lòng nhập Email",
												email : "Kiểm  tra xem có theo vd EX@gmail.com"
											},
											password : {
												minlength : "password có ít nhất 6 ký tự"
											}
										},
										errorElement : "em",
										highlight : function(element,
												errorClass) {
											$(element).addClass("is-invalid")
													.removeClass("is-valid");
										},
										unhighlight : function(element,
												errorClass) {
											$(element).addClass("is-valid")
													.removeClass("is-invalid");
										}
									});
					// end validate file login
					// validate register
					$("#register")
							.validate(
									{
										rules : {
											fullName : {
												required : true,
												validateSpecialCharacters : true
											},
											password : {
												required : true,
												minlength : 6
											},
											confirmPassword : {
												required : true,
												equalTo : "#inputPassword"
											},
											phone : {
												required : true,
												validateVietNamPhone : true
											},
											mail : {
												required : true,
												email : true
											},
											Address : {
												required : true
											}
										},
										messages : {
											fullName : {
												required : "Vui lòng nhập trường này"
											},
											password : {
												required : "Vui lòng nhập trường này",
												minlength : "password có ít nhất 6 ký tự"
											},
											confirmPassword : {
												required : "Vui lòng nhập trường này",
												equalTo : "Nhập Không đúng với password"
											},
											phone : {
												required : "Vui lòng nhập trường này"
											},
											mail : {
												required : "Vui lòng nhập Email",
												email : "Kiểm  tra xem có theo vd EX@gmail.com"
											},
											Address : {
												required : "Vui lòng nhập trường này"
											}
										},
										errorElement : "em",
										highlight : function(element,
												errorClass) {
											$(element).addClass("is-invalid")
													.removeClass("is-valid");
										},
										unhighlight : function(element,
												errorClass) {
											$(element).addClass("is-valid")
													.removeClass("is-invalid");
										}
									});
					$.validator
							.addMethod(
									"validatePassword",
									function(value, element) {
										return (this.optional(element) || /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$/i
												.test(value));
									},
									"Hãy nhập password từ 8 đến 16 ký tự bao gồm chữ hoa, chữ thường và ít nhất một chữ số");

					// ko nhạp ký tự đặt biệt
					$.validator
							.addMethod(
									"validateSpecialCharacters",
									function(value, element) {
										return (this.optional(element) || /^[a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s]+$/
												.test(value));
									}, "Không nhập ký tự đặt biệt");
					// ko nhạp ký tự đặt biệt nhưng cho nhập sso
					$.validator
							.addMethod(
									"validateSpecialCharactersForAccount",
									function(value, element) {
										return (this.optional(element) || /^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$/
												.test(value));
									}, "Không nhập ký tự đặt biệt");

					// validate số điện thoại
					$.validator
							.addMethod(
									"validateVietNamPhone",
									function(value, element) {
										return (this.optional(element) || /^(09|03|04|07|08|05)([0-9]{8})$/
												.test(value));
									}, "Đây không phải số điện thoại Việt nam ");
				});
// ko cho nhập số
$("#inputPhone").on("keypress", function(event) {
	if (event.keyCode < 48 || event.keyCode > 57)
		return false;
});

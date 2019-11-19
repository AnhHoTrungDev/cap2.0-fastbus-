function fixInterfaceCombobox() {
	for (let i = 0; i < document
			.getElementsByClassName("select2-selection select2-selection--single").length; i++) {
		$(
				document
						.getElementsByClassName("select2-selection select2-selection--single")[i])
				.css({
					height : "50px",
					"border-radius" : "0px",
					border : "1px solid #2493e0"
				});
	}
	for (let i = 0; i < document
			.getElementsByClassName("select2-selection__rendered").length; i++) {
		$(document.getElementsByClassName("select2-selection__rendered")[i])
				.css({
					"margin-top" : "10px",
					color : "#2493e0"
				});
	}
	$(document.getElementsByClassName("select2-selection__rendered"))
			.each(
					function() {
						this
								.addEventListener(
										"click",
										function() {
											$(
													document
															.getElementsByClassName("select2-dropdown select2-dropdown--below")[0])
													.css(
															{
																border : "1px solid #2493e0"
															});
										});
						setTimeout(function() {
							$($("input.select2-search__field")[0]).css({
								border : "1px solid #2493e0"
							});
						}, 500);
					});
}

setTimeout(function() {
	fixInterfaceCombobox();
}, 10);
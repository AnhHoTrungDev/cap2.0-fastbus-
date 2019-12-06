window.onload = function()
{
	if($("#managerBusTrip").length != 0) {
		$("#managerBusTrip").click();
	};
	$("#linkReturnIndex").attr("href",window.origin+"/FastBus/LoadHomePageServlet");
};

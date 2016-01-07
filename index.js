/* index.aspx tab js */
$(document).ready(function(){	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
})

/* StoreSupport.aspx tab js */
jQuery('.tabs .tab-links a').on('click', function(e)  {
    var currentAttrValue = jQuery(this).attr('href');
	$("#hotTopics").hide();
    // Show/Hide Tabs
    jQuery('.tabs ' + currentAttrValue).show().siblings().hide();

    // Change/remove current tab to active
    jQuery(this).parent('li').addClass('active').siblings().removeClass('active');

    e.preventDefault();
});

$(document).ready(function(){
	$("#defBtn").click(function(){
		$("#requestTypes").slideToggle('slow');		
	});
});

function GetSolutions(category, selector){
	$.ajax({
            url: "https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/_api/web/lists/getbytitle('StoreSolutions')/items?$filter=((Category eq '"+category+"') and (SolutionStatus eq 'Active'))",
            type: "GET",
            dataType: "json",
            headers: {
            Accept: "application/json;odata=verbose"
            },
        success: function(data) {
        	$.each(data.d.results, function(index, item) {
			$(selector).append("<h3>" + item.Title + "</h3>" + "<div>" + item.Solution + "<br>" + "<div>" + "<p>" + "Posted On:" + "</p>" + item.CreatedDate + "</div>" + "</div>").accordion("refresh");
         	});
        },
        error: function(error){
            alert(JSON.stringify(error));
        }  
	});
}

function NonAccordionSolutions(category, selector){
	$.ajax({
            url: "https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/_api/web/lists/getbytitle('StoreSolutions')/items?$filter=((Category eq '"+category+"') and (SolutionStatus eq 'Active'))&$orderby=ID desc",
            type: "GET",
            dataType: "json",
            headers: {
            Accept: "application/json;odata=verbose"
            },
        success: function(data) {
        	$.each(data.d.results, function(index, item) {
			$(selector).append("<h3>" + item.Title + "</h3>" + "<div>" + item.Solution + "<br>" + "<div>" + "<p>" + "Posted On:" + "</p>" + item.CreatedDate + "</div>" + "</div>" + "<br>");
         	});
        },
        error: function(error){
            alert(JSON.stringify(error));
        }  
	});
}

function AllSolutions(category, selector){
	$.ajax({
            url: "https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/_api/web/lists/getbytitle('StoreSolutions')/items?$filter=(Category eq '"+category+"')&$orderby=ID desc",
            type: "GET",
            dataType: "json",
            headers: {
            Accept: "application/json;odata=verbose"
            },
        success: function(data) {
        	$.each(data.d.results, function(index, item) {
			$(selector).append("<h3>" + item.Title + " - " + item.CreatedDate + "</h3>" + "<div>" + item.Solution + "<br>" + "<div>" + "<p>" + "Posted On:" + "</p>" + item.CreatedDate + "</div>" + "</div>").accordion("refresh");
         	});
        },
        error: function(error){
            alert(JSON.stringify(error));
        }  
	});
}

$(document).ready(function(){
	NonAccordionSolutions("Hot Topics", "#hotTopicsText");
	AllSolutions("Hot Topics", "#allHotTopicsText");
	GetSolutions("Time and Attendance", "#attendanceSubItems");
	GetSolutions("Hiring", "#hiringSubItems");
	GetSolutions("Abort Void", "#abortvoidSubItems");
	GetSolutions("Access", "#accessSubItems");
	GetSolutions("Active Associate Maintenance (i.e. Job, Department, Pay Changes)", "#activeSubItems");
	GetSolutions("Annual Inventory", "#aiSubItems");
	GetSolutions("Associate Paychecks", "#paychecksSubItems");
	GetSolutions("Card Information", "#cardinfoSubItems");
	GetSolutions("Cashroom", "#crSubItems");
	GetSolutions("Customer Returns", "#customerreturnsSubItems");
	GetSolutions("Deactive", "#deactiveSubItems");
	GetSolutions("Eligibility", "#eligSubItems");
	GetSolutions("Enterprise Fulfillment", "#entfulSubItems");
	GetSolutions("Gift Card on jcp.com order", "#gcdotcomSubItems");
	GetSolutions("Incidental Time Off (i.e. Funeral, Jury)", "#itoSubItems");
	GetSolutions("Leave of Absence (LOA)", "#loaSubItems");
	GetSolutions("Logistic Center (LC) Returns", "#lcretSubItems");
	GetSolutions("Lost/Stolen", "#lostSubItems");
	GetSolutions("Order Invoice Questions", "#orderinvoiceSubItems");
	GetSolutions("Ordering", "#orderingSubItems");
	GetSolutions("Packing Slips", "#packingSubItems");
	GetSolutions("Password", "#passwordSubItems");
	GetSolutions("POS", "#posSubItems");
	GetSolutions("PTO/MTO", "#ptoSubItems");
	GetSolutions("Receiving", "#receivingSubItems");
	GetSolutions("Reports", "#reportsSubItems");
	GetSolutions("Returns and Transfers", "#returnsSubItems");
	GetSolutions("RFID", "#rfidSubItems");
	GetSolutions("Sales Audit", "#saSubItems");
	GetSolutions("Termination", "#termSubItems");
	GetSolutions("W-2", "#w2SubItems");
	GetSolutions("Wage Verification", "#wageSubItems");
	GetSolutions("Shipment Questions", "#shipmentSubItems");
	GetSolutions("Opening Tasks", "#openingTasksSubItems");
	GetSolutions("Closing Tasks", "#closingTasksSubItems");
	GetSolutions("Cash Room Reports", "#cashroomReportsSubItems");
	GetSolutions("CashMan Reference", "#cashmanReferenceSubItems");
});

$(function(){
	$(".accordion").accordion({
		collapsible: true,
		active: false,
		heightStyle: "content" 
	});
});

$("#storeContactLink").click(function(){
	$("#storeContactInfo").slideToggle();
});

(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-66285811-1', 'auto');
ga('send', 'pageview');




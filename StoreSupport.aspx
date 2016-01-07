<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ Page language="C#" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<html xmlns:mso="urn:schemas-microsoft-com:office:office" xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<head>
<meta name="WebPartPageExpansion" content="full" />
<title>Store Support</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/indexStyle.css" />
<!--[if gte mso 9]>
<SharePoint:CTFieldRefs runat=server Prefix="mso:" FieldList="FileLeafRef,WikiField,_dlc_DocId,_dlc_DocIdUrl,_dlc_DocIdPersistId"><xml>
	
	
	
	
	
	
	
<mso:CustomDocumentProperties>
<mso:_dlc_DocId msdt:dt="string">TPVHAX7F3YWN-8-32</mso:_dlc_DocId>
<mso:_dlc_DocIdItemGuid msdt:dt="string">e12fe3e7-92f1-4013-92bf-450d995b4c1e</mso:_dlc_DocIdItemGuid>
<mso:_dlc_DocIdUrl msdt:dt="string">https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/_layouts/15/DocIdRedir.aspx?ID=TPVHAX7F3YWN-8-32, TPVHAX7F3YWN-8-32</mso:_dlc_DocIdUrl>
</mso:CustomDocumentProperties>
</xml></SharePoint:CTFieldRefs><![endif]-->
<script type="text/javascript">
function clickFunc() {
	customSearch( 'searchBox', 'https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/', 'https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/Lists/StoreSolutions2/' );
	ga('send','event','button','Search Button');
	}
function keyPressFunc() {
	searchKeyPress('searchButton',event);
	ga('send','event','button','Search Enter');
	}
	
	// <![CDATA[
	// Search for the terms when the Search button is clicked
function customSearch(type,site,scope) {

	var searchUrl = site + "/_layouts/OSSSearchResults.aspx?" // Or "/_layouts/SearchResults.aspx?" if WSS 2003 or SP2010 Foundation
	var searchTerm = "&k=" + document.getElementById("searchBox").value;
	var listParams = "&cs=This%20" + type + "&u=" + scope;
	document.location.href = searchUrl + searchTerm + listParams;

}
// Initiate the customSearch function when the Enter key is pressed
function searchKeyPress(e) {
	// look for window.event in case event isn't passed in
	if (window.event) { e = window.event; }
	if (e.keyCode == 13)
	{
		document.getElementById('searchButton').click();
	}
}
// ]]>

</script>
</head>
<body>
<div class="headerBckgrd">
	<div class="mainHeader">
		<div id="txtImgHeader"><img src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/StoreSupportHeader.png" alt="Store Support"/></div>
		<div id="searchWrap">
			<input id="searchBox" onkeypress="keyPressFunc();" name="searchBox" type="text" title="Search for a solution"/>
			<div id="searchButton" onclick="clickFunc();"></div>
		</div>
		<div id="homeBtnWrap"><a href="http://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SitePages/index.aspx" id="homeBtn"></a></div>
	</div>
</div>
<div id="mainWrap">
	<div id="dropShadow1" style="background-color:white"></div>
	<div id="storeTopWrap">
		<div id="storeTopSection">
			<div id="storeInfo">
				<p class="headerStyle">Welcome to the Store Support site!</p>
				<p class="textStyle">Please select from the categories below to find solutions to common issues and problems.&nbsp 
				In the event that the information you need to resolve your question is not available, the links below will route you to the appropriate web form or phone # to offer you additional assistance.&nbsp
				For IT self-service, please visit the <a href="http://selfhelp.jcpenney.com/Default.aspx" onclick="ga('send','event','button','IT Self Help Link')">Stores IT Support Site</a>			
				</p>
			</div>
			<div id="hotTopicsWrap">
				<a href="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SitePages/HotTopics.aspx" id="hotTopicsBtn" onclick="ga('send','event','button','Hot Topics Archive Link')"></a>
			</div>
		</div>
	</div>
	<div class="tabs">
		<div id="buttonWrap">
			<div id="horizontalRule"></div>
			<ul id="buttonSection"  class="tab-links">
				<li><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/><a href="#tab1" id="payrollBtn" class="btnStyle" onclick="ga('send','event','button','Payroll Btn')"></a><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/></li>
				<li><a href="#tab2" id="cashroomBtn" class="btnStyle" onclick="ga('send','event','first button','Cashroom Btn')"></a><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/></li>
				<li><a href="#tab3" id="inventoryBtn" class="btnStyle" onclick="ga('send','event','first button','Inventory Btn')"></a><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/></li>
				<li><a href="#tab4" id="dotcomBtn" class="btnStyle" onclick="ga('send','event','first button','Dot Com Btn')"></a><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/></li>
				<li><a href="#tab5" id="giftcardBtn" class="btnStyle" onclick="ga('send','event','first button','Gift Card Btn')"></a><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/></li>
				<li><a href="#tab6" id="iExpenseBtn" class="btnStyle" onclick="ga('send','event','first button','iExpense Btn')"></a><img class="redVertLine" src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/redVertLine.png"/></li>
			</ul>
		</div>
		<div id="horizontalRule"></div>
		<div id="tab-content">
			<div id="tab1" class="tab">
				<div class="accordion"> <!-- wrapper for all the the accordion data in the payroll button -->
					<h3 id="payrollTab" onclick="ga('send','event','second button','Payroll Btn')">Payroll</h3> <!-- top level of the accordion -->
						<div class="accordionData">
							<div class="accordion">
								<h3 id="attendanceTab" onclick="ga('send','event','third button','Time and Attendance Btn')">Time and Attendance</h3> <!-- second level of the accordion -->
									<div class="accordionData">
										<div class="accordion" id="attendanceSubItems"> <!-- the js injects new html line items here -->
										</div>	
									</div>
								<h3 id="paychecksTab" onclick="ga('send','event','third button','Associate Paychecks Btn')">Associate Paychecks</h3> <!-- second level of the accordion -->
									<div class="accordionData">
										<div class="accordion" id="paychecksSubItems"> <!-- the js injects new html line items here -->
										</div>	
									</div>
								<h3 id="w2Tab" onclick="ga('send','event','third button','W-2 Btn')">W-2</h3> <!-- second level of the accordion -->
									<div class="accordionData">
										<div class="accordion" id="w2SubItems"> <!-- the js injects new html line items here -->
										</div>	
									</div>
								<h3 id="wageverTab" onclick="ga('send','event','third button','Wage Verification Btn')">Wage Verification</h3> <!-- second level of the accordion -->
									<div class="accordionData">
										<div class="accordion" id="wageSubItems"> <!-- the js injects new html line items here -->
									</div>	
								</div>
							</div>
						</div>
					<h3 id="hrTab" onclick="ga('send','event','second button','HR Btn')">Human Resources</h3> <!-- top level of the accordion -->
						<div class="accordionData">
							<div class="accordion">
								<h3 id="hiringTab" onclick="ga('send','event','third button','Hiring Btn')">Hiring</h3>
									<div class="accordionData">
										<div class="accordion" id="hiringSubItems">
										</div>
									</div>
								<h3 id="activeTab" onclick="ga('send','event','third button','Active Associate Btn')">Active Associate Maintenance (i.e. Job, Department, Pay Changes)</h3>
									<div class="accordionData">
										<div class="accordion" id="activeSubItems">
										</div>
									</div>
								<h3 id="termTab" onclick="ga('send','event','third button','Termination Btn')">Termination</h3>
									<div class="accordionData">
										<div class="accordion" id="termSubItems">
										</div>
									</div>
								<h3 id="passwordTab" onclick="ga('send','event','third button','Password Btn')">Password</h3>
									<div class="accordionData">
										<div class="accordion" id="passwordSubItems">
										</div>
									</div>
							</div>
						</div>
					<h3 id="benefitsTab" onclick="ga('send','event','second button','Benefits Btn')">Benefits</h3> <!-- top level of the accordion -->
						<div class="accordionData">
							<div class="accordion">
								<h3 id="ptoTab" onclick="ga('send','event','third button','PTO/MTO Btn')">PTO/MTO</h3>
									<div class="accordionData">
										<div class="accordion" id="ptoSubItems">
										</div>
									</div>
								<h3 id="loaTab" onclick="ga('send','event','third button','LOA Btn')">Leave of Absence (LOA)</h3>
									<div class="accordionData">
										<div class="accordion" id="loaSubItems">
										</div>
									</div>
								<h3 id="itoTab" onclick="ga('send','event','third button','ITO Btn')">Incidental Time Off(i.e. Funeral, Jury)</h3>
									<div class="accordionData">
										<div class="accordion" id="itoSubItems">
										</div>
									</div>
								<h3 id="eligibilityTab" onclick="ga('send','event','third button','Eligibility Btn')">Eligibility</h3>
									<div class="accordionData">
										<div class="accordion" id="eligSubItems">
										</div>
									</div>
							</div>
						</div>
				</div>
			</div>
			<div id="tab2" class="tab">
				<div class="accordion">
					<h3 id="cashroomTab" onclick="ga('send','event','second button','Cashroom Sub Btn')">Cash Room</h3>
						<div class="accordionData">
							<div class="accordion" id="crSubItems">
								<h3 id="openingTasksTab" onclick="ga('send','event','third button','Opening Tasks Btn')">Opening Tasks</h3>
									<div class="accordionData">
										<div class="accordion" id="openingTasksSubItems">
										</div>
									</div>
								<h3 id="closingTasksTab" onclick="ga('send','event','third button','Closing Tasks Btn')">Closing Tasks</h3>
									<div class="accordionData">
										<div class="accordion" id="closingTasksSubItems">
										</div>
									</div>
								<h3 id="cashReportsTab" onclick="ga('send','event','third button','Cash Room Reports Btn')">Cash Room Reports</h3>
									<div class="accordionData">
										<div class="accordion" id="cashroomReportsSubItems">
										</div>
									</div>
								<h3 id="cashmanRefTab" onclick="ga('send','event','third button','Opening Tasks Btn')">CashMan Reference</h3>
									<div class="accordionData">
										<div class="accordion" id="cashmanReferenceSubItems">
										</div>
									</div>
							</div>
						</div>
					<h3 id="posTab" onclick="ga('send','event','second button','POS Btn')">POS</h3>
						<div class="accordionData">
							<div class="accordion" id="posSubItems">
							</div>
						</div>
					<h3 id="csaTab" onclick="ga('send','event','second button','Sales Audit Btn')">Sales Audit</h3>
						<div class="accordionData">
							<div class="accordion" id="saSubItems">
							</div>
						</div>
				</div>
			</div>
			<div id="tab3" class="tab">
			<div class="accordion">
					<h3 id="inventoryTab" onclick="ga('send','event','second button','Inventory Sub Btn')">Inventory</h3>
						<div class="accordionData">
							<div class="accordion">
								<h3 id="rfidTab" onclick="ga('send','event','third button','RFID Btn')">RFID</h3>
									<div class="accordionData">
										<div class="accordion" id="rfidSubItems">
										</div>
									</div>
								<h3 id="annualinvTab" onclick="ga('send','event','third button','Annual Inventory Btn')">Annual Inventory</h3>
									<div class="accordionData">
										<div class="accordion" id="aiSubItems">
										</div>
									</div>
								<h3 id="packingslipsTab" onclick="ga('send','event','third button','Packing Slips Btn')">Packing Slips</h3>
									<div class="accordionData">
										<div class="accordion" id="packingSubItems">
										</div>
									</div>
								<h3 id="returnsTab" onclick="ga('send','event','third button','Returns and Transfers Btn')">Returns and Transfers</h3>
									<div class="accordionData">
										<div class="accordion" id="returnsSubItems">
										</div>
									</div>
							</div>
						</div>
					<h3 id="iproTab" onclick="ga('send','event','second button','iPro Btn')">iProcurement</h3>
						<div class="accordionData">
							<div class="accordion">
								<h3 id="accessTab" onclick="ga('send','event','third button','Access Btn')">Access</h3>
									<div class="accordionData">
										<div class="accordion" id="accessSubItems">
										</div>
									</div>
								<h3 id="orderingTab" onclick="ga('send','event','third button','Ordering Btn')">Ordering</h3>
									<div class="accordionData">
										<div class="accordion" id="orderingSubItems">
										</div>
									</div>
								<h3 id="receivingTab" onclick="ga('send','event','third button','Receiving Btn')">Receiving</h3>
									<div class="accordionData">
										<div class="accordion" id="receivingSubItems">
										</div>
									</div>
							</div>
						</div>
				</div>
			</div>
			<div id="tab4" class="tab">
				<div class="accordion">
					<h3 id="dotcomTab" onclick="ga('send','event','second button','jcp.com Btn')">jcp.com</h3>
						<div class="accordionData">
							<div class="accordion">
								<h3 id="custretTab" onclick="ga('send','event','third button','Customer Returns Btn')">Customer Returns</h3>
									<div class="accordionData">
										<div class="accordion" id="customerreturnsSubItems">
										</div>
									</div>
								<h3 id="entfulTab" onclick="ga('send','event','third button','Enterprise Fulfillment Btn')">Enterprise Fulfillment</h3>
									<div class="accordionData">
										<div class="accordion" id="entfulSubItems">
										</div>
									</div>
								<h3 id="lcretTab" onclick="ga('send','event','third button','LC Returns Btn')">Logistic Center (LC) Returns</h3>
									<div class="accordionData">
										<div class="accordion" id="lcretSubItems">
										</div>
									</div>
								<h3 id="orderinvTab" onclick="ga('send','event','third button','Order Invoice Btn')">Order Invoice Questions</h3>
									<div class="accordionData">
										<div class="accordion" id="orderinvoiceSubItems">
										</div>
									</div>
								<h3 id="reportsTab" onclick="ga('send','event','third button','Reports Btn')">Reports</h3>
									<div class="accordionData">
										<div class="accordion" id="reportsSubItems">
										</div>
									</div>
								<h3 id="shipTab" onclick="ga('send','event','third button','Shipment Btn')">Shipment Questions</h3>
									<div class="accordionData">
										<div class="accordion" id="shipmentSubItems">
										</div>
									</div>
							</div>
						</div>
				</div>
			</div>
			<div id="tab5" class="tab">
				<div class="accordion">
					<h3 id="giftcardTab" onclick="ga('send','event','second button','Gift Card Sub Btn')">Gift Card</h3>
						<div class="accordionData">
							<div class="accordion">
								<h3 id="abortTab" onclick="ga('send','event','third button','Abort Void Btn')">Abort Void</h3>
									<div class="accordionData">
										<div class="accordion" id="abortvoidSubItems">
										</div>
									</div>
								<h3 id="cardTab" onclick="ga('send','event','third button','Card Info Btn')">Card Information</h3>
									<div class="accordionData">
										<div class="accordion" id="cardinfoSubItems">
										</div>
									</div>
								<h3 id="deactiveTab" onclick="ga('send','event','third button','Deactive Btn')">Deactive</h3>
									<div class="accordionData">
										<div class="accordion" id="deactiveSubItems">
										</div>
									</div>
								<h3 id="lostTab" onclick="ga('send','event','third button','Lost/Stolen Btn')">Lost/Stolen</h3>
									<div class="accordionData">
										<div class="accordion" id="lostSubItems">
										</div>
									</div>
								<h3 id="dotcomorderTab" onclick="ga('send','event','third button','GC on jcp.com Btn')">Gift Card on jcp.com Order</h3>
									<div class="accordionData">
										<div class="accordion" id="gcdotcomSubItems">
										</div>
									</div>
							</div>
						</div>
				</div>
			</div>
			<div id="tab6" class="tab">
				<p>
				The JCPenney Travel & Expense Portal provides one location for you to access all of your travel and expense related tools, services, and information 24 hours a day; while in the office or on the road. 
				</p>
				<p><br>
				Contact Information: <br>
				JCP Travel Office 972-431-2200 <br>
 				</p><br>
				<a href="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/AccountsPayable/Travel/SitePages/Main.aspx" onclick="ga('send','event','second button','Travel Link')">Travel & Expense Portal</a>
			</div>
		</div>
	</div>
	<div id="hotTopics" class="tab" style="display:block">
		<img src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/StoreSupportImages/hotTopicsHeader.png" />
		<div id="horizontalRule2"></div>
		<div id="hotTopicsText">							
		</div>
	</div>
	<div id="btmSectionWrap">
		<div id="btmSection">
			<a href="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/_layouts/15/start.aspx#/Lists/SiteFeedback/NewForm.aspx?Source=https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SitePages/StoreSupport.aspx&ContentTypeId=0x0100C57C2425C93DA84AABD01084F5D80D41&RootFolder=%2Fsites%2FSPOStdControllers%2FJCPSSC%2FLists%2FSiteFeedback" id="feedback">Click here to provide feedback about this site</a>
		</div>
	</div>
</div>
<script src="https://jcp.sharepoint.com/sites/SPOStdControllers/JCPSSC/SiteAssets/index.js" type="text/javascript"></script>
</body>
</html>

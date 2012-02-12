
<%@ page import="kendo.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
        <script>
        	$(document).ready(function(){

        		 $("#comboBox").kendoComboBox({
        			  index: 0,
        			  dataTextField: "name",
        			  dataValueField: "id",
        			  dataSource: {
        			   type: "json",
        			   serverFiltering: true,
        			   transport: {
        				   read: "${createLink(absolute:true, controller: 'ComboBox', action:'list')}"
        			   },
        			   schema: {
        	        	    data:"data"
        	           }
        			  },
        			  template: $("#scriptTemplate").html(),        			  
        			 });
	        	
        	});

    </script>
		
		
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		
		<div id="example" class="k-content">
 			<input id="comboBox" />
 		</div>
		
	</body>
</html>

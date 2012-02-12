
<%@ page import="kendo.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
        <script>
            $(document).ready(function(){
                
    			  $("#grid").kendoGrid({

    				  columns: [ { title: "Id", field: "id" }, 
    				               { title: "First name", field: "firstName", nullable:true},
    				               { title: "Surname", field: "surName" },
    				               { title: "Stret name", field: "streetName" },
    				               { title: "Stret number", field: "streetNumber" },
    				               { title: "City", field: "city" },
    				               { title: "Zip code", field: "zipCode" },
    				               { title: "Country", field: "country" }
    				                ],

				     dataSource: {
    				              transport: {
    				                 read: "${createLink(absolute:true, controller: 'LiveGrid', action:'listAll')}"
    				              },
    				              dataType: "json",    
    				              serverPaging: true,    	                          
    	                          pageSize: 30,    	    				              				             
    				              schema: {
    				            	    total: "count",  
    				            	    data: "data",    				            	              				             
    	                                model: {
    	                                    fields: {
    	                                    	id: { type: "string" },
    	                                    	firstName: { type: "string" },
    	                                    	surName: { type: "string" },
    	                                    	streetName: { type: "string" },
    	                                    	streetNumber: { type: "string" },
    	                                    	city: { type: "string" },
    	                                    	zipCode: { type: "string" },
    	                                    	country: { type: "string" }
    	                                    }
    	                                }
   	                              }    				              
	                  },

	                  scrollable: {
                          virtual: true
                      },	                  
	                  selectable: "multiple, row",	                  
	                  height: 200

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
 			<div id="grid"></div>
 		</div>
		
	</body>
</html>

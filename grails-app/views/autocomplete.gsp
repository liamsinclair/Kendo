
<%@ page import="kendo.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
        <script>
        $(document).ready(function(){
        	 $("#autoComplete").kendoAutoComplete({
        	  minLength:3,
        	  dataTextField:"name",
        	  filter: "contains",
        	  dataSource: new kendo.data.DataSource({
        	   serverFiltering: true,
        	   transport: {
        	    read: {
        	     url: "${createLink(absolute:true, controller: 'AutoComplete', action:'listData')}",
        	     data: {
        	      q: function(){
        	       return $("#autoComplete").data("kendoAutoComplete").value();
        	      }
        	     }
        	    }
        	   },
        	   schema: {
        	    data:"data"
        	   }
        	  }),
        	  change: function(){
        	   this.refresh();
        	  }
        	 })
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
 			Country (at least 3 chars): <input id="autoComplete" />
 		</div>
		
	</body>
</html>

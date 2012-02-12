<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
						
        <script>
            $(document).ready(function(){

            	var minDate = new Date()
            	minDate.setDate(minDate.getDate()-5)

            	var maxDate = new Date()
            	maxDate.setDate(maxDate.getDate()+5)
            	
            	$("#calendar").kendoCalendar({
            		 value: new Date(),
            	});

            	$("#minMaxCalendar").kendoCalendar({
           		 	value: new Date(),
           		 	min : minDate,
           		 	max : maxDate
           		});
           	
            	$("#monthCalendar").kendoCalendar({
           		 	value: new Date(),
           		 	start : "year",
           		 	depth : "year"
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
			<p>Calendar (standard)<p/>
 			<div id="calendar"></div>
			<p>Calendar with min and max value</p>
 			<div id="minMaxCalendar"></div>
			<p>Calendar with only month to choose</p>
 			<div id="monthCalendar"></div> 			
 		</div>
		
	</body>
</html>

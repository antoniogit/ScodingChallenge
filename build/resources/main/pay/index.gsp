<!DOCTYPE html>
<html>
     <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
  <body>
    <h1>Pay</h1>
    <br/>
    	<form>
	        <div class="form-group">
	            <label for="amonunt_to">To</label>          
	            <g:select id="amonunt_to" name="amonunt_to" class="form-control" required=""
	        	from="${account}"
		        value="name"
		        noSelection="${['null':'Select..']}" />
	        </div>
	        <br>
	        <div class="form-group">
	            <label for="amount_from">From</label>
	             <g:select id="amount_from" class="form-control"  name="amount_from" required=""
	        	from="${account}"
		        value="name"
		        noSelection="${['null':'Select..']}" />
	        </div>
	        <br>
	        <div class="form-group">
	            <label for="amount_sent">Amount</label>
	            <input type="text" id="amount_sent" class="form-control" style="width:500px;" name="amount_sent" required="" maxlength="50">     
	        </div>

	        %{--<button type="submit" class="btn btn-default">Send</button>--}%
	        <g:actionSubmit value="Send" action="g_Inbox" style="color: #000000"></g:actionSubmit>
    	</form>
    </body>
</html>


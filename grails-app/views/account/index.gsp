<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
  <body>
    <h1>All accounts</h1>
    <br/>
        <g:each in="${accounts}" var="account" status="i">
         <g:link controller="transactions" action="index" params="[name: account.name]"> <h3>${i+1}. ${account.name}, </h3></g:link>
           
            <p>
                email: ${account.emailAddress}
            </p>
            <p>
                balance: ${account.balance}
            </p>

            <br/>
        </g:each>
    </body>
</html>
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
            <h3>${i+1}. ${account.name}, email: ${account.emailAddress}</h3>
            <p>
                balance: ${account.balance}
            </p>
            <br/>
        </g:each>
    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
    </head>
  <body>
    <h2>Transactions</h2>
    <br>
    <h1>Received:</h1>
    <g:each in="${paiedTo}" var="transfer" status="i">
          <p>${i+1}. ${transfer.receiveFrom} ---> ${transfer.sendTo} </p>
            <p>
                Amount: ${transfer.amount}
            </p>
            <br/>
    </g:each>
    <h1>Sent:</h1>
    <g:each in="${paiedfrom}" var="transfer" status="i">
          <p>${i+1}. ${transfer.receiveFrom} ---> ${transfer.sendTo} </p>
            <p>
                Amount: ${transfer.amount}
            </p>
            <br/>
    </g:each>
</html>
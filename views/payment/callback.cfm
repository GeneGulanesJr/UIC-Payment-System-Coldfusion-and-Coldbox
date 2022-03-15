<cfoutput>
<h1>payment.callback</h1>

<cfdump var="#url#" />

<cfset status = #status#>


 <cfset myVar = now()>

 <cfdump  var="#myVar#">
</cfoutput>





<cfif status eq "F">
  <cfquery name="inserData" datasource="uicpaymentdatabase"> 
INSERT INTO UICPaymentDatabase.dbo.StudentTransaction (TransactionDates, StudentID, TransactionDetails, Amount, TransactionStatus, TransactionID) 
VALUES  ('#DATEFORMAT(#myVar#, "m/d/yyyy")#', #param1#, '#message#', #param2#, '#status#','#txnid#')
;
</cfquery>

<cfelseif status eq "S">
   <cfoutput>Payment Success</cfoutput>

  <cfquery name="inserData" datasource="uicpaymentdatabase"> 
INSERT INTO UICPaymentDatabase.dbo.StudentTransaction (TransactionDates, StudentID, TransactionDetails, Amount, TransactionStatus, TransactionID) 
VALUES  ('#DATEFORMAT(#myVar#, "m/d/yyyy")#', #param1#, '#message#', #param2#, '#status#','#txnid#')
;
</cfquery>

<cfelseif status eq "P">
     <cfoutput>Payment Pending</cfoutput>
       <cfquery name="inserData" datasource="uicpaymentdatabase"> 
INSERT INTO UICPaymentDatabase.dbo.StudentTransaction (TransactionDates, StudentID, TransactionDetails, Amount, TransactionStatus, TransactionID) 
VALUES  ('#DATEFORMAT(#myVar#, "m/d/yyyy")#', #param1#, '#message#', #param2#, '#status#','#txnid#')
;
</cfquery>

<cfelseif status eq "U">
     <cfoutput>Payment Unknown</cfoutput>

     <cfelseif status eq "R">
     <cfoutput>Payment Refund</cfoutput>

     <cfelseif status eq "K">
     <cfoutput>Payment Chargeback</cfoutput>

     <cfelseif status eq "V">
     <cfoutput>Payment Void</cfoutput>

     <cfelseif status eq "A">
     <cfoutput>Payment Authorized</cfoutput>



</cfif>



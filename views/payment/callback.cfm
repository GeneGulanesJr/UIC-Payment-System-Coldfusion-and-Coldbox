<cfoutput>
<h1>payment.callback</h1>

<cfdump var="#url#" />

<cfset status = #status#>


 <cfset myVar = now()>

 <cfdump  var="#myVar#">
</cfoutput>





<cfstoredproc dataSource = "uicpaymentdatabase" procedure = "PaymentMade" >
<cfset date123 = #DATEFORMAT(#myVar#, "m/d/yyyy")#>
<cfprocparam cfsqltype="cf_sql_date" value="#date123#" dbvarname=@TransactionDates > 
<cfprocparam cfsqltype="cf_sql_bigint" value="#param1#" dbvarname=@StudentID> 
<cfprocparam cfsqltype="cf_sql_VARCHAR" value="#message#" dbvarname=@TransactionDetails> 
<cfprocparam cfsqltype="cf_sql_MONEY" value="#param2#" dbvarname=@Amount> 
<cfprocparam cfsqltype="cf_sql_VARCHAR" value="#status#" dbvarname=@TransactionStatus> 
<cfprocparam cfsqltype="cf_sql_VARCHAR" value="#txnid#" dbvarname=@TransactionID> 
</cfstoredproc> 



<cfif status eq "F">
   <cfoutput>Payment Success</cfoutput>
<cfelseif status eq "S">
   <cfoutput>Payment Success</cfoutput>


<cfelseif status eq "P">
   <cfoutput>Payment Pending</cfoutput>

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



<cfset source = "uicpaymentdatabase">
<cfif isDefined("form.first_name")> 
    <cfstoredproc procedure="InsertEmployee" datasource="#source#"> 
        <cfprocparam 
            cfsqltype="cf_sql_varchar" 
            value="#form.first_name#"
        > 
        <cfprocparam 
            cfsqltype="cf_sql_varchar" 
            value="#form.last_name#"
        > 
        <cfprocparam 
            cfsqltype="cf_sql_numeric" 
            value="#form.salary#"
        >
        <cfprocparam 
            cfsqltype="cf_sql_varchar" 
            value="#form.city#"
        >  
        <cfprocresult name="" resultset>
    </cfstoredproc> 
    <cfoutput> 
        <h3>'#form.first_name#' inserted into database.</h3> 
    </cfoutput> 
</cfif> 
<cfform action="" method="post"> 
    <h3>Insert new employee</h3> 
    First Name: 
    <cfinput type="text" size="20" required="yes" name="first_name"/> 
    <br/>
    Last Name: 
    <cfinput type="text" size="20" required="yes" name="last_name"/> 
    <br/>  
    Salary: 
    <cfinput type="text" size="20" required="yes" name="salary" validate="float" /> 
    <br/> 
    City: 
    <cfinput type="text" size="5" required="yes" name="city"  /> 
    <br/> 
    <input type="submit"/> 
</cfform> 


<cfset procid = Trim(#Form.procid#)>
<cfset merchantID = Trim(#Form.merchantid#)>
<cfset txnid = Trim(#Form.txnid#)>
<cfset amount = Trim(#Form.amount#)>
<cfset ccy = Trim(#Form.ccy#)>
<cfset StudentID = Trim(#Form.StudentID#)>
<cfset FirstName = Trim(#Form.FirstName#)>
<cfset MiddleName = Trim(#Form.MiddleName#)>
<cfset LastName = Trim(#Form.LastName#)>
<cfset EmailAddress = Trim(#Form.EmailAddress#)>
<cfset Address = Trim(#Form.Address#)>
<cfset Department = Trim(#Form.Department#)>
<cfset description = Trim(#Form.description#)>
<cfset key = Trim('xLTbXsuWgEcKgbb')>
<cfset data = Hash('#merchantID#:#txnid#:#amount#:#ccy#:#description#:#EmailAddress#:#key#',"sha-1")>
<cfset data2 = lCase(data)>

<cfoutput>
    <div class="content-wrapper py-5">
        <div class="content">
            <div class="container">
                <div class="invoice p-3 mb-3">
                    <div class="row">
                        <div class="col-12">
                            <h4>
                              Review
                            </h4>
                        </div>
                    </div>
                    <cfdump  var="#data#">
                    <div class="row invoice-info">
                        <div class="col-sm-4 invoice-col">
                            <address>
                                <strong>Student ID Number</strong><br>
                                #Form.StudentID#
                            </address>
                            <address>
                                <strong>Address</strong><br>
                                #Form.Address#
                            </address>
                            <address>
                                <strong>Purpose</strong><br>
                                #Form.description#
                            </address>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <address>
                                <strong>Student Name</strong><br>
                                #Form.FirstName# #Form.MiddleName# #Form.LastName#
                            </address>
                            <address>
                                <strong>Amount to Pay</strong><br>
                                #Form.amount#
                            </address>
                        </div>
                        <div class="col-sm-4 invoice-col">
                            <address>
                                <strong>Student Email Address</strong><br>
                                #Form.EmailAddress#
                            </address>
                            <address>
                                <strong>Department</strong><br>
                                #Form.Department#
                            </address>
                        </div>  
                    </div>
                    <form  
                        action="http://test.dragonpay.ph/Pay.aspx"
                        method="get"
                        id="paymentValidation"
                    >
                      <input type="HIDDEN" name="procid" value="#procid#"> 
                        <input type="HIDDEN" name="merchantid" value="#merchantID#">
                        <input type="HIDDEN" name="txnid" value="#txnid#">
                        <input type="HIDDEN" name="amount" value="#amount#">
                        <input type="HIDDEN" name="ccy" value=#ccy#>
                        <input type="HIDDEN" name="description" value="#description#">
                        <input type="HIDDEN" name="email" value="#EmailAddress#">
                        <input type="HIDDEN" name="digest" value="#data2#">
                          <input type="HIDDEN" name="param1" value="#StudentID#">
                          <input type="HIDDEN" name="param2" value="#amount#">
                        <button type="submit" class="btn btn-success">
                            Submit
                        </button>
                        <button type="submit" class="btn btn-danger">
                            Cancel
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</cfoutput>







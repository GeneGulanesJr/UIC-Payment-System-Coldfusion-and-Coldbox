<!---

<cfoutput>
    <div class="content-wrapper py-5">
        <div class="content">
            <div class="container">
                <section>
                    <p style="color: rgb(34 110 147); font-size: 26px">Instructions</p>
                    <ol style="padding: 8px 14px">
                        <li>
                            Please wait while the form loads below. 
                        </li>
                        <li>
                            Please complete the information for easier processing by the Finance Office.
                        </li>
                        <li>
                            You can upload files with PDF, JPG, or PNG format. For multiple pages, please compress 
                            it into a zip file and upload here.
                        </li>
                        <li>
                            If the form doesn't load, or if you encounter a "<strong >Sorry, unable to open the file 
                            at this time. </strong>" message, please log out of your Google/Gmail accounts, or clear
                            your browser's cache and try again.
                        </li>
                        <li>
                            If you encounter further technical problems, please open a support ticket at http://mis.uic.edu.ph/support-ticket/
                        </li>
                    </ol>
                </section>
    <section>
        <p style="color: rgb(34 110 147); font-size: 26px" class="text-uppercase ">
            payment form
        </p>
        <p >
            By filling up this form, you agree and consent UIC to collect, use, and 
            disclose personal information such as full name/s, address/es, contact details 
            including pictures which shall be used by UIC for
        </p>
        <ul class="list-unstyled">
            <li >
                a) reporting and docuemntation purposes
            </li>
            <li>
                b) processing of payment
            </li>
            <li>
                c) school-related operations
            </li>
        </ul>
        <hr>
        <h3>
            Payment Information
        </h3>

        <cfform 
            style="padding: 0px 15px" 
            action="#event.buildLink("payment/paymentpage")#" 
            method="GET"
            id="paymentValidation"
        >
            <div class="mb-3">
               <div class="form-group">
                    <!---
                    <label class="form-label">
                        Student ID Number (required)
                    </label>
                    --->
                    <cfinput 
                        name="stud_id" 
                        id="stud_id" 
                        type="text" 
                        class="form-control" 
                        placeholder="Student ID Number" 
                    >
               </div>
            </div>
            
            <div class="row g-1 mb-3">
                <div class="col">
                    <!---
                    <label class="form-label">
                        Last Name (required)
                    </label>
                    --->
                   <div class="form-group">
                        <cfinput 
                            name="stud_lname" 
                            id="stud_lname" 
                            type="text" 
                            class="form-control" 
                            placeholder="Last Name"
                        >
                   </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                            First Name (required)  
                        </label>
                        --->
                        <cfinput 
                            name="stud_fname" 
                            id="stud_fname" 
                            type="text" 
                            class="form-control" 
                            placeholder="First Name"
                        >
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                        Middle Name (required)
                        </label>
                        --->
                        <cfinput 
                            name="stud_mname" 
                            id="stud_mname" 
                            type="text" 
                            class="form-control" 
                            placeholder="Middle Name"
                        >
                    </div>
                </div>  
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <!---
                    <label class="form-label">
                    Email (required)
                    </label>
                    --->
                    <cfinput 
                        name="stud_email" 
                        id="stud_email" 
                        type="text" 
                        class="form-control" 
                        placeholder="Email Address"
                    >
                </div>
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <!---
                    <label class="form-label">
                    Alternate Email (optional)
                    </label>
                    --->
                    <cfinput 
                        name="stud_alt_email" 
                        id="stud_alt_email" 
                        type="text" 
                        class="form-control" 
                        placeholder="Alternate Email Address"
                    >
                </div>
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <!---
                    <label class="form-label">
                    Contact Number (required)
                    </label>
                    --->
                    <cfinput 
                        name="stud_num" 
                        id="stud_num" 
                        type="text" 
                        class="form-control" 
                        placeholder="09XXXXXXXXX"
                    >
                </div>
            </div>
            <div class="row g-1 mb-3">
                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                        Amount Paid (required)
                        </label>
                        --->
                        <cfinput 
                            name="amount" 
                            id="amount" 
                            type="text" 
                            class="form-control" 
                            placeholder="Amount Paid"
                        >
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                        Payment Slip / Receipt Number (required)
                        </label>
                        --->
                        <cfinput 
                            name="payment_slip" 
                            id="payment_slip" 
                            type="text" 
                            class="form-control" 
                            placeholder="Payment Slip / Receipt Number"
                        >
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                        Payment Center (required)
                        </label>
                        --->
                        <cfinput 
                            name="payment_center" 
                            id="payment_center" 
                            class="form-control" 
                            list="bankOptions"  
                            placeholder="Payment Center"
                        >
                        <!---
                        <datalist id="bankOptions" >
                            <cfloop query=#prc.payments#>
                                <option value="#prc.payments.BankName#">
                            </cfloop>
                        </datalist> --->
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <div class="form-group">
                    <!---
                    <label class="form-label">
                    Department (required)
                    </label>
                    --->
                    <cfinput 
                        name="department" 
                        id="department" 
                        class="form-control" 
                        list="departmentOptions"  
                        placeholder="Select the Department"
                    >
                    <!---
                    <datalist id="departmentOptions">
                        <cfloop query=#prc.departments#>
                            <option value="#prc.departments.DepartmentName#">
                        </cfloop>
                    </datalist>--->
                </div>
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <!---
                    <label class="form-label">
                    Purpose (required)
                    </label>
                    --->
                    <cfinput
                        name="purpose" 
                        id="purpose" 
                        type="text" 
                        class="form-control" 
                        placeholder="Purpose"
                    >
                </div>
            </div>
            <div class="row g-1 mb-3">
                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                        Amount Paid (required)
                        </label>
                        --->
                        <cfinput 
                            name="invoice_no" 
                            id="invoice_no" 
                            type="text" 
                            class="form-control" 
                            placeholder="Invoice No"
                        >
                    </div>
                </div>

                <div class="col">
                    <div class="form-group">
                        <!---
                        <label class="form-label">
                        Payment Center (required)
                        </label>
                        --->
                        <cfinput 
                            name="remarks" 
                            id="remarks" 
                            class="form-control" 
                            placeholder="Remarks"
                        >
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <div class="form-group">
                    <label class="form-label">Upload Proof of Payment</label>
                    <cfinput 
                        name="proof_of_payment" 
                        id="proof_of_payment" 
                        class="form-control-file" 
                        type="file"
                    >
                </div>
            </div>
            <div class="mb-3">
                <ul class="list-unstyled">
                    <li >
                    <h4>
                    Terms and Conditions
                    </h4>
                        <ol>
                            <li>
                                Your submission is still subject for review and verification
                            </li>
                            <li>
                                Only upon verification shall your payment be processed and 
                                entered into the school information system.
                            </li>
                            <li>
                                You certify that your submitted documents online authentic.
                            </li>
                        </ol>
                    </li>
                    <li>
                    <h4>
                        Acknowledgement:
                    </h4>
                    </li>
                    <li>
                        By submitting this form, I acknowledge that I have read, 
                        understood, and agreed to the terms and conditions for the
                        processing of my payment.
                    </li>
                </ul>
            </div>
            <button type="submit" class="btn btn-success">
                Submit
            </button>
            <button type="submit" class="btn btn-danger">
                Cancel
            </button>
        </cfform>
    </section>
            </div>
        </div>
    </div>
</cfoutput>
--->

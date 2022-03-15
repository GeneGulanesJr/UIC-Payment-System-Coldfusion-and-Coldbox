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
      <p>
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
        action="#event.buildLink("payment/pending")#"
        method="post"
        id="paymentValidation"
      >
        <input type="HIDDEN"  id="merchantid" name="merchantid" value="DL4A1EUOTIC">
        <input type="HIDDEN" id="txnid" name="txnid" value=" #CreateUUID()#">
        <input type="HIDDEN" id="ccy"  name="ccy" value="PHP">

        
        <div class="form-group row">
          <label class="col-3 col-form-label" for="StudentID">Bank</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-building-columns"></i>
                </div>
              </div> 
              <select id="procid" name="procid"  class="custom-select">
                <option selected disabled>Select Bank</option>
                <option value="BAYD">Bayad Center</option>
                <option value="BDO">BDO Online Banking</option>
                <option value="CC">Credit Cards</option>
                <option value="CEBL">Cebuana Lhuillier</option>
                <option value="DPAY">Dragonpay Prepaid Credits</option>
                <option value="ECPY">ECPay</option>
                <option value="GCSH">Globe Gcash</option>
                <option value="LBC">LBC</option>
                <option value="PYPL">PayPal</option>
                <option value="MLH">M. Lhuillier</option>
                <option value="RDS ">Robinsons Dept Store</option>
                <option value="SMR">SM Payment Counters</option>
                <option value="711">7-Eleven (if applicable)</option>
              </select> 
            </div> 
          </div>
        </div>
        <div class="form-group row">
          <label class="col-3 col-form-label" for="StudentID">Student ID Number</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-id-card"></i>
                </div>
              </div> 
              <input 
                id="StudentID" 
                name="StudentID" 
                placeholder="E.g. 180000000000" 
                type="number" 
                aria-describedby="StudentIDHelpBlock" 
                 class="form-control"
              >
            </div> 
          </div>
        </div>
        <div class="form-group row">
          <label for="FirstName" class="col-3 col-form-label">First Name</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-f"></i>
                </div>
              </div> 
              <input 
                id="FirstName" 
                name="FirstName" 
                placeholder="Student First Name" 
                type="text" 
                aria-describedby="FirstNameHelpBlock" 
                class="form-control"
              >
            </div> 
          </div>
        </div>
        <div class="form-group row">
          <label for="MiddleName" class="col-3 col-form-label">Middle Name</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-m"></i>
                </div>
              </div> 
              <input 
                id="MiddleName" 
                name="MiddleName" 
                placeholder="Student Middle Name" 
                type="text" 
                aria-describedby="MiddleNameHelpBlock" 
                 class="form-control"
              >
            </div>
          </div>
        </div>
        <div class="form-group row">
          <label for="LastName" class="col-3 col-form-label">Last Name</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-l"></i>
                </div>
              </div> 
              <input 
                id="LastName" 
                name="LastName" 
                placeholder="Student Last Name" 
                type="text" 
                aria-describedby="LastNameHelpBlock" 
                 class="form-control"
              >
            </div> 
          </div>
        </div>
        <div class="form-group row">
          <label for="EmailAddress" class="col-3 col-form-label">Email Address</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-envelope"></i>
                </div>
              </div> 
              <input 
                id="EmailAddress" 
                name="EmailAddress" 
                placeholder="E.g. jcruz_180000000000@uic.edu.ph" 
                type="text" 
                aria-describedby="EmailAddressHelpBlock" 
                 
                class="form-control"
              >
            </div> 
          </div>
        </div>
        <div class="form-group row">
          <label for="Address" class="col-3 col-form-label">Address</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-address-book"></i>
                </div>
              </div> 
              <input 
                id="Address" 
                name="Address" 
                placeholder="Student Addess" 
                type="text" 
                class="form-control" 
                
              >
            </div>
          </div>
        </div>
        <div class="form-group row">
          <label for="amount" class="col-3 col-form-label">Amount To Pay:</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                 <i class="fa-solid fa-peso-sign"></i>
                </div>
              </div> 
              <input 
                id="amount"
                name="amount" 
                placeholder="E.g. 1000" 
                type="text" 
                aria-describedby="amountHelpBlock" 
                 
                class="form-control custom4"
              >
            </div>
          </div>
        </div>
        <div class="form-group row">
          <label for="Department" class="col-3 col-form-label">Department</label> 
          <div class="col-9">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fa-solid fa-building"></i>
                </div>
              </div>
            <select id="Department" name="Department" aria-describedby="DepartmentHelpBlock"  class="custom-select">
              <option selected disabled>Select Student Department</option>
              <option value="con">Basic Education Department</option>
              <option value="ccs">Higher Education Department (College, Graduate, Post-graduate, Clinical Pharmacy, ClinPharm, etc.)</option>
              <option value="fish">Other (Techvoc, SRC, Non-academic)</option>
            </select> 
            </div>
          </div>
        </div> 
        <div class="form-group row">
          <label for="description" class="col-3 col-form-label">Transaction Purpose</label> 
          <div class="col-9">
            <textarea 
              id="description" 
              name="description" 
              cols="40"
              placeholder="E.g. Payment For Remaining Balance" 
              rows="5" 
              class="form-control" 
              aria-describedby="descriptionHelpBlock"
            ></textarea> 
           
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
            <button onclick="history.back()" class="btn btn-danger">
                Cancel
            </button>
        </cfform>
    </section>
            </div>
        </div>
    </div>
</cfoutput>

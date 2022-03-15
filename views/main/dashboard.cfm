
<cfquery name="getData" datasource="uicpaymentdatabase"> 
SELECT *
FROM dbo.StudentBalance
INNER JOIN dbo.StudentDetails ON dbo.StudentBalance.StudentID=dbo.StudentDetails.StudentID
INNER JOIN dbo.StudentTransaction ON dbo.StudentBalance.StudentID=dbo.StudentDetails.StudentID
WHERE dbo.StudentDetails.StudentID = #form.stud_id#
;
</cfquery>

<cfquery name="getData2" datasource="uicpaymentdatabase"> 
SELECT *
FROM dbo.StudentTransaction

WHERE dbo.StudentTransaction.StudentID = #form.stud_id#
;
</cfquery>


<cfif getData.recordCount EQ 0>
<cfoutput>
<h1>No User Found</h1>
</cfoutput>
</cfif>

<cfoutput>
  <div class="content-header">
    <div class="container">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
    
          </ol>
        </div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="card card-primary ">
            <div class="card-body box-profile">
              <div class="text-center">
                <img 
                  class="profile-user-img img-fluid img-circle"
                  src="https://previews.123rf.com/images/kritchanut/kritchanut1406/kritchanut140600093/29213195-male-silhouette-avatar-profile-picture.jpg"
                  alt="User profile picture"
                >
              </div>
              <h3 class="profile-username text-center">#getData.FirstName# #getData.MiddleName# #getData.LastName#</h3>
              <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                  <b>ID Number</b>
                  <p class="text-muted">
                #getData.StudentID#
                  </p>
                </li>
                <li class="list-group-item">
                  <b>College Program</b>
                  <p class="text-muted">
                  #getData.Course#
                  </p>
                </li>
              </ul>
              <a href="##" class="btn btn-primary btn-block"><b>Update Details</b></a>
            </div>
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="card">
            <div class="card-header p-2">
              <ul class="nav nav-pills">
                <li class="nav-item">
                  <a class="nav-link active" href="##schedule" data-toggle="tab">
                    Class Schedule
                  </a>
                </li>
                <li class="nav-item">
                  <a 
                    class="nav-link" 
                    href="##academic" 
                    data-toggle="tab"
                  > 
                    Academic Record
                  </a>
                </li>
                <li class="nav-item">
                  <a 
                    class="nav-link" 
                    href="##clearance" 
                    data-toggle="tab"
                  >
                    Clearance
                  </a>
                </li>
                <li class="nav-item">
                  <a 
                    class="nav-link" 
                    href="##financial" 
                    data-toggle="tab"
                  >
                    Financial Record
                  </a>
                </li>
              </ul>
            </div>
            <div class="card-body">
              <div class="tab-content">
                <div class="active tab-pane" id="schedule">
                  <p>
                    class sched pane
                  </p>
                </div>
                <div class="tab-pane" id="academic">
                  <p>
                    student academic records pane
                  </p>
                </div>
                <div class="tab-pane" id="clearance">
                  <p>
                    student clearance pane
                  </p>
                </div>
                <div class="tab-pane" id="financial">
                 <div class="row">

                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header" style=" color: ##ffffff; background-color: ##e57373;">
                                <h3 class="card-title">Total Balance</h3>
                            </div>
                            <div class="card-body">
                               #getData.TotalBalance#
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header" style=" color: ##ffffff; background-color: ##e57373;">
                                <h3 class="card-title">Remaining Balance</h3>
                            </div>
                            <div class="card-body">
                              #getData.RemainingBalance#
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header" style=" color: ##ffffff; background-color: ##e57373;">
                                <h5 class="card-title">Transacion History</h5>
                                
                            </div>
                            <div class="card-body">
                            
                                <table id="example1" class="table table-bordered table-striped">
                                    <div class="d-flex flex-row-reverse">
                                 <a href="#event.buildLink( "payment/paymentpage" )#">
                                    <button
                                        type="button"  
                                        class="btn btn-primary"
                                    >
                                        Make Payment
                                    </button>
                                  </a>
                                </div>
                                    <thead>
                                        <tr>
                                            <th>Transaction No.</th>
                                            <th>Transacion Date</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <cfloop query=#getData2#>
                                          <tr>
                                            <td>#getData2.TransactionID#</td>
                                            <td> #DATEFORMAT(#getData2.TransactionDates#, "m/d/yyyy")#</td>
                                            <td>#getData2.Amount#</td>
                                            <td>#getData2.TransactionStatus#</td>
                                            <td>
                                              <button 
                                                type="button" 
                                                class="btn btn-info"
                                                data-toggle="modal" 
                                                data-target="##modal-lg"
                                              >
                                                View Details
                                              </button>
                                                <div class="modal fade" id="modal-lg">
                                                  <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h4 class="modal-title">Transaction Details</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                        </button>
                                                      </div>
                                                      <div class="modal-body">
                                                        <p>One fine body&hellip;</p>
                                                      </div>
                                                      <div class="modal-footer justify-content-between">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                            </td>
                                          </tr>
                                        </cfloop>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div> 
                </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</cfoutput>
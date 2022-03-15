<cfoutput>
  <div class="login-page ">
    <div class="login-box ">
      <div class="card">
        <div class="card-body login-card-body">
          <cfform 
            action="#event.buildLink( 'main/dashboard')#" 
            method="POST"
            id="searchStudent"
          >
            <div class="mb-3">
              <div class="form-group">
                <input 
                  type="number" 
                  class="form-control" 
                  name = "stud_id" 
                  id="stud_id" 
                  value="" 
                  placeholder="Student ID Number"
                >
              </div>
            </div>
            
              <div class="col-4">
                <button type="submit" id="submit" class="btn btn-primary btn-block">Search</button>
              </div>
            </div>
          </cfform>
        </div>
      </div>
    </div>
  </div>
</cfoutput>
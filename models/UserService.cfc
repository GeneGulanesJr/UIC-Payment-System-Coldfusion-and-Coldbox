/**
 * I am a new Model Object
 */
component singleton accessors="true"{

	// Properties
	

	/**
	 * Constructor
	 */
	UserService function init(){

		return this;
	}

	/**
	 * getAllUsers
	 */
	function getAllUsers(){
		var query_string = "SELECT *
			FROM dbo.StudentBalance
			INNER JOIN dbo.StudentDetails ON dbo.StudentBalance.StudentID=dbo.StudentDetails.StudentID;";
		all_users = queryExecute(query_string, [], {datasource="uicpaymentdatabase"})
		writeDump(all_users);
		return all_users;
	}



    function verifyUser(){
		
	}

} 
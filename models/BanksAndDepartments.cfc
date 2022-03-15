/**
 * I am a new Model Object
 */
component singleton accessors="true"{

	// Properties
	

	/**
	 * Constructor
	 */
	BanksAndDepartments function init(){

		return this;
	}

	/**
	 * getAllBanks
	 */
	function getAllBank(){
		query_string = "SELECT * FROM Banks"
		all_banks = queryExecute(query_string, [], {datasource="uicpaymentdatabase"})
		return all_banks;
	}
	function getAllDepartment(){
		query_string = "SELECT * FROM Departments"
		all_departments = queryExecute(query_string, [], {datasource="uicpaymentdatabase"})
		return all_departments;
	}
}
/**
 * I am a new handler
 */
component{
	property name="banksAndDepartments" inject="BanksAndDepartments";
	// OPTIONAL HANDLER PROPERTIES
	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	// REST Allowed HTTP Methods Ex: this.allowedMethods = {delete='POST,DELETE',index='GET'}
	this.allowedMethods = {};

	/**
	IMPLICIT FUNCTIONS: Uncomment to use

	function preHandler( event, rc, prc, action, eventArguments ){
	}
	function postHandler( event, rc, prc, action, eventArguments ){
	}
	function aroundHandler( event, rc, prc, targetAction, eventArguments ){
		// executed targeted action
		arguments.targetAction( event );
	}
	function onMissingAction( event, rc, prc, missingAction, eventArguments ){
	}
	function onError( event, rc, prc, faultAction, exception, eventArguments ){
	}
	function onInvalidHTTPMethod( event, rc, prc, faultAction, eventArguments ){
	}
	*/

	/**
	 * callback
	 */


	function index( event, rc, prc ){
			
		event.setView( "payment/index" );
	
	
	}

    function dragonpay( event, rc, prc ){
		event.setView( "payment/dragonpay" );

	}

	  function paymentFailed( event, rc, prc ){
		event.setView( "payment/failure" );
	}

	  function paymentSuccess( event, rc, prc ){
		event.setView( "payment/paymentSuccess" );
	}

  function paymentverification( event, rc, prc ){
		event.setView( "payment/paymentverification" );
	}
function paymentpage( event, rc, prc ){
	prc.payments = BanksAndDepartments.getAllBank();
		prc.departments = BanksAndDepartments.getAllDepartment();
		event.setView( "payment/paymentpage" );
	}
	



}

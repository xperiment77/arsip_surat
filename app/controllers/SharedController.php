<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * login_user_name_value_exist Model Action
     * @return array
     */
	function login_user_name_value_exist($val){
		$db = $this->GetModel();
		$db->where("user_name", $val);
		$exist = $db->has("login");
		return $exist;
	}

	/**
     * login_email_value_exist Model Action
     * @return array
     */
	function login_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("login");
		return $exist;
	}

}

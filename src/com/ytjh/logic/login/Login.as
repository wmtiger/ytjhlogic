package com.ytjh.logic.login 
{
	import com.wm.utils.Log;
	import com.ytjh.logic.base.Logic;
	import com.ytjh.net.HttpService;
	/**
	 * 登录逻辑
	 * @author wmtiger
	 */
	public class Login extends Logic
	{
		private const LOGIN:String = "login";
		
		public function Login() 
		{
			
		}
		
		public function loginHandler(userName:String, pwd:String = ""):void
		{
			HttpService.instance.sendReqInfo(LOGIN, loginOk, true, { passid:userName, pwd:pwd }, loginError );
		}
		
		private function loginError():void 
		{
			Log.info("loginError");
		}
		
		private function loginOk(xml:XML):void 
		{
			Log.info("loginOk");
		}
		
	}

}
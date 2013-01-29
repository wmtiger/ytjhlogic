package com.ytjh.model 
{
	/**
	 * 用户信息
	 * @author wmtiger
	 */
	public class UserModel 
	{
		private var _instance:UserModel;
		
		
		
		public function UserModel() 
		{
			
		}
		
		public function get instance():UserModel 
		{
			if (_instance == null) 
			{
				_instance = new UserModel();
			}
			return _instance;
		}
		
		public function flush():void
		{
			
		}
		
	}

}
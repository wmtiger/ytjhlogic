package com.ytjh.model 
{
	import com.ytjh.vo.UserVO;
	/**
	 * 用户信息
	 * @author wmtiger
	 */
	public class UserModel extends DataModel
	{
		private var _instance:UserModel;
		
		private var _userVO:UserVO;
		
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
		
		public function get userVO():UserVO 
		{
			return _userVO;
		}
		
		public function set userVO(value:UserVO):void 
		{
			_userVO = value;
		}
		
		public function flush():void
		{
			
		}
		
	}

}
package com.ytjh.model 
{
	import com.ytjh.setting.Setting;
	import com.ytjh.vo.FollowVO;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class FollowModel 
	{
		private static var _instance:FollowModel;
		
		private var _followList:Vector.<FollowVO>;
		
		public function FollowModel() 
		{
			_followList = new Vector.<FollowVO>();
		}
		
		static public function get instance():FollowModel 
		{
			if (_instance == null) 
			{
				_instance = new FollowModel();
			}
			return _instance;
		}
		
		public function getFollowNum():int
		{
			return _followList.length;
		}
		
		public function getFollowMaxNum():int
		{
			return Setting.DEF_FOLLOW_MAX_NUM + VipModel.instance.vipLevel;
		}
		
	}

}
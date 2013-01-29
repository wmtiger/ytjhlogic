package com.ytjh.utils 
{
	import com.ytjh.model.VipModel;
	import com.ytjh.setting.Setting;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class FollowUtil 
	{
		
		public function FollowUtil() 
		{
			
		}
		
		public static function getFollowTotals():int
		{
			return Setting.DEF_FOLLOW_MAX_NUM + VipModel.instance.vipLevel;
		}
		
	}

}
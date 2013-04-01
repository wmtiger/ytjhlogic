package com.ytjh.vo 
{
	import com.ytjh.base.BaseVO;
	
	/**
	 * 用户数据
	 * @author wmtiger
	 */
	public class UserVO extends BaseVO 
	{
		/**
		 * 玩家id
		 */
		public var actorId:String = "";
		/**
		 * 通行证id
		 */
		public var passportId:String = "";
		/**
		 * 系统赠送黄金
		 */
		public var sysgold:String = "";
		/**
		 * 用户充值黄金
		 */
		public var usergold:String = "";
		/**
		 * 会员等级
		 */
		public var viplevel:String = "";
		/**
		 * 上一次登入时间
		 */
		public var lastlogintime:String = "";
		/**
		 * 上一次登出时间
		 */
		public var lastlogouttime:String = "";
		/**
		 * 创建时间
		 */
		public var createtime:String = "";
		
		public function UserVO(data:Object = null) 
		{
			super(data);
			
		}
		
	}

}
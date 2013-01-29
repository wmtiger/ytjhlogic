package com.ytjh.vo 
{
	import com.ytjh.base.BaseVO;
	
	/**
	 * ...
	 * @author wmtiger
	 */
	public class HeroVO extends BaseVO 
	{
		public var master:String = "";//主公
		public var loyalty:String = "";//忠诚
		public var identity:String = "";//身份
		public var place:String = "";//所在地
		public var like:String = "";//喜好
		
		public var command:String = "";//统率
		public var wushu:String = "";//武艺
		public var wit:String = "";//智力
		public var affairs:String = "";//内政
		public var totalAbility:String = "";//总能力
		
		public var headId:String = "";//英雄头像id
		public var status:String = "";//状态（训练,巡逻,空闲...）
		public var level:String = "";//等级:灰，绿，蓝，紫，橙，红
		
		public function HeroVO() 
		{
			
		}
		
		/**
		 * 获取总能力
		 * @return
		 */
		public function getTotalAbility():int
		{
			return 0;
		}
		
	}

}
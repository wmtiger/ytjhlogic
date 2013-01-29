package com.ytjh.vo 
{
	import com.ytjh.base.BaseVO;
	
	/**
	 * ...
	 * @author wmtiger
	 */
	public class ArmyVO extends BaseVO 
	{
		public var type:String = "";//兵种
		public var level:String = "";//等级
		public var nowExp:String = "";//当前经验
		public var num:String = "";//兵力
		public var train:String = "";//训练度
		public var group:String = "";//军团
		public var place:String = "";//所在地
		
		private var _arms:ArmsVO;//兵种信息
		private var _equipList:Vector.<EquipVO>;//当前部队的装备列表
		
		public function ArmyVO() 
		{
			_equipList = new Vector.<EquipVO>();
		}
		
		public function get arms():ArmsVO 
		{
			return _arms;
		}
		
		public function set arms(value:ArmsVO):void 
		{
			_arms = value;
		}
		
	}

}
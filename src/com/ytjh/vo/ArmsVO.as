package com.ytjh.vo 
{
	import com.wm.utils.HashTable;
	import com.ytjh.base.BaseVO;
	
	/**
	 * ...
	 * @author wmtiger
	 */
	public class ArmsVO extends BaseVO 
	{
		public var type:String = "";//兵科
		public var speed:String = "";//机动力
		public var trainDifficulty:String = "";//训练难度
		public var eatFood:String = "";//耗粮量
		public var costGold:String = "";//花费钱
		public var costIron:String = "";//花费铁
		public var costWood:String = "";//花费木
		
		private var _levelInfoList:HashTable;
		
		public function ArmsVO() 
		{
			_levelInfoList = new HashTable();
		}
		
		public function getAttack(level:String):String
		{
			return _levelInfoList[level] == null ? "" : _levelInfoList[level].attack;
		}
		
		public function getDefCavalry(level:String):String
		{
			return _levelInfoList[level] == null ? "" : _levelInfoList[level].defCavalry;
		}
		
		public function getDefArcher(level:String):String
		{
			return _levelInfoList[level] == null ? "" : _levelInfoList[level].defArcher;
		}
		
		public function getDefSpear(level:String):String
		{
			return _levelInfoList[level] == null ? "" : _levelInfoList[level].defSpear;
		}
		
	}

}

class ArmsLevelInfo
{
	public var attack:String = "";//攻击，随等级可变
	public var defCavalry:String = "";//防御（骑兵），随等级可变
	public var defArcher:String = "";//防御（弓兵），随等级可变
	public var defSpear:String = "";//防御（戟兵），随等级可变
	public var needExp:String = "";//升级下一级需要的经验，为0则是满级
}
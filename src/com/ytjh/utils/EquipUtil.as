package com.ytjh.utils 
{
	import com.ytjh.vo.EquipVO;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class EquipUtil 
	{
		
		public function EquipUtil() 
		{
			
		}
		
		/**
		 * 获取装备的最终攻击力
		 * @return
		 */
		public static function getEquipAtk(equipVO:EquipVO):String
		{
			return "" + equipVO.attack;
		}
		
		/**
		 * 获取装备的最终攻击力
		 * @return
		 */
		public static function getEquipDef(equipVO:EquipVO):String 
		{
			return "" + equipVO.def;
		}
		
	}

}
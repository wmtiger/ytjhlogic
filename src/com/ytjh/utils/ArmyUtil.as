package com.ytjh.utils 
{
	import com.ytjh.vo.ArmyVO;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class ArmyUtil 
	{
		
		public function ArmyUtil() 
		{
			
		}
		
		/**
		 * 得到当前兵种的最终攻击力
		 * @param	vo
		 * @return
		 */
		public static function getArmyAttack(vo:ArmyVO):String
		{
			var base:String = vo.arms.getAttack(vo.level);
			var atk:String = "" + int(base);
			return atk;
		}
		
		/**
		 * 得到当前兵种的最终骑防
		 * @param	vo
		 * @return
		 */
		public static function getArmyDefCavalry(vo:ArmyVO):String
		{
			var base:String = vo.arms.getDefCavalry(vo.level);
			var def:String = "" + int(base);
			return def;
		}
		
		/**
		 * 得到当前兵种的最终弓防
		 * @param	vo
		 * @return
		 */
		public static function getArmyDefArcher(vo:ArmyVO):String
		{
			var base:String = vo.arms.getDefArcher(vo.level);
			var def:String = "" + int(base);
			return def;
		}
		
		/**
		 * 得到当前兵种的最终戟防
		 * @param	vo
		 * @return
		 */
		public static function getArmyDefSpear(vo:ArmyVO):String
		{
			var base:String = vo.arms.getDefSpear(vo.level);
			var def:String = "" + int(base);
			return def;
		}
		
	}

}
package com.ytjh.vo 
{
	import com.ytjh.base.BaseVO;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class FollowVO extends BaseVO
	{
		private var _hero:HeroVO;//将领基本数据
		private var _army:ArmyVO;//将领所拥有的部队信息
		private var _skills:Vector.<SkillVO>;//将领拥有的所有技能列表
		private var _normalSkills:Vector.<SkillVO>;//将领拥有的普通战斗技能或者内政技能
		private var _armSkills:Vector.<SkillVO>;//将领拥有的兵种技能
		
		public function FollowVO() 
		{
			_skills = new Vector.<SkillVO>();
			_normalSkills = new Vector.<SkillVO>();
			_armSkills = new Vector.<SkillVO>();
		}
		
		public function get army():ArmyVO 
		{
			return _army;
		}
		
		public function set army(value:ArmyVO):void 
		{
			_army = value;
		}
		
		public function get hero():HeroVO 
		{
			return _hero;
		}
		
		public function set hero(value:HeroVO):void 
		{
			_hero = value;
		}
		
	}

}
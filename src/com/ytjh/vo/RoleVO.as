package com.ytjh.vo
{
	import com.ytjh.base.BaseVO;
	
	public class RoleVO extends BaseVO
	{
		/**
		 * 玩家id
		 */
		public var actorId:String = "";
		/**
		 * 性别
		 */
		public var sex:String = "";
		/**
		 * 头像
		 */
		public var head:String = "";
		/**
		 * 等级
		 */
		public var level:String = "";
		/**
		 * 人物状态
		 */
		public var status:String = "";
		/**
		 * 门派id
		 */
		public var groupId:String = "";
		/**
		 * 门派名字
		 */
		public var groupName:String = "";
		/**
		 * 场景id
		 */
		public var sceneId:String = "";
		/**
		 * 门派贡献
		 */
		public var contribution:String = "";
		/**
		 * 江湖威望
		 */
		public var prestige:String = "";
		/**
		 * 状态时间
		 */
		public var statustime:String = "";
		/**
		 * 经验值
		 */
		public var experience:String = "";
		/**
		 * 当前最大经验值
		 */
		public var curMaxExp:String = "";
		/**
		 * 生命
		 */
		public var life:String = "";
		/**
		 * 最大生命值
		 */
		public var maxlife:String = "";
		/**
		 * 内力
		 */
		public var incentre:String = "";
		/**
		 * 最大内力值
		 */
		public var maxincentre:String = "";
		/**
		 * 真气
		 */
		public var infuriating:String = "";
		/**
		 * 最大真气
		 */
		public var maxinfuriating:String = "";
		/**
		 * 体力
		 */
		public var strength:String = "";
		/**
		 * 最大体力
		 */
		public var maxstrength:String = "";
		/**
		 * 外功
		 */
		public var externalkongfu:String = "";
		/**
		 * 内功
		 */
		public var internalkongfu:String = "";
		/**
		 * 轻功
		 */
		public var dodge:String = "";
		/**
		 * 外功攻击力
		 */
		public var externalattack:String = "";
		/**
		 * 内功攻击力
		 */
		public var internalattack:String = "";
		/**
		 * 外功防御
		 */
		public var externaldefense:String = "";
		/**
		 * 内功防御
		 */
		public var internaldefense:String = "";
		/**
		 * 攻击距离
		 */
		public var attackdistance:String = "";
		/**
		 * 攻击间隔
		 */
		public var attackspace:String = "";
		/**
		 * 移动距离
		 */
		public var movedistance:String = "";
		/**
		 * 会心值
		 */
		public var smile:String = "";
		/**
		 * 闪避
		 */
		public var miss:String = "";
		/**
		 * 命中值
		 */
		public var hit:String = "";
		/**
		 * 接招值
		 */
		public var jiezhao:String = "";
		/**
		 * 无双值
		 */
		public var wushuang:String = "";
		/**
		 * 英雄经验更新时间
		 */
		public var expupdatetime:String = "";
		/**
		 * 挂机状态
		 */
		public var hangupflag:String = "";
		/**
		 * 练功方式
		 */
		public var hangupmodel:String = "";
		/**
		 * 挂机练功所在序列
		 */
		public var hangupcdsn:String = "";
		/**
		 * 挂机练功结束时间
		 */
		public var hangupcdtime:String = "";
		/**
		 * 洗属性的时候，临时数据，以下三个都是
		 */
		public var newexternal:String = "";
		public var newinternal:String = "";
		public var newdodge:String = "";
		
		public function RoleVO(data:Object=null)
		{
			super(data);
		}
	}
}
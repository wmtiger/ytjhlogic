package com.ytjh.model 
{
	import com.wm.utils.HashTable;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class VipModel 
	{
		private static var _instance:VipModel;
		
		private var _vipLevel:int = 0;
		private var _vipList:HashTable;
		
		public function VipModel() 
		{
			_vipList = new HashTable();
		}
		
		static public function get instance():VipModel 
		{
			if (_instance == null) 
			{
				_instance = new VipModel();
			}
			return _instance;
		}
		
		public function get vipLevel():int 
		{
			return _vipLevel;
		}
		
		public function set vipLevel(value:int):void 
		{
			_vipLevel = value;
		}
		
	}

}
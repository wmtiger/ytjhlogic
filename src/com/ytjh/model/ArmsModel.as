package com.ytjh.model 
{
	import com.ytjh.vo.ArmsVO;
	/**
	 * ...
	 * @author wmtiger
	 */
	public class ArmsModel 
	{
		private static var _instance:ArmsModel;
		
		private var _armsList:Vector.<ArmsVO>;
		//private var _armsList:HashTable;
		
		public function ArmsModel() 
		{
			_armsList = new Vector.<ArmsVO>();
			//_armsList = new HashTable();
		}
		
		static public function get instance():ArmsModel 
		{
			if (_instance == null) 
			{
				_instance = new ArmsModel();
			}
			return _instance;
		}
		
	}

}
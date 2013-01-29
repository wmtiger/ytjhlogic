package com.ytjh.base 
{
	import com.wm.base.IDispose;
	/**
	 * 数据基类
	 * @author wmtiger
	 */
	public class BaseVO implements IDispose
	{
		public var id:String = "";
		public var name:String = "";
		public var desc:String = "";
		
		public function BaseVO() 
		{
			
		}
		
		/* INTERFACE com.wm.base.IDispose */
		
		public function dispose():void 
		{
			
		}
		
	}

}
package com.ytjh.model 
{
	import com.wm.base.IDispose;
	import flash.events.EventDispatcher;
	
	/**
	 * ...
	 * @author wmtiger
	 */
	public class DataModel extends EventDispatcher implements IDispose 
	{
		
		public function DataModel(target:IEventDispatcher=null) 
		{
			super(target);
			
		}
		
		/* INTERFACE com.wm.base.IDispose */
		
		public function dispose():void 
		{
			
		}
		
	}

}
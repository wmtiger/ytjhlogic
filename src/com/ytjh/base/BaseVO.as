package com.ytjh.base 
{
	import com.wm.base.IDispose;
	import flash.events.EventDispatcher;
	
	import flash.utils.describeType;

	/**
	 * 数据基类
	 * @author wmtiger
	 */
	public class BaseVO extends EventDispatcher implements IDispose
	{
		public var id:String = "";
		public var name:String = "";
		public var desc:String = "";
		
		private var _description:XML;
		
		public function BaseVO(data:Object = null) 
		{
			if(data != null)
			{
				applyData(data);
			}
		}
		
		/**
		 * 应用新的数据 
		 * @param data
		 */		
		public function applyData(data:Object):void
		{
			if(data == null)
			{
				dispose();
			}
			else
			{
				if (data != null) 
				{
					_description = describeType(this);
					var xl:XMLList = _description.variable;
					var str:String = "";
					for (var i:String in xl) 
					{
						str = xl[i].@name;
						
						if (data[str] && this.hasOwnProperty(str)) 
						{
							this[str] = data[str];
						}
					}
				}
				data = null;
			}
		}
		
		/* INTERFACE com.wm.base.IDispose */
		
		public function dispose():void 
		{
			id = null;
			name = null;
			desc = null;
			if(_description)
			{
				var xl:XMLList = _description.variable;
				var str:String = "";
				for (var i:String in xl) 
				{
					str = xl[i].@name;
					this[str] = null;
				}
				str = null;
				xl = null;
				_description = null;
			}
		}
		
	}

}
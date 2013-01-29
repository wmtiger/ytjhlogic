package com.ytjh.net
{
	//import com.ty.mgr.SystemDialogMgr;
	import com.wm.utils.Log;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.utils.ByteArray;

	public class HttpRequest
	{
		/**
		 * 后台服务模块名称
		 */ 
		public var module:String = "ytjh-web";
		/**
		 * 具体请求方法
		 */ 
		public var action:String;
		/**
		 * 回调方法
		 */ 
		public var callback:Function;
		/**
		 * 数据
		 */ 
		public var data:*;
		public function HttpRequest()
		{
		}
		public function onResponse(e:Event):void
		{
			var serviceID:String = module + "_" + action;
			var service:URLLoader = HttpService.instance.getService(serviceID);
			service.removeEventListener(Event.COMPLETE, onResponse);
			var byte:ByteArray;
			var data:String;
			var xml:XML;
			byte = e.target.data as ByteArray;
			try 
			{
				byte.uncompress();
				data = byte.readObject() as String;
			}
			catch (err:Error)
			{
				
			}
			
			xml = new XML(data);
			
			if(xml.state==0)
			{
				Log.info(this, "xml.state=" + xml.state);
				//SystemDialogMgr.instance.confirmOnly("" + xml.message);
			}
			if(callback!=null)
			{
				callback.call(null, xml);
			}
		}
	}
}
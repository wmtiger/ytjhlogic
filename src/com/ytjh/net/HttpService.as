package com.ytjh.net
{
	import com.wm.utils.Log;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	import flash.utils.Dictionary;
	import flash.utils.getTimer;

	public class HttpService
	{
		/**
		 * 用于存储URLLoader对象
		 * 一个action对应一个URLLoader对象
		 */ 
		private var services:Dictionary;
		/**
		 * 服务请求根路径
		 */ 
		private var serviceRoot:String;
		private var separator:String;
		private static var _instance:HttpService;
		
		public function HttpService(lock:HttpServiceLock)
		{
			if(!lock)
			{
				throw(new Error("单例!"));
			}
			services = new Dictionary();
		}
		public static function get instance():HttpService
		{
			if(_instance==null)
			{
				_instance = new HttpService(new HttpServiceLock());
			}
			return _instance;
		}
		/**
		 * 初始化
		 */ 
		public function init(serRoot:String = "",separ:String = "root"):void
		{
			serviceRoot = serRoot;
			separator = separ;
		}
		/**
		 * 发送后端消息
		 * @param	action		命令
		 * @param	okFun		成功后回调函数
		 * @param	okParam		成功后回调函数是否需要xml参数
		 * @param	obj			发送消息时的对象
		 * @param	noFun		失败后的回调
		 * @param	noParam		失败后回调函数是否需要xml参数
		 */
		public function sendReqInfo(action:String, okFun:Function = null, okParam:Boolean = true, 
				obj:Object = null, noFun:Function = null, noParam:Boolean = false):void
		{
			var req:HttpRequest = new HttpRequest();
			req.action = action.toLocaleLowerCase();
			req.data = obj;
			req.callback = function (xml:XML):void 
			{
				Log.info(req.action+"->xml\n" + xml);
				if (xml.state + "" == "1") 
				{
					if (okFun != null) 
					{
						if (okParam) 
							okFun(xml);
						else
							okFun();
					}
				}
				else
				{
					if (noFun != null) 
					{
						if (noParam) 
							noFun(xml);
						else
							noFun();
					}
				}
			}
			sendRequest(req);
		}
		/**
		 * 发送请求
		 */ 
		public function sendRequest(req:HttpRequest):void
		{
			var serviceID:String = req.module + "_" + req.action;
			var service:URLLoader = getService(serviceID);
			service.addEventListener(Event.COMPLETE, req.onResponse);
			
			var url:String = serviceRoot + req.module + separator + req.action + "?" + getTimer();
			Log.info(this, "[url]=>"+ url);
			var urlReq:URLRequest = new URLRequest(url);
			urlReq.method = URLRequestMethod.POST;
			if(req.data!=null)
			{
				var p:URLVariables = new URLVariables();
				var n:String;
				for(n in req.data)
				{
					p[n] = req.data[n];
				}
				urlReq.data = p;
			}
			service.load(urlReq);
		}
		/**
		 * 获取服务
		 */ 
		public function getService(id:String):URLLoader
		{
			var service:URLLoader = services[id];
			if(service==null)
			{
				service = new URLLoader();
				service.dataFormat = URLLoaderDataFormat.BINARY;
				service.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onFail);
				service.addEventListener(IOErrorEvent.IO_ERROR, onFail);
				services[id] = service;
			}
			return service;
		}
		/**
		 * 请求失败
		 */ 
		private function onFail(e:Event):void
		{
			Log.info(e);
		}
	}
}
class HttpServiceLock
{
	
}
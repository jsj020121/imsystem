package com.imsystem
{
	import mx.core.Application;
	
	import org.puremvc.as3.multicore.patterns.facade.Facade;

	public class IMFacade extends Facade
	{
		private static const KEY:String = "com.imsystem.IMFacade";
		public function IMFacade()
		{
			if(instance == null){
				super(KEY);
				instance = this;
			}else{
				throw new Error("Singleton Error");
			}
		}
		
		private static var instance:IMFacade;
		
		public static function getInstance():IMFacade{
			if( instance == null){
				instance = new IMFacade();
			}
			return instance;
		}
		
		public function startup(app:Application):void{
			initializeFacade();
			initializeController();
			
		}
			
	}
}
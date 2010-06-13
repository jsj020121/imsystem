package com.imsystem.model
{
	public class IMServiceLocator
	{
		private static var instance:IMServiceLocator;
		public function IMServiceLocator()
		{
			if(instance == null){
				instance = this;
			}else{
				throw new Error("singleton error");
			}
		}
		
		public static function getInstance():IMServiceLocator{
			if(instance == null){
				instance = new IMServiceLocator();
			}
			return instance;
		}
	}
}
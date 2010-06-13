package com.imsystem.model
{
	[Bindable]
	public class IMModelLocator
	{
		private static var instance:IMModelLocator;
		public function IMModelLocator()
		{
			if(instance == null){
				instance = this;
			}else{
				throw new Error("singleton error");
			}
		}
		
		public static function getInstance():IMModelLocator{
			if(instance == null){
				instance = new IMModelLocator();
			}
			return instance;
		}
	}
}
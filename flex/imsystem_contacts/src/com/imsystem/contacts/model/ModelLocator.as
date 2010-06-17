package com.imsystem.contacts.model
{
	[Bindable]
	public class ModelLocator
	{
		private static var instance:ModelLocator;
		
		public function ModelLocator()
		{
			if( instance == null){
				instance = this;
			}else{
				throw new Error("Singleton Error");
			}
		}
		
		public function getInstance():ModelLocator{
			if( instance == null ){
				instance = new ModelLocator();
			}
			return instance;
		}
		
		public var serverLocation:String = "im.com";
	}
}
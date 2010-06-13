package com.imsystem.contacts.components
{
	import mx.controls.Image;
	import mx.controls.treeClasses.TreeItemRenderer;

	public class ContactsTreeItemrender extends TreeItemRenderer
	{
		private var img:Image;
		
		
		
		public function ContactsTreeItemrender()
		{
			super();
            
            			
		}
		
		
		override protected function createChildren():void
		{
			super.createChildren();
			img = new Image();
			this.addChild(img);
			//img.source =  data.@img;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			img.source =  data.@img;
		} 
	}
}
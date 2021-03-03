package com.wb.software
{
	import flash.external.ExtensionContext;
	
	internal final class WindowsANE
	{
		// extension context
		private static var m_extContext :ExtensionContext = null;
		
		// class constructor
		public function WindowsANE()
		{
			// create context
			if(!m_extContext)
				m_extContext = ExtensionContext.createExtensionContext(
					"com.wb.software.WindowsANE",
					"general");
			
			// check for error
			if(!m_extContext)
				trace("com.wb.software.WindowsANE.WindowsANE(): " +
					  "Failed to create extension context");
		}
		
		// addFullScreenButton() -- add button & persist full-screen
		public function addFullScreenButton() :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("addFullScreenButton");
		}
		
		// getDesktopBottom() -- retrive bottom of desktop window
		public function getDesktopBottom(windowX :int,
										 windowY :int,
										 windowW :int,
										 windowH :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getDesktopBottom",
											 windowX,
											 windowY,
											 windowW,
											 windowH) as int;
			
			// return it
			return(ret);
		}
		
		// getDesktopLeft() -- retrive left side of desktop window
		public function getDesktopLeft(windowX :int,
									   windowY :int,
									   windowW :int,
									   windowH :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getDesktopLeft",
											 windowX,
											 windowY,
											 windowW,
											 windowH) as int;
			
			// return it
			return(ret);
		}
		
		// getDesktopRight() -- retrive right side of desktop window
		public function getDesktopRight(windowX :int,
										windowY :int,
										windowW :int,
										windowH :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getDesktopRight",
											 windowX,
											 windowY,
											 windowW,
											 windowH) as int;
			
			// return it
			return(ret);
		}
		
		// getDesktopTop() -- retrive top of desktop window
		public function getDesktopTop(windowX :int,
									  windowY :int,
									  windowW :int,
									  windowH :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getDesktopTop",
											 windowX,
											 windowY,
											 windowW,
											 windowH) as int;
			
			// return it
			return(ret);
		}
		
		// getLongestDisplaySide() -- retrieve longest resolution for device
		public function getLongestDisplaySide() :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getLongestDisplaySide") as int;
			
			// return it
			return(ret);
		}
		
		// isFullScreen() -- retrieve full-screen flag
		public function isFullScreen() :Boolean
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :Boolean = (m_extContext.call("isFullScreen") as int) ? true : false; 
			
			// return it
			return(ret);
		}
		
		// messageBox() -- display simple message box
		public function messageBox(title :String, message :String):void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("messageBox", title, message);
		}
		
		// testANE() -- verify functionality
		public function testANE(val :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("testANE", val) as int;
			
			// return it
			return(ret);
		}
		
		// toggleFullScreen() -- toggle full-screen mode
		public function toggleFullScreen(windowX :int,
									     windowY :int,
									     windowW :int,
									     windowH :int) :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("toggleFullScreen",
								  windowX,
								  windowY,
								  windowW,
								  windowH);
		}
	}
}

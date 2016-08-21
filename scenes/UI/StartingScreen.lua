local composer = require("composer")
local Sprite = require("Sprite")
local Scores = require("Scores")
local scene = composer.newScene()
local background= nil

function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase
	
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
		--local background = display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth, display.contentHeight)
		local width = 500
		local height = 150
		 
		
	end
	
	local function revolveScreen()
			
			--transition.to( background, { time=1500, alpha=0, x=(w-50), y=(h-50), onComplete=revolveScreen } )
			--print("Hi")
			deltaAngle = 1
			background:rotate( deltaAngle )
			timer.performWithDelay( 100, revolveScreen )
	end
		
	local function myButtonHandler(event)
		 if ( event.phase == "ended" ) then
			print("Hi")
			Scores:start()
			composer.gotoScene("scenes.map.scene", {effect = "slideLeft", time = 300})
		 end
	end
		
		background = display.newImage( "backgrounds/Wordmarkp1.png",display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
		background.xScale = 1.5
		background.yScale = 1.5
		
		local logo = Sprite.new("UI/Icon/icon")
		logo.x = display.contentCenterX
		logo.y = display.contentCenterY / 2
		logo.xScale = 1.5
		logo.yScale = 1.5


		--local button1 = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth/3, display.contentHeight/11 )
		--local button2 = display.newRect( display.contentCenterX, display.contentCenterY + (display.contentHeight*3/22), display.contentWidth/3, display.contentHeight/10 )
		--local button3 = display.newRect( display.contentCenterX, display.contentCenterY + (display.contentHeight*3/11), display.contentWidth/3, display.contentHeight/10  )
		--local button4 = display.newRect( display.contentCenterX, display.contentCenterY + (display.contentHeight*9/22), display.contentWidth/3, display.contentHeight/10  )
		
		local button1 = display.newRect( display.contentCenterX, display.contentCenterY + (display.contentHeight*1/11), display.contentWidth/3, display.contentHeight/5 )
		local text1 = display.newText( "Play",display.contentCenterX, display.contentCenterY + (display.contentHeight*1/11),native.systemFontBold,50) 
		button1:addEventListener("touch", myButtonHandler)
		text1:setFillColor (0.5,0.6,0.4)
		
		self.view:insert(background)
		self.view:insert(logo)
		self.view:insert(button1)
		self.view:insert(text1)
		
		--button2:addEventListener("touch", myButtonHandler)
		--button3:addEventListener("touch", myButtonHandler)
		--button4:addEventListener("touch", myButtonHandler)
		
		--local text1 = display.newText( "Play",display.contentCenterX, display.contentCenterY, width, height )
		--local text2 = display.newText( "LeaderBoard",display.contentCenterX, display.contentCenterY + 300, width, height )
		--local text3 = display.newText( "Help!",display.contentCenterX, display.contentCenterY + 300, width, height )
		--local text4 = display.newText( "About",display.contentCenterX, display.contentCenterY + 300, width, height )
		--myButton:setFillColor( 1, 0, 0 )
		 revolveScreen()
		
		 
		
	
		
    end
	
	
	
	
	
scene:addEventListener( "show", scene )
return scene

--myButtonHandler =  function ( event )
 --composer.gotoScene("new1")
--end



--myButton:addEventListener("touch", myButtonHandler)
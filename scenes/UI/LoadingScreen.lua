local composer = require( "composer" )
local Sprites = require("Sprite")
local GreyPanel = require("ui.GreyPanel")
local scene = composer.newScene()
local icon = nil
function scene:show( event )
	
	
	local function revolveScreen()
				print("4")
				--transition.to( background, { time=1500, alpha=0, x=(w-50), y=(h-50), onComplete=revolveScreen } )
				--print("Hi")
				deltaAngle = 45
				icon:rotate( deltaAngle )
				timer.performWithDelay( 200, revolveScreen )
	end
	
	if ( event.phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( event.phase == "did" ) then
	
		print("1")
		local greyPanel = GreyPanel.new(display.contentWidth, display.contentHeight)
		print("2")
		greyPanel.x = display.contentCenterX
		greyPanel.y = display.contentCenterY
		

		icon = Sprites.new("UI/Icon/load")
		icon.x = display.contentCenterX 
		icon.y = display.contentCenterY
		self.view:insert(greyPanel)
		self.view:insert(icon)	
		print("3")
		revolveScreen()
		
		
	end

	 
	
end

scene:addEventListener( "show", scene )
return scene




local composer = require( "composer" )
local Sprtie = require( "Sprite" )
local scene = composer.newScene()
local Button = require("ui.BlueButton")
-----------------For Camera Module----------------------------
local camera = require("cameraMod").new()
local json = require("json")
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
	 local button = Button.new(100,100)
	 function button:onTouch(e)
		 if e.phase=="ended" then
	--------------------------------------
	--		lines below Show how to open a camera and utilize the tags result
			camera:shoot(
			function (tags)
				-- tags is a table!! json.encode is used to convert it into String
				native.showAlert( "Corona", json.encode(tags), { "OK" } )
			end
		)
	--	camera demo part ends
	-------------------------------------------------
		end
	 end

	local button2 = Button.new(100,100)
	function button2:onTouch(e)
		if e.phase == "ended" then
	 		button.x=button.x+10;
		end
	end

	 sceneGroup:insert(button)
	 sceneGroup:insert(button2)
	 button.x = display.contentWidth/2
	 button.y = display.contentHeight/2
	 button2.x = display.contentHeight/3
	 button2.y = display.contentHeight/5
end


-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase
	 self.callback = event.params and event.params.onComplete
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen

    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene

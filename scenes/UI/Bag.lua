local composer = require( "composer" )
local GreyPanel = require("ui.GreyPanel")
local scene = composer.newScene()
local inventory = require( "inventory" )

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

end


-- show()
function scene:show( event )
	
	local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
		self.onClose = event.params and event.params.onClose
        self.effect = event.params and event.params.effect
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
		
		print("Hello")
		local I = require("scenes.UI.ItemBox")
		 print("HI")
		--local background = display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth,display.contentHeight)
		--background:setFillColor(1,0.2,0.2)
		local greyPanel = GreyPanel.new(display.contentWidth , display.contentHeight)
		greyPanel.x = display.contentWidth * 0.5
		greyPanel.y = display.contentHeight * 0.5
		
        local bag = nil
        local items = nil
		items = {row= 3,
				col=3,
                onItemSelect = self.effect,
                clear = function ()
                    bag:removeSelf()
                    bag = I.new(items)
                    sceneGroup:insert(bag)
                end,
                showWord = function (s)
                    local myText = display.newText( s, 100, 200, native.systemFont, 100 )
                    myText.x = display.contentWidth/2
                    myText.y = display.contentHeight/5
                    myText:setTextColor(255, 0, 0)
                    sceneGroup:insert(myText) 
                    transition.to(myText,{time=500,alpha=0,onComplete= function ()
                            myText:removeSelf()
                        end
                        })  
                end}
				
		print(items)
				
		bag = I.new(items)
		--bag.x = display.contentWidth / 2
		--bag.y = display.contentHeight / 2
		sceneGroup:insert(greyPanel)
		sceneGroup:insert(bag)
		--sceneGroup:insert(greyPanel)
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
		if self.onClose then
            self.onClose()
        end
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
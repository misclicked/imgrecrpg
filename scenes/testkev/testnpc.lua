local composer = require( "composer" )
local Sprtie = require( "Sprite" )
local scene = composer.newScene()
local Kevin = require("npcs.Kevin")
local Edison = require("npcs.Edison")
local Grand = require("npcs.Grand")
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
    local kevin = Kevin.new()

    kevin.x = display.contentWidth/4 
    kevin.y = display.contentHeight/4
    kevin:showBubble()
    sceneGroup:insert(kevin)
    timer.performWithDelay( 2000, 
        function ()
            kevin:setClear()
    end)

    local edison = Edison.new()

    edison.x = display.contentWidth/4 * 2
    edison.y = display.contentHeight/4 * 2
    edison:showBubble()
    sceneGroup:insert(edison)
    timer.performWithDelay( 2000, 
        function ()
            edison:setClear()
    end)

    local grand = Grand.new()

    grand.x = display.contentWidth/4 * 3
    grand.y = display.contentHeight/4 * 3
    grand:showBubble()
    sceneGroup:insert(grand)
    timer.performWithDelay( 2000, 
        function ()
            grand:setClear()
    end)

end
-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

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
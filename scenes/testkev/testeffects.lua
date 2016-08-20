local composer = require( "composer" )
local Explosion = require("effects.Explosion")
local Jesus = require("effects.Jesus")
local missile = require("effects.missile")
local red_health = require("effects.red_health")
local rocks = require("effects.rocks")
local sword = require("effects.sword")
local big_explosion = require("effects.big_explosion")
local fireball = require("effects.fireball")
local green_health = require("effects.green_health")


local scene = composer.newScene()

function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local jesus = green_health.new()
    jesus.x = display.contentWidth/2
    jesus.y = display.contentHeight/2

end

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

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
local composer = require( "composer" )
local RedButton = require("ui.RedButton")
local BlueButton = require("ui.BlueButton")
local GreenButton = require("ui.GreenButton")
local YellowButton = require("ui.YellowButton")
local GreyButton = require("ui.GreyButton")
local GreyPanel = require("ui.GreyPanel")
local GreyBox = require("ui.GreyBox")
local scene = composer.newScene()
local logger = require("logger")
local TAG = "TEST"
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
    local redButton = RedButton.new(100, 100)
    sceneGroup:insert(redButton)
    redButton.x = display.contentWidth * 0.25
    redButton.y = display.contentHeight / 4 

    local blueButton = BlueButton.new(100, 100)
    sceneGroup:insert(blueButton)
    blueButton.x = redButton.x + redButton.width 
    blueButton.y = redButton.y

    local greenButton = GreenButton.new(100, 100)
    sceneGroup:insert(greenButton)
    greenButton.x = blueButton.x + blueButton.width 
    greenButton.y = blueButton.y

    local yellowButton = YellowButton.new(100, 100)
    sceneGroup:insert(yellowButton)
    yellowButton.x = greenButton.x + greenButton.width 
    yellowButton.y = greenButton.y

    local greyButton = GreyButton.new(100, 100)
    sceneGroup:insert(greyButton)
    greyButton.x = yellowButton.x + yellowButton.width 
    greyButton.y = yellowButton.y

    function redButton:onTouch()
        if event.phase == "ended" then
            logger:info(TAG, "Press Me!")
        end        
    end

    local greyPanel = GreyPanel.new(400, 400)
    greyPanel.x = display.contentWidth * 0.5
    greyPanel.y = display.contentHeight * 0.5

    local greyBox = GreyBox.new(50, 50)
    greyBox.x = display.contentWidth * 0.5
    greyBox.y = display.contentHeight * 0.5    

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
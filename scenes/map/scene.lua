local composer = require( "composer" )
local Sprite = require("Sprite")
local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------



-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )
    --local Background = Background.new()
    local sceneGroup = self.view
    clickCount = 70
    -- Code here runs when the scene is first created but has not yet appeared on screen
    self.character = Sprite.newAnimation({
        {
            name = "stand",
            frames = {
                "Player/p1_stand"
            }
        },
        {
            name = "walk",
            frames = {
                "Player/p1_walk01",
                "Player/p1_walk02",
                "Player/p1_walk03",
                "Player/p1_walk04",
                "Player/p1_walk05",
                "Player/p1_walk06",
                "Player/p1_walk07",
                "Player/p1_walk08",
                "Player/p1_walk09",
                "Player/p1_walk010",
                "Player/p1_walk011",
            },
            time = 400,
        },
    })
    self.character.x = display.contentWidth / 2
    self.character.y = display.contentHeight / 2
    
    --background add start
    local dusk = require("Dusk.Dusk")
    dusk.setPreference("enableRotatedMapCulling", true)
    local currMap = "grass_stone.json"
    map = dusk.buildMap("maps/" .. currMap)
    --map.setTrackingLevel(0.3)
    --background add end
    sceneGroup:insert(self.character)
    sceneGroup:insert(map)

    self.offset = 30
    self.startMove = false
    self.moveDir = 1
    Runtime:addEventListener( "touch", self)
    self.offsetX = 0

    map.offsetX = display.contentWidth / 2 + 70

    local icon = Sprite.new("Items/1")
    icon.x = display.contentWidth - 100
    icon.y = display.contentHeight - 100
    sceneGroup:insert(icon)

end

function scene:touch(event)
    if event.phase == "began" then
        print("Touch began!!")
        self.startMove =  true

        if event.x > display.contentWidth/2 then
            self.moveDir = 1
        else
            self.moveDir = -1

        end
        self.character:setSequence("walk")
        self.character:play()
        self.character.xScale = self.moveDir



    elseif event.phase == "ended" then
        print("Touch ended!!")
        self.startMove =  false
        self.character:setSequence("stand")
        self.character:play()
    end
end

function scene:enterFrame( event )
    if self.startMove then
        self.offsetX = self.offsetX + 10 * self.moveDir * -1
        map.x = map.x + 10 * self.moveDir * -1
        map.offsetX = map.offsetX + 10 * self.moveDir * -1
        print(map.offsetX)

        if map.offsetX < 0 then
            self.startMove = false
        elseif map.offsetX > display.contentWidth + 190 then
            self.startMove = false
        end    
    end
end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        Runtime:addEventListener("touch", self)
        Runtime:addEventListener("enterFrame", self)
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
        Runtime:removeEventListener("touch", self)
        Runtime:removeEventListener("enterFrame", self)
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
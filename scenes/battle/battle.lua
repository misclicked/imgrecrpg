local composer = require( "composer" )

local scene = composer.newScene()

local Sprite = require("Sprite")

local Bubble = require("ui.GreyPanel")

local YellowButton = require("ui.YellowButton")
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local playerRightMostX
local playerLeftMostX
local enemyRightMostX
local enemyLeftMostX
local playerTouchEnemyPosX
local playerTouchScreenPosX
local playerImage
local enemyImage
local playerX
local playerY
local enemyX
local enemyY
local floor
local moveTimer
local moveLeftFlag
local moveRightFlag
local _SCREEN_WIDTH
local _SCREEN_HEIGHT
local attackFlag
local requestFlag
local enemyBlood
local requestTimer
local inventoryImage
local cameraImage
local busy
local inventoryOpened
-- -----------------------------------------------------------------------------------
-- local functions
-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
local function  Sleep( milliseconds )
    local startTime = system.getTimer()
    local endTime = startTime + milliseconds
    while true do
        if system.getTimer() >= endTime then
            break
        end
    end
end

local function openInventory( event )
    if event.phase == "began" then
        busy=true
        local options = {
            isModal = true,
            params = {
                onClose = function ()
                    inventoryOpened = false
                end
            }
        }
    if inventoryOpened then
        composer.hideOverlay( "scenes.UI.bag", options )
        inventoryOpened = false
    else
        composer.showOverlay( "scenes.UI.bag", options )
        inventoryOpened = true
    end
    elseif event.phase == "ended" or event.phase == "cancelled" then
        busy=false
    end
end

local function openCamera( event )
    if event.phase == "began" then
        busy=true
    elseif event.phase == "ended" or event.phase == "cancelled" then
        busy=false
    end
end

local function initPlayer(  )

    playerImage = Sprite.newAnimation({
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
    --resize playerImage
    playerImage.xScale = ( _SCREEN_WIDTH * 0.2 ) / playerImage.width
    playerImage.yScale = playerImage.xScale

    --calc playerPos
    playerY = floor - playerImage.contentHeight / 2
    playerImage:translate(playerX,playerY)

    --calc LRMostX
    playerLeftMostX = playerX
    playerRightMostX = _SCREEN_WIDTH - playerY

    playerImage.isVisible = true

end

local function initEnemy( path )

    enemyImage = Sprite.new(path) 

    --resize enemyImage
    enemyImage.xScale = ( _SCREEN_WIDTH * 0.25 ) / enemyImage.width
    enemyImage.yScale = enemyImage.xScale

    --calc enemyPos
    enemyY = floor - enemyImage.contentHeight / 2
    enemyImage:translate(enemyX,enemyY)

    --calc LRMOSTX
    enemyLeftMostX = enemyX
    enemyRightMostX = _SCREEN_WIDTH - enemyY

    enemyImage.isVisible = true

end

function scene:listenMove( )
    if enemyBlood <= 4999 and requestFlag == false then
        requestFlag = true
        bubble:setText(self.requestText)
        bubble.alpha = 1
        clearIcon.alpha = 0
        attackFlag = false
    end
    if moveLeftFlag or moveRightFlag then
        if playerX >= playerTouchEnemyPosX and moveRightFlag or playerX <= playerTouchScreenPosX and moveLeftFlag then          
            playerImage:setSequence("stand")
            return
        end
        if moveLeftFlag then
            transition.to( playerImage, {time=10, alpha=1, x=playerX-10, y=playerY})
            playerX = playerX - 10
        else
            transition.to( playerImage, {time=10, alpha=1, x=playerX+10, y=playerY})
            playerX = playerX + 10
        end
    end
end


function scene:touch( event )
    if(busy) then
        return
    end
    sceneGroup = self.view
    self.touchEvent = event
    if event.phase == "began" then
        if event.x > _SCREEN_WIDTH/2 then
            if playerX >= playerTouchEnemyPosX and attackFlag then
                transition.to(playerImage,{time = 100, alpha = 1,
                 x = playerX + _SCREEN_WIDTH*0.1,
                 y = playerY, rotation = 30, onComplete = function()
                    local damage = math.random(-30,-5)
                    enemyBlood = enemyBlood + damage
                    local hitText = display.newText(tostring(damage) , 
                        enemyX + math.random(_SCREEN_WIDTH*-0.01,_SCREEN_WIDTH*0.01),
                     enemyY - enemyImage.contentHeight/2,
                        native.systemFont, 100)
                    hitText:setTextColor(255, 0, 0)
                    sceneGroup:insert(hitText)
                    transition.to(hitText,{time = 300, alpha = 0,
                        x = enemyX, y=enemyY - enemyImage.contentHeight,
                        onComplete = function()
                            hitText:removeSelf()
                        end})
                    transition.to(playerImage,{time = 100, alpha = 1,
                     x = playerX,
                     y = playerY, rotation = 0})
                 end})
                print(enemyBlood)
                return
            end
            playerImage:setSequence("walk")
            playerImage:play()
            moveRightFlag = true
            moveLeftFlag = false
        else
            if playerX <= playerTouchScreenPosX then
                print("hehe")
                return
            end
            playerImage:setSequence("walk")
            playerImage:play()
            moveLeftFlag = true
            moveRightFlag = false
        end
    elseif event.phase == "moved" then
        if playerImage.sequence ~= "walk" then
            playerImage:setSequence("walk")
            playerImage:play()
        end
        if event.x > _SCREEN_WIDTH/2 then
            moveRightFlag = true
            moveLeftFlag = false
        else
            moveLeftFlag = true
            moveRightFlag = false
        end
    elseif event.phase == "ended" or event.phase == "cancelled" then
        self.startMove =  false
        playerImage:setSequence("stand")
        moveLeftFlag = false
        moveRightFlag = false
        if playerX >= playerTouchEnemyPosX then
            moveLeftFlag = false
        end
        if playerX <= 0 then
            moveRightFlag = false
        end
    end
end

-- create()
function create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

end

-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

        inventoryOpened = false

        _SCREEN_HEIGHT = display.contentHeight
        _SCREEN_WIDTH = display.contentWidth

        self.requestText = "我要雙刀~"

        busy = false

        inventoryImage = Sprite.new("Items/55")

        inventoryImage.xScale = _SCREEN_WIDTH*0.1 / inventoryImage.contentWidth
        inventoryImage.yScale = inventoryImage.xScale

        inventoryImage:translate(_SCREEN_WIDTH*0.05, inventoryImage.contentWidth/2)

        inventoryImage:addEventListener( "touch", openInventory)

        cameraImage = Sprite.new("Items/70")

        cameraImage.xScale = _SCREEN_WIDTH*0.1 / cameraImage.contentWidth
        cameraImage.yScale = cameraImage.xScale

        cameraImage:translate(_SCREEN_WIDTH*0.05, cameraImage.contentWidth/2 + inventoryImage.contentWidth)

        cameraImage:addEventListener( "touch", openCamera)

        enemyBlood = 5000

        attackFlag = true

        requestFlag = false

        floor = _SCREEN_HEIGHT*0.9

        playerX = _SCREEN_WIDTH*0.1

        enemyX = _SCREEN_WIDTH*0.875

        local background = display.newRect(
            display.contentCenterX
            ,display.contentCenterY
            ,_SCREEN_WIDTH
            ,_SCREEN_HEIGHT)

        background:setFillColor(.3,.5,.6)

        sceneGroup:insert(background)

        initPlayer()
        sceneGroup:insert(playerImage)

        initEnemy("Enemies/slimeWalk1")
        sceneGroup:insert(enemyImage)

        clearIcon = Sprite.new("UI/Icon/check4")
        bubble = Bubble.new(enemyImage.contentWidth*0.75,
        enemyImage.contentHeight*0.5)
        bubble.alpha = 0
        bubble:insert(clearIcon)
        bubble:setText("")
        bubble.buttonText.fill = {0,0,0}
        bubble.x = enemyX
        bubble.y = enemyY - enemyImage.contentHeight
        sceneGroup:insert(bubble)
        --[[
        local yellowButton = YellowButton.new(_SCREEN_WIDTH*0.2,_SCREEN_HEIGHT*0.2)
        
        yellowButton.x = _SCREEN_WIDTH / 2
        yellowButton.y = _SCREEN_HEIGHT / 2
        sceneGroup:insert(yellowButton)

        --]]
        --calc playerTouchEnemyPosX
        playerTouchEnemyPosX = enemyX - enemyImage.contentWidth/2 - playerImage.contentWidth/2
        playerTouchScreenPosX = playerImage.contentWidth/2
        Runtime:addEventListener( "touch", scene)
        moveTimer = timer.performWithDelay( 1, function()
        self:listenMove()
        end, -1)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        -- transition.to( playerImage, { time=1500, alpha=1, x=playerTouchEnemyPosX, y=playerY } )
        --scene:addTapListenerMove()
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
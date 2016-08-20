local composer = require( "composer" )

local scene = composer.newScene()

local Sprite = require("Sprite")


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
local playerImage
local enemyImage
local playerX
local playerY
local enemyX
local enemyY
local floor
local moveTimer
local moveState
local _SCREEN_WIDTH
local _SCREEN_HEIGHT
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

local function moveToXY( image, V, orgX, orgY, tarX, tarY, direction, move)
    while true do
        Sleep(50)
        if direction(orgX,tarX) == false or direction(orgY,tarY) == false then
            break
        end
    end
end

local function initPlayer( path )

    playerImage = Sprite.new(path)

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
    if moveState then
        local event = self.touchEvent
        if event.x >= enemyImage.contentBounds.xMax or
            event.x <= enemyImage.contentBounds.xMin or
            event.y >= enemyImage.contentBounds.yMax or
            event.y <= enemyImage.contentBounds.yMin then
            moveState=false
        end
        --print(tostring(event.x), " ", tostring(event.y))
        --[[print(tostring(enemyImage.contentBounds.xMax), " ",
            tostring(enemyImage.contentBounds.xMin), " ",
            tostring(enemyImage.contentBounds.yMax), " ",
            tostring(enemyImage.contentBounds.yMin), " ")
        --]]
        if playerX >= playerTouchEnemyPosX then
            timer.cancel(moveTimer)
            return
        end
        transition.to( playerImage, {time=1, alpha=10, x=playerX+1, y=playerY})
        playerX = playerX + 10
    end
end

local function attackPulse( event )
    if playerX < playerTouchEnemyPosX then
        enemyImage:removeEventListener( "touch", attackPulse)
        timer.performWithDelay( 1, addTapListenerMove)
    end
    if event.phase == "began" then
        print("attackPulse")
    end
end

local function addTapAttackListener(  )
    enemyImage:addEventListener( "touch", attackPulse)
end

function scene:touch( event )
    self.touchEvent = event
    if event.phase == "began" then
        print("begin")
        moveState = true
        self.isFocus = true
    elseif self.isFocus then
        if event.phase == "ended" or event.phase == "cancelled" then
            print( "exit" )
            moveState = false
            if playerX >= playerTouchEnemyPosX then
                timer.performWithDelay( 1, addTapAttackListener)
                moveState = false
                enemyImage:removeEventListener( "touch", scene)
            end
            self.isFocus = nil
        end
    end
end

function scene:addTapListenerMove(  )
    moveTimer = timer.performWithDelay( 1, function()
        self:listenMove()
    end, -1)
    enemyImage:addEventListener( "touch", scene) 
end

local function backgroundTouch( event )
    print("hehe")
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

        _SCREEN_HEIGHT = display.contentHeight
        _SCREEN_WIDTH = display.contentWidth

        floor = _SCREEN_HEIGHT*0.9

        playerX = _SCREEN_WIDTH*0.1

        enemyX = _SCREEN_WIDTH*0.875

        local background = display.newRect(
            display.contentCenterX
            ,display.contentCenterY
            ,_SCREEN_WIDTH
            ,_SCREEN_HEIGHT)

        background:setFillColor(.3,.5,.6)

        background:addEventListener("touch", backgroundTouch)

        sceneGroup:insert(background)

        initPlayer("Player/p1_stand")
        sceneGroup:insert(playerImage)

        initEnemy("Enemies/slimeWalk1")
        sceneGroup:insert(enemyImage)

        --calc playerTouchEnemyPosX
        playerTouchEnemyPosX = enemyX - enemyImage.contentWidth/2 - playerImage.contentWidth/2

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        -- transition.to( playerImage, { time=1500, alpha=1, x=playerTouchEnemyPosX, y=playerY } )
        scene:addTapListenerMove()
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
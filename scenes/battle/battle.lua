local composer = require( "composer" )
local scene = composer.newScene()
local Sprite = require("Sprite")
local Bubble = require("ui.GreyPanel")
local inventory = require( "inventory" )
local YellowButton = require("ui.YellowButton")
local widget = require( "widget" )
-----------------For Camera Module----------------------------
local camera = require("cameraMod").new()
local json = require("json")
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
local player
local enemy
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
local requestTimer
local inventoryImage
local cameraImage
local busy
local inventoryOpened
local globalATKClock
local playerHPBar
local enemyHPBar
local simpleSelf
local existItem
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

local function showWord( s )
    sceneGroup = scene.view
    local myText = display.newText( s, 100, 200, native.systemFont, 100 )
        myText.x = display.contentWidth/2
        myText.y = display.contentHeight/5
        myText:setTextColor(255, 0, 0)
        sceneGroup:insert(myText) 
        transition.to(myText,{time=500,alpha=0, y=display.contentHeight/7,onComplete= function ()
        if myText.removeSelf ~= nil then
            myText:removeSelf()
        end
    end
    })  
end

local function openInventory( event )
    if event.phase == "began" then
        cameraImage.isVisible = false
        busy=true
        local options = {
            isModal = true,
            params = {
                onClose = function ()
                    inventoryOpened = false
                    cameraImage.isVisible = true
                end,
                effect = function ( item )
                    if item.effectSelf then
                        item:effect(player)
                    else
                        item:effect(enemy)
                    end
                    print(player.hp)
                    busy = false
                end

            }
        }
    if inventoryOpened then
        composer.hideOverlay( "scenes.UI.Bag", options )
        cameraImage.isVisible = true
        inventoryOpened = false
    else
        composer.showOverlay( "scenes.UI.Bag", options )
        inventoryOpened = true
    end
    elseif event.phase == "ended" or event.phase == "cancelled" then
        busy=false
    end
end

local sequenceCnt
local function showSequenceWord (ss)
    local sceneGroup = scene.view
    print("hehe")
    if sequenceCnt > #ss then
        return
    end    
    local myText = display.newText( ss[sequenceCnt], 100, 200, native.systemFont, 100 )
        myText.x = display.contentWidth/2
        myText.y = display.contentHeight/5
        myText:setTextColor(255, 0, 0)
        sceneGroup:insert(myText)
    transition.to(myText
        ,{time=500,alpha=0, y=display.contentHeight/7,onComplete = function()
        sequenceCnt = sequenceCnt + 1
        if myText.removeSelf ~= nil then
            myText:removeSelf()
        end
        showSequenceWord(ss)
    end
    }) 
end

local function openCamera( event )
    if event.phase == "began" then
        busy=true
        camera:shoot(
            function (tags,isFace,faceAttr)
                -- tags is a table!! json.encode is used to convert it into String
                print(#tags)
                --sequenceCnt = 1
                --showSequenceWord(tags)
                local targetCnt = 1
                local targetFlag = false
                local matchCnt = 1
                local matchFlag = false
                --[[if isFace then
                    if feceAttr.gender == "male" then
                        showWord("我現在不需要"..tostring(faceAttr.age).."歲的男性")
                    else
                        showWord("我現在不需要"..tostring(faceAttr.age).."歲的女性")
                    end
                    return
                end--]]
                for i = 1, #tags do
                    print(tags[i])
                    if inventory.dictionary[tags[i]] ~= null then
                        if matchFlag == false then
                            matchCnt = i
                        end
                        matchFlag = true
                        if inventory.dictionary[tags[i]] == scene.requestItem then
                            print(tags[i])
                            targetFlag = true
                            targetCnt = i
                        end
                    end
                    if targetFlag then
                        print("hehe")
                        break
                    end
                end
                if targetFlag then
                    showWord("我獲得了 "..inventory.translate[inventory.dictionary[tags[targetCnt]]])
                    inventory:addItem(inventory.dictionary[tags[targetCnt]])
                elseif matchFlag then
                    showWord("我獲得了 "..inventory.translate[inventory.dictionary[tags[matchCnt]]])
                    inventory:addItem(inventory.dictionary[tags[matchCnt]])
                else
                    showWord("我現在不需要這項物品")
                end
                
                --native.showAlert( "Corona", json.encode(tags), { "OK" } )
            end
            )
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
    playerImage.xScale = ( _SCREEN_WIDTH * 0.1 ) / playerImage.width
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
    enemyImage.xScale = ( _SCREEN_WIDTH * 0.15 ) / enemyImage.width
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
    --print(tostring(globalATKClock).." "..tostring(system.getTimer()))

    --playerHPBar:translate(playerX, playerY - playerImage.contentHeight*0.5 - _SCREEN_HEIGHT*0.04 , 150, 50)
    --enemyHPBar:translate(enemyX, enemyY - enemyImage.contentHeight*0.5 - _SCREEN_HEIGHT*0.04, 150, 50)
    if (system.getTimer() - globalATKClock) >= 1000 then
        if attackFlag and requestFlag == false then
            transition.to(enemyImage,{time = 100, alpha = 1,
             x = enemyX - _SCREEN_WIDTH*0.1,
             y = enemyY, rotation = -30, onComplete = function()
                local damage = math.random(-300,-200)
                player.hp = player.hp + damage
                local hitText = display.newText(tostring(damage) ,
                    playerX + math.random(_SCREEN_WIDTH*-0.01,_SCREEN_WIDTH*0.01),
                 playerY - enemyImage.contentHeight/2,
                    native.systemFont, 100)
                hitText:setTextColor(255, 0, 0)
                sceneGroup:insert(hitText)
                transition.to(hitText,{time = 300, alpha = 0,
                    x = playerX, y=playerY - enemyImage.contentHeight,
                    onComplete = function()
                        hitText:removeSelf()
                    end})
                transition.to(enemyImage,{time = 100, alpha = 1,
                 x = enemyX,
                 y = enemyY, rotation = 0})
             end})
        end
        globalATKClock = system.getTimer()
    end
    if enemy.hp <= 0 and requestFlag == false then
        requestFlag = true
        bubble:setText(self.requestText)
        bubble.alpha = 1
        clearIcon.alpha = 0
        attackFlag = false
    end
end

function scene:enterFrame( event )
    if moveLeftFlag or moveRightFlag then
        if playerX >= playerTouchEnemyPosX and moveRightFlag then
            attackFlag = true
        end
        if playerX >= playerTouchEnemyPosX and moveRightFlag or playerX <= playerTouchScreenPosX and moveLeftFlag then
            playerImage:setSequence("stand")
            return
        end
        if moveLeftFlag then
            --transition.to( playerImage, {time=10, alpha=1, x=playerX-10, y=playerY})
            playerImage.x = playerImage.x - 10
            playerX = playerImage.x
        else
            --transition.to( playerImage, {time=10, alpha=1, x=playerX+10, y=playerY})
            playerImage.x = playerImage.x + 10
            playerX = playerImage.x
        end
    end
    if playerHPBar.removeSelf ~= nil then
        if player.hp > 0 then
            playerHPBar.x = playerImage.x
            playerHPBar.y = playerImage.y - playerImage.contentHeight*0.5 - _SCREEN_HEIGHT*0.04
            playerHPBar.width = _SCREEN_WIDTH * 0.1 * player.hp/player.maxhp
        else
            playerHPBar:removeSelf()
        end
    end

    if enemyHPBar.removeSelf ~= nil then
        if enemy.hp > 0 then
            enemyHPBar.x = enemyImage.x
            enemyHPBar.y = enemyImage.y - enemyImage.contentHeight*0.5 - _SCREEN_HEIGHT*0.04
            enemyHPBar.width = _SCREEN_WIDTH * 0.1 * enemy.hp/enemy.maxhp
        else
            enemyHPBar:removeSelf()
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
            if playerX >= playerTouchEnemyPosX then
                attackFlag = true
            else
                attackFlag = false
            end
            if playerX >= playerTouchEnemyPosX and requestFlag then
                if inventory:hasItem(self.requestItem) then
                    bubble:setText("")
                    clearIcon.alpha = 1
                end
            end
            if playerX >= playerTouchEnemyPosX and attackFlag and requestFlag == false then
                transition.to(playerImage,{time = 100, alpha = 1,
                 x = playerX + _SCREEN_WIDTH*0.1,
                 y = playerY, rotation = 30, onComplete = function()
                    local damage = math.random(-30,-5)
                    enemy.hp = enemy.hp + damage
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
                print(enemy.hp)
                return
            end
            playerImage:setSequence("walk")
            playerImage:play()
            moveRightFlag = true
            moveLeftFlag = false
        else
            attackFlag = false
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
        inventory:makeDictionary()

        inventoryOpened = false

        _SCREEN_HEIGHT = display.contentHeight
        _SCREEN_WIDTH = display.contentWidth

        self.requestText = [[你需要一把劍
才能打敗我!!]]
        
        self.requestItem = "items.Sword"

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


        enemy = {
            hp = 20,
            maxhp = 20,
            mp = 1000,
            maxmp = 1000,
            name = "slime",
            path = "Enemies/slimeWalk1",
            status = "live"
        }

        player = {
            hp = 1000,
            maxhp = 1000,
            mp = 1000,
            maxmp = 1000,
            name = "player",
            path = "Player/p1_stand",
            status = "live"
        }



        local options = {
            width = 64,
            height = 64,
            numFrames = 6,
            sheetContentWidth = 384,
            sheetContentHeight = 64
        }

        attackFlag = false

        requestFlag = false

        floor = _SCREEN_HEIGHT*0.825

        playerX = _SCREEN_WIDTH*0.1

        enemyX = _SCREEN_WIDTH*0.875

        local background = display.newImage("backgrounds/full-background.png")

        background.x = _SCREEN_WIDTH/2
        background.y = _SCREEN_HEIGHT/2
        background.xScale = _SCREEN_WIDTH / background.width
        background.yScale = background.xScale

        sceneGroup:insert(background)

        initPlayer()
        sceneGroup:insert(playerImage)

        initEnemy("Enemies/slimeWalk1")
        sceneGroup:insert(enemyImage)

        clearIcon = Sprite.new("UI/Icon/check4")
        bubble = Bubble.new(enemyImage.contentWidth*0.9,
        enemyImage.contentHeight*0.7)
        bubble.alpha = 0
        bubble:insert(clearIcon)
        bubble:setText("")
        bubble.buttonText.fill = {0,0,0}
        bubble.x = enemyX
        bubble.y = enemyY - enemyImage.contentHeight
        sceneGroup:insert(bubble)

        playerHPBar = display.newRect( playerX, playerY - playerImage.contentHeight*0.5 - _SCREEN_HEIGHT*0.04 , 
            _SCREEN_WIDTH * 0.1, _SCREEN_HEIGHT * 0.033 )
        playerHPBar.strokeWidth = 3
        playerHPBar:setFillColor( 0, 255, 0 )
        playerHPBar:setStrokeColor( 0, 255, 0 )
        sceneGroup:insert(playerHPBar)

        playerHPBar.width = playerHPBar.width

        enemyHPBar = display.newRect( enemyX, enemyY - enemyImage.contentHeight*0.5 - _SCREEN_HEIGHT*0.04, 
            _SCREEN_WIDTH * 0.1, _SCREEN_HEIGHT * 0.033 )
        enemyHPBar.strokeWidth = 3
        enemyHPBar:setFillColor( 0, 255, 0 )
        enemyHPBar:setStrokeColor( 0, 255, 0 )
        sceneGroup:insert(enemyHPBar)
        --[[
        local yellowButton = YellowButton.new(_SCREEN_WIDTH*0.2,_SCREEN_HEIGHT*0.2)

        yellowButton.x = _SCREEN_WIDTH / 2
        yellowButton.y = _SCREEN_HEIGHT / 2
        sceneGroup:insert(yellowButton)
r
        --]]
        --calc playerTouchEnemyPosX
        playerTouchEnemyPosX = enemyX - enemyImage.contentWidth/2 - playerImage.contentWidth/2
        playerTouchScreenPosX = playerImage.contentWidth/2
        Runtime:addEventListener( "touch", self)
        Runtime:addEventListener( "enterFrame", self)
        moveTimer = timer.performWithDelay( 1, function()
        self:listenMove()
        end, -1)
        globalATKClock = system.getTimer()

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
        timer.cancell(moveTimer)
        Runtime:removeEventListener("touch",scene)
        inventoryImage:removeEventListener("touch",openInventory)
        clearIcon:removeEventListener("touch",openCamera)
        Runtime:removeEventListener( "enterFrame", self)
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
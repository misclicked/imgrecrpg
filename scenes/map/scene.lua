local composer = require( "composer" )
local Sprite = require("Sprite")
local scene = composer.newScene()
local Kevin = require("npcs.Kevin")
local inventory = require( "inventory" )
-----------------For Camera Module----------------------------
local camera = require("cameraMod").new()
local json = require("json")
local icon
local busy
local inventoryOpened
local nowNPC
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------



-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

local function openInventory( event )
    if event.phase == "began" then
        busy = true
        scene.startMove = false
        local options = {
            isModal = true,
            params = {
            onClose = function()
                inventoryOpened = false
                scene.startMove = false
                scene.character:setSequence("stand")

            end
            }
        }
        if inventoryOpened then
            composer.hideOverlay( "scenes.UI.Bag" )
            inventoryOpened = false
        else
            composer.showOverlay( "scenes.UI.Bag", options )
            inventoryOpened = true
        end
    elseif event.phase == "ended" or event.phase == "cancelled" then
    scene.startMove = false
        if inventoryOpened then
            busy = true
        else
            busy = false
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

-- create()
function scene:create( event )
    inventoryOpened = false   
    busy=false
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
    sceneGroup:insert(map)
    --map.setTrackingLevel(0.3)
    --background add end
    sceneGroup:insert(self.character)

    self.offset = 0
    self.startMove = false
    self.moveDir = 1
    Runtime:addEventListener( "touch", self)
    self.offsetX = display.contentWidth / 2

    map.offsetX = display.contentWidth / 2 + 70

    --camera
    icon = Sprite.new("Items/62")
    icon.x = display.contentWidth - 100
    icon.y = display.contentHeight - 100
    icon:addEventListener("touch" , 
        function(event)
        self.startMove = false
        busy=true
        if event.x < icon.x + 50 and event.x > icon.x - 50 then
            self.startMove = false
            if event.phase == "began" then
                busy = true
            elseif event.phase == "ended" then
                busy = false
                print("carema ended")
                --call carema
                camera:shoot(
                    function(tags,isFace,faceAttr)
                        --sequenceCnt = 1
                        --showSequenceWord(tags)
                        local targetCnt = 1
                        local targetFlag = false
                        local matchCnt = 1
                        local matchFlag = false
                        if isFace then
                            if feceAttr.gender == "male" then
                                if faceAttr.age <= 20 then
                                    showWord("我獲得"..tostring(faceAttr.age).."歲的年輕男性")
                                    inventory:addItem("items.Man")
                                else
                                    showWord("我現在不需要"..tostring(faceAttr.age).."歲的男性")
                                end
                            else
                                if faceAttr.age <= 20 then
                                    showWord("我獲得"..tostring(faceAttr.age).."歲的年輕女性")
                                    inventory:addItem("items.Woman")
                                else
                                    showWord("我現在不需要"..tostring(faceAttr.age).."歲的女性")
                                end
                            end
                            return
                        end
                        for i = 1, #tags do
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
                            showWord("你獲得了 "..inventory.translate[inventory.dictionary[tags[targetCnt]]])
                            inventory:addItem(inventory.dictionary[tags[targetCnt]])
                        elseif matchFlag then
                            showWord("你獲得了 "..inventory.translate[inventory.dictionary[tags[matchCnt]]])
                            inventory:addItem(inventory.dictionary[tags[matchCnt]])
                        else
                            showWord("你不需要這項物品")
                        end

                    end
                )
            else
                print("carema began")
            end
        else
            
        end

    end)

    sceneGroup:insert(icon)
    --food
    mapkevin1 = Kevin.new()
    mapkevin1.x = self.offsetX + 200
    mapkevin1.y = display.contentHeight/2
    mapkevin1.offsetX = mapkevin1.x
    mapkevin1.questionText = "我要食物"
    mapkevin1:showBubble()
    sceneGroup:insert(mapkevin1)
    Runtime:addEventListener( "touch", mapkevin1)
    timer.performWithDelay( 99000, 
        function ()
            mapkevin1:setClear()
        end)
    sceneGroup:insert(mapkevin1)

    --young man
    mapkevin2 = Kevin.new()
    mapkevin2.x = self.offsetX + 400
    mapkevin2.y = display.contentHeight/2
    mapkevin2.offsetX = mapkevin2.x
    mapkevin2.questionText = "我要年輕人"
    mapkevin2:showBubble()
    sceneGroup:insert(mapkevin2)
    Runtime:addEventListener( "touch", mapkevin2)
    timer.performWithDelay( 99000, 
        function ()
            mapkevin2:setClear()
        end)
    sceneGroup:insert(mapkevin2)

    --medicinal
    mapkevin3 = Kevin.new()
    mapkevin3.x = self.offsetX + 600
    mapkevin3.y = display.contentHeight/2
    mapkevin3.offsetX = mapkevin3.x
    mapkevin3.questionText = "我要藥水"
    mapkevin3:showBubble()
    sceneGroup:insert(mapkevin3)
    Runtime:addEventListener( "touch", mapkevin3)
    timer.performWithDelay( 99000, 
        function ()
            mapkevin3:setClear()
        end)
    sceneGroup:insert(mapkevin3)
nowNPC = mapkevin1
    --add inventory
    inventory:makeDictionary()

    inventoryImage = Sprite.new("Items/55")

    inventoryImage.xScale = display.contentWidth * 0.08 / inventoryImage.contentWidth
    inventoryImage.yScale = inventoryImage.xScale

    inventoryImage:addEventListener("touch",openInventory)

    inventoryImage:translate(icon.x-icon.contentWidth - inventoryImage.contentWidth ,icon.y)

    sceneGroup:insert(inventoryImage)
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
    if inventoryOpened == false and busy then
        busy = false
        return
    end
    if busy then
        return
    end
    if self.startMove then
        print("-人物")
        print(self.offsetX)
        print("=人物")


    if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        self.offsetX = self.offsetX + 10 * self.moveDir
        map.x = map.x + 10 * self.moveDir * -1
        map.offsetX = map.offsetX + 10 * self.moveDir * -1
    end
        if map.offsetX < 0 then
            self.startMove = false
            print("start1")
            if self.moveDir == 1 then
            composer.gotoScene( "scenes.battle.battle" , {effect = "slideLeft", time = 300})
            end
        elseif map.offsetX > display.contentWidth + 190 then
            self.startMove = false
            print("start2")
            if self.moveDir == 1 then
            composer.gotoScene( "scenes.battle.battle"  ,{effect = "slideLeft", time = 300})
            end
        else

        end    

if mapkevin1.clearIcon.alpha ~= 1 then 
        print("-food")
        if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        mapkevin1.x = mapkevin1.x + 10 * self.moveDir * -1
    end
        print(mapkevin1.x)
        print("=food")
        if self.offsetX > mapkevin1.x + 70 then
            self.startMove = false
            self.character:setSequence("stand")
            self.character:play()
            
            native.showAlert("需求訊息", "你是否有食物可以交付?", {"交付 食物"})
            if mapkevin1:isFinishQuest("items.Food") == false then 
                print("食物:false")
                --mapkevin1:setClear()
            else
                print("食物:true")
                mapkevin1:setClear()
            end
        end
else
        print("pass food")
        if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        mapkevin1.x = mapkevin1.x + 10 * self.moveDir * -1
    end
        if self.offsetX > mapkevin1.x + 70 then

        end  
end

if mapkevin2.clearIcon.alpha ~= 1 then 
        print("-young")
        if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        mapkevin2.x = mapkevin2.x + 10 * self.moveDir * -1
    end
        print(mapkevin2.x)
        print("=young")
        if self.offsetX > mapkevin2.x + 270 then
            self.startMove = false
            self.character:setSequence("stand")
            self.character:play()
            
            native.showAlert("需求訊息", "你是否有年輕人可以交付?", {"交付 年輕人"})
            if mapkevin2:isFinishQuest("items.Man") == false and mapkevin2:isFinishQuest("items.Woman") == false then 
                print("年輕人:false")
                --mapkevin2:setClear()
            else
                print("年輕人:true")
                mapkevin2:setClear()
            end
        end
else
        print("pass young")
        if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        mapkevin2.x = mapkevin2.x + 10 * self.moveDir * -1
    end
        if self.offsetX > mapkevin2.x + 70 then

        end  
end

if mapkevin3.clearIcon.alpha ~= 1 then 
        print("-medicinal")
        if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        mapkevin3.x = mapkevin3.x + 10 * self.moveDir * -1
    end
        print(mapkevin3.x)
        print("=medicinal")
        if self.offsetX > mapkevin3.x + 470 then
            self.startMove = false
            self.character:setSequence("stand")
            self.character:play()
            
            native.showAlert("需求訊息", "你是否有藥水可以交付?", {"交付 藥水"})
            if mapkevin3:isFinishQuest("items.RedPotion") == false then 
                print("藥水:false")
                --mapkevin3:setClear()
            else
                print("藥水:true")
                mapkevin3:setClear()
            end
        end
else
        print("pass medicinal")
        if (self.character.contentBounds.xMax >= (nowNPC.contentBounds.xMin + 70) and self.moveDir == 1) == false then
        mapkevin3.x = mapkevin3.x + 10 * self.moveDir * -1
    end
        if self.offsetX > mapkevin3.x + 70 then

        end  
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
        Runtime:removeEventListener( "touch", mapkevin1)
        Runtime:removeEventListener( "touch", mapkevin2)
        Runtime:removeEventListener( "touch", mapkevin3)
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
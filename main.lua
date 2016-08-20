local composer = require( "composer" )
local inventory = require( "inventory" )
local gameConfig = require("gameConfig")
local Sprite = require("Sprite")
local sfx = require("sfx")
--local RedPotion = require("items.RedPotion")

inventory:addItem("items.Food")
inventory:addItem("items.Man")
inventory:addItem("items.RedPotion")

for i=1, #inventory.items do
    print(inventory.items[i])
end

display.setStatusBar(display.HiddenStatusBar)

--[[
for i = 1, #inventory.items do
    local Item = require(items[i])
    local item = Item.new()
    item.x
    item.y
end

--------------------------------------------------------------------------------
-- Add Listeners
--------------------------------------------------------------------------------
map:addEventListener("touch", mapTouch)
Runtime:addEventListener("enterFrame", map.updateView)
Runtime:addEventListener("tap", onTap)

--native.showAlert("Dusk", "Welcome to the Dusk Engine. Try double-tapping to load different example maps.", {"Got it!"})
--]]

--composer.gotoScene("scenes.map.scene")
--composer.gotoScene("scenes.UI.Bag")
--Sprite.addSheet(gameConfig.SHEET_PIXEL_EFFECT, "sprites/pixeleffect.png", "sprites.pixeleffect")
--local background = display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth,display.contentHeight)
local options = {
    isModal = true,
    effect = "fade",
    time = 1000,
    params = {
        sampleVar = "my sample variable"
    }
}
--composer.showOverlay("scenes.UI.Bag"  )
--timer.performWithDelay(4000, function())
--composer.hideOverlay()
--Don't delete it!!

--composer.gotoScene("scenes.map.scene")
--composer.gotoScene("scenes.testkev.testui")

--composer.gotoScene("scenes.testkev.testeffects")
--composer.gotoScene("scenes.map.scene")

--composer.gotoScene("scenes.testkev.testeffect")
--composer.gotoScene("scenes.testkev.testeffects2")
--composer.gotoScene("scenes.testkev.testnpc")
--composer.gotoScene("scenes.testkev.testitem")

--composer.gotoScene("scenes.camera.camera")

-- composer.gotoScene( "scenes.battle.battle" )

sfx:play("bg", {loops = -1})
--composer.showOverlay("scenes.UI.LoadingScreen")
composer.gotoScene("scenes.UI.StartingScreen")
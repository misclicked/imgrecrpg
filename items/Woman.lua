local Item = {}
local Sprite = require("Sprite")
Item.new = function()
    local item = Sprite.new("Player/p3_stand")
    item.name = "Sword"
    item.path = "UI/Icon/Sword2"
    item.effectSelf = true
    item.index = -1
    item.success = false
    item.returnString = nil
    function item:effect(target)
        item.success = false
        item.returnString = "Your cannot use this item"
    end

    return item
end

return Item
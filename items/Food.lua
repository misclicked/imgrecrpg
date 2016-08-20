local Item = {}
local Sprite = require("Sprite")
Item.new = function()
    local item = Sprite.new("Items/ham")
    item.name = "food"
    item.path = "Items/ham"
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
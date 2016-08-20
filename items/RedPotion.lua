local Item = {}
local Sprite = require("Sprite")
Item.new = function()
    local item = Sprite.new("Items/41")
    item.name = "RedPotion"
    item.path = "Items/41"
    item.effectSelf = true

    function item:effect(target)
        target.hp = target.hp + 10
    end

    return item
end

return Item
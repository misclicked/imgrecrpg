local Item = {}
local Sprite = require("Sprite")
Item.new = function()
    local item = Sprite.new("Items/41")
    item.name = "RedPotion"
    item.path = "Items/41"
    item.effectSelf = true
    item.index = -1
    item.success = false
    function item:effect(target)
        if target.hp == target.maxhp then
            return "Your HP is full"
        end
        target.hp = target.hp + 10
        item.success = true
        return "Item "..item.name.." used"
    end

    return item
end

return Item
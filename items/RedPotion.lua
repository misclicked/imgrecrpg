local Item = {}
local Sprite = require("Sprite")
Item.new = function()
    local item = Sprite.new("Items/41")
    item.name = "RedPotion"
    item.path = "Items/41"
    item.effectSelf = true
    item.index = -1
    item.success = false
    item.returnString = nil
    function item:effect(target)
        if target.hp == target.maxhp then
            item.success = false
            item.returnString = "Your HP is full"
            return
        end
        target.hp = target.hp + 100
        item.success = true
        item.returnString = "Item "..item.name.." is used"
    end

    return item
end

return Item
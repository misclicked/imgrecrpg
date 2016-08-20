local Item = {}
local Sprite = require("Sprite")
Item.new = function()
    local item = Sprite.new("Items/41")

    function item:effect(target)
        target.hp = target.hp + 10
    end

    return item
end

return Item
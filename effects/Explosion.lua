local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Effect = {}

Effect.new = function()
    local effect = Sprite[gameConfig.SHEET_PIXEL_EFFECT].new({
            "22/1",
            "22/2",
            "22/3",
            "22/4",
            "22/5",
        }, {time = 800, loopCount = 0})
    effect.xScale = 3
    effect.yScale = 3
    effect:play()
    return effect
end

return Effect
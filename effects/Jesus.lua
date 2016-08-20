local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Effect = {}

Effect.new = function()
    local effect = Sprite[gameConfig.SHEET_PIXEL_EFFECT].new({
            "21/1",
            "21/2",
            "21/3",
            "21/4",
            "21/5",
			"21/6"
        }, {time = 800, loopCount = 0})
    effect.xScale = 3
    effect.yScale = 3
    effect:play()
    return effect
end

return Effect
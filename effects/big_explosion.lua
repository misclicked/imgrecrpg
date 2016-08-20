local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Effect = {}

Effect.new = function()
    local effect = Sprite[gameConfig.SHEET_PIXEL_EFFECT].new({
            "47/1",
            "47/2",
            "47/3",
            "47/4",
            "47/5",
			"47/6",
			"47/7",
			"47/8"
        }, {time = 800, loopCount = 0})
    effect.xScale = 3
    effect.yScale = 3
    effect:play()
    return effect
end

return Effect
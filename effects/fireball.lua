local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Effect = {}

Effect.new = function()
    local effect = Sprite[gameConfig.SHEET_PIXEL_EFFECT].new({
            "39/1",
            "39/2",
            "39/3",
            "39/4",
            "39/5",
			"39/6",
			"39/7"
        }, {time = 800, loopCount = 0})
    effect.xScale = 3
    effect.yScale = 3
    effect:play()
    return effect
end

return Effect
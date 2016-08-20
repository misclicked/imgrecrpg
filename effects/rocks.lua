local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Effect = {}

Effect.new = function()
    local effect = Sprite[gameConfig.SHEET_PIXEL_EFFECT].new({
            "16/1",
            "16/2",
            "16/3",
            "16/4",
            "16/5",
			"16/6",
			"16/7",
			"16/8",
			"16/9",
			"16/10"
        }, {time = 800, loopCount = 0})
    effect.xScale = 3
    effect.yScale = 3
    effect:play()
    return effect
end

return Effect
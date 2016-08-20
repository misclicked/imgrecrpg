local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Effect = {}
local sfx = require("sfx")

Effect.new = function()
    local effect = Sprite[gameConfig.SHEET_PIXEL_EFFECT].new({
            "22/1",
            "22/2",
            "22/3",
            "22/4",
            "22/5",
        }, {time = 800, loopCount = 1})

    effect.xScale = 3
    effect.yScale = 3
    effect:play()
    sfx:play("boom")
    timer.performWithDelay( 800, 
        function() 
            effect:removeSelf()
        end
    )

    return effect
end

return Effect
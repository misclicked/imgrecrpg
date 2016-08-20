local Sprite = require("Sprite")
local gameConfig = require("gameConfig")
local Explosion = require("effects.Explosion")
local Effect = {}

Effect.new = function()
    local effect = display.newGroup()
    timer.performWithDelay( 1000, 
        function()
            local explosion = Explosion.new()
            effect:insert(explosion)
            effect.x = display.contentWidth/2
            effect.y = display.contentHeight/2
        end
    )
    
    timer.performWithDelay( 2000, 
        function()
            local explosion = Explosion.new()
            effect:insert(explosion)
            effect.x = display.contentWidth
            effect.y = display.contentHeight/2
        end
    )

    timer.performWithDelay( 3000, 
        function()
            local explosion = Explosion.new()
            effect:insert(explosion)
            effect.x = 0
            effect.y = 0
        end
    )


    timer.performWithDelay( 4000, 
        function()
            local explosion = Explosion.new()
            effect:insert(explosion)
            effect.x = display.contentWidth / 4 * 3
            effect.y = display.contentHeight /4 * 3
        end
    )

    timer.performWithDelay( 5000, 
        function()
            local explosion = Explosion.new()
            effect:insert(explosion)
            effect.x = display.contentWidth / 4 * 3
            effect.y = display.contentHeight /4 * 3
        end
    )

    return effect
end

return Effect
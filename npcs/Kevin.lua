local Sprite = require("Sprite")
local Bubble = require("ui.GreyPanel")
local Kevin = {}
--
Kevin.new = function()
    local kevin = display.newGroup()
    kevin.sprite = Sprite.new("Player/p2_front")
    kevin:insert(kevin.sprite)
    kevin.bubble = Bubble.new(kevin.sprite.contentWidth * 3, kevin.sprite.contentWidth)
    kevin.bubble.alpha = 0
    kevin:insert(kevin.bubble)
    kevin.questionText = "我要鞋子~!"
    kevin.clearIcon = Sprite.new("UI/Icon/check4")
    kevin.bubble:insert(kevin.clearIcon)
    kevin.bubble:setText("")
    kevin.bubble.buttonText.fill = {0,0,0}
    
    function kevin:showBubble()
        self.bubble.x = 0
        self.bubble.y = - self.sprite.contentHeight

        transition.to(self.bubble, {time = 250, alpha = 1})

        if self:isFinishQuest() then
            self:setClear()
        else
            self:setUnClear()
        end
    end

    function kevin:hideBubble()
        transition.to(self.bubble, {time = 250, alpha = 0})
    end

    function kevin:isFinishQuest()
        return false
    end

    function kevin:setUnClear()
        self.bubble:setText(kevin.questionText)
        self.clearIcon.alpha = 0
    end

    function kevin:setClear()
        self.bubble:setText("")
        self.clearIcon.alpha = 1
    end

    return kevin
end

return Kevin